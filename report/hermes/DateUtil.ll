Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/DateUtil?download=true
inline.NumInlined: 605
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE:bb.a
_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i93.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i91.i
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !51
  %i.dd = icmp eq i8 %i.dc, 45
  br i1 %i.dd, label %.thread2.i95.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i

.thread2.i95.i:                                   ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i93.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.de, ptr %10, align 8, !tbaa !53
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit99.i"

bb.r:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i98.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store ptr %i.df, ptr %i.ca, align 8, !tbaa !54
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit99.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit99.i": ; preds = %bb.r, %.thread2.i95.i
  %i.dg = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  br i1 %i.dg, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i", label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i": ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit99.i"
  %.pr229.pre.i = load ptr, ptr %10, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i100.i = icmp eq ptr %.pr229.pre.i, null
  br i1 %.not.i.i.i100.i, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i._ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread._ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106_crit_edge.i_crit_edge", label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i._ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread._ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106_crit_edge.i_crit_edge": ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i"
  %.pre.i.pre = load ptr, ptr %i.ca, align 8, !tbaa !54
  br label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i98.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i._ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread._ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106_crit_edge.i_crit_edge", %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i96.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86.i
  %.pre260.i = phi ptr [ %i.cz, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i96.i ], [ %i.cq, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86.i ], [ %.pre.i.pre, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i._ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread._ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106_crit_edge.i_crit_edge" ], [ %i.cz, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i98.i ], [ %i.cq, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88.i ] ; 5 uses
  %.not3.i107.i = icmp eq ptr %.pre260.i, %.sroa.3.0.i59.i
  br i1 %.not3.i107.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i108.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i: ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i", %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i93.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i91.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81.i
  %i.dh = phi ptr [ %.pr229.pre.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.thread.i" ], [ %i.cp, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81.i ], [ %i.cy, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i91.i ], [ %i.cy, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i93.i ], [ %i.cp, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83.i ] ; 5 uses
  %.not.i102.i = icmp eq ptr %i.dh, %.sroa.0.0.i60.i
  br i1 %.not.i102.i, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i", label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i108.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i
  %i.di = load i16, ptr %.pre260.i, align 2, !tbaa !50
  %i.dj = icmp eq i16 %i.di, 84
  br i1 %i.dj, label %bb.s, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !51
  switch i8 %i.dk, label %.split324.i [
    i8 84, label %.thread2.i105.i
    i8 32, label %.thread2.i115.i
  ]

.thread2.i105.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.dl, ptr %10, align 8, !tbaa !53
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

bb.s:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i108.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre260.i, i64 2
  store ptr %i.dm, ptr %i.ca, align 8, !tbaa !54
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i108.i
  %i.dn = load i16, ptr %.pre260.i, align 2, !tbaa !50
  %i.do = icmp eq i16 %i.dn, 32
  br i1 %i.do, label %bb.t, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i

.thread2.i115.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.dp, ptr %10, align 8, !tbaa !53
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

bb.t:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre260.i, i64 2
  store ptr %i.dq, ptr %i.ca, align 8, !tbaa !54
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i": ; preds = %bb.t, %.thread2.i115.i, %bb.s, %.thread2.i105.i
  %i.dr = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  br i1 %i.dr, label %bb.u, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.u:                                             ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"
  %i.ds = load ptr, ptr %10, align 8, !tbaa !53   ; 4 uses
  %.not.i.i.i120.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i120.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i: ; preds = %bb.u
  %i.dt = load ptr, ptr %i.ca, align 8, !tbaa !54 ; 3 uses
  %.not3.i127.i = icmp eq ptr %i.dt, %.sroa.3.0.i59.i
  br i1 %.not3.i127.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i: ; preds = %bb.u
  %.not.i122.i = icmp eq ptr %i.ds, %.sroa.0.0.i60.i
  br i1 %.not.i122.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !50
  %i.dv = icmp eq i16 %i.du, 58
  br i1 %i.dv, label %bb.v, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !51
  %i.dx = icmp eq i8 %i.dw, 58
  br i1 %i.dx, label %.thread2.i125.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

.thread2.i125.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store ptr %i.dy, ptr %10, align 8, !tbaa !53
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i"

bb.v:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store ptr %i.dz, ptr %i.ca, align 8, !tbaa !54
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i": ; preds = %bb.v, %.thread2.i125.i
  %i.ea = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  br i1 %i.ea, label %bb.w, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.w:                                             ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i"
  %i.eb = load ptr, ptr %10, align 8, !tbaa !53   ; 5 uses
  %.not.i.i.i130.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i130.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i: ; preds = %bb.w
  %i.ec = load ptr, ptr %i.ca, align 8, !tbaa !54 ; 4 uses
  %.not3.i137.i = icmp eq ptr %i.ec, %.sroa.3.0.i59.i
  br i1 %.not3.i137.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i: ; preds = %bb.w
  %.not.i132.i = icmp eq ptr %i.eb, %.sroa.0.0.i60.i
  br i1 %.not.i132.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !50
  %i.ee = icmp eq i16 %i.ed, 58
  br i1 %i.ee, label %bb.x, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !51
  %i.eg = icmp eq i8 %i.ef, 58
  br i1 %i.eg, label %.thread2.i135.i, label %.split226.i

.thread2.i135.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.eh, ptr %10, align 8, !tbaa !53
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i"

bb.x:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  store ptr %i.ei, ptr %i.ca, align 8, !tbaa !54
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i": ; preds = %bb.x, %.thread2.i135.i
  %i.ej = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  br i1 %i.ej, label %bb.y, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.y:                                             ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i"
  %i.ek = load ptr, ptr %10, align 8, !tbaa !53   ; 5 uses
  %.not.i.i.i80 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i80, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i87, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i87: ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !54 ; 3 uses
  %.not3.i88 = icmp eq ptr %i.em, %.sroa.3.0.i59.i
  br i1 %.not3.i88, label %.critedge.i._ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i_crit_edge, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i89

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81: ; preds = %bb.y
  %.not.i82 = icmp eq ptr %i.ek, %.sroa.0.0.i60.i
  br i1 %.not.i82, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i89: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i87
  %i.en = load i16, ptr %i.em, align 2, !tbaa !50
  %i.eo = icmp eq i16 %i.en, 46
  br i1 %i.eo, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i, label %.critedge.i._ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i_crit_edge

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81
  %i.ep = load i8, ptr %i.ek, align 1, !tbaa !51
  %i.eq = icmp eq i8 %i.ep, 46
  br i1 %i.eq, label %.split.i, label %.split226.i

.split.i:                                         ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 3 uses
  %i.es = icmp eq ptr %i.er, %.sroa.0.0.i60.i
  br i1 %i.es, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i89
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store ptr %i.et, ptr %i.el, align 8, !tbaa !54
  %i.eu = load ptr, ptr %i.ca, align 8, !tbaa !54 ; 3 uses
  %i.ev = icmp eq ptr %i.eu, %.sroa.3.0.i59.i
  br i1 %i.ev, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i
  %i.ew = load i16, ptr %i.eu, align 2, !tbaa !50
  %i.ex = add i16 %i.ew, -48
  %i.ey = icmp ult i16 %i.ex, 10
  br i1 %i.ey, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i: ; preds = %.split.i
  %i.ez = load i8, ptr %i.er, align 1, !tbaa !51
  %11 = add i8 %i.ez, -48
  %i.fa = icmp ult i8 %11, 10
  br i1 %i.fa, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i
  %.026.us252.i = phi i32 [ %i.fh, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i ] ; 2 uses
  %.028.us251.i = phi i32 [ %i.fi, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i ], [ 100, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i ] ; 2 uses
  %i.fb = phi ptr [ %i.fg, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i ], [ %i.eu, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i ] ; 3 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !50 ; 2 uses
  %i.fd = add i16 %i.fc, -48
  %i.fe = icmp ult i16 %i.fd, 10
  br i1 %i.fe, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i
  %i.ff = zext nneg i16 %i.fc to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 3 uses
  store ptr %i.fg, ptr %i.ca, align 8, !tbaa !54
  %.pn247.us.i = add nsw i32 %i.ff, -48
  %.pn.us.i = mul nsw i32 %.pn247.us.i, %.028.us251.i
  %i.fh = add nsw i32 %.pn.us.i, %.026.us252.i    ; 2 uses
  %i.fi = sdiv i32 %.028.us251.i, 10
  %.not246.us.i = icmp eq ptr %i.fg, %.sroa.3.0.i59.i
  br i1 %.not246.us.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i, !llvm.loop !120

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i
  %.026.i159 = phi i32 [ %i.fn, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i ] ; 2 uses
  %.028.i158 = phi i32 [ %i.fo, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ], [ 100, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i ] ; 2 uses
  %i.fj = phi ptr [ %i.fm, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ], [ %i.er, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i ] ; 4 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !51  ; 2 uses
  %12 = add i8 %i.fk, -48
  %i.fl = icmp ult i8 %12, 10
  br i1 %i.fl, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i, label %.split226.loopexit.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 2 uses
  %13 = zext nneg i8 %i.fk to i32
  %.pn247.i = add nsw i32 %13, -48
  %.pn.i = mul nsw i32 %.pn247.i, %.028.i158
  %i.fn = add nsw i32 %.pn.i, %.026.i159          ; 2 uses
  %i.fo = sdiv i32 %.028.i158, 10
  %.not.i = icmp eq ptr %i.fm, %.sroa.0.0.i60.i
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i, !llvm.loop !121

.critedge.i._ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i_crit_edge: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i89, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i87
  %.pre264.i.pre = load ptr, ptr %i.ca, align 8, !tbaa !54
  br label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i

.split226.loopexit.i:                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i
  store ptr %i.fj, ptr %10, align 8
  br label %.split226.i

.split226.i:                                      ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83, %.split226.loopexit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i
  %i.fp = phi ptr [ %i.ek, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83 ], [ %i.eb, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i ], [ %i.fj, %.split226.loopexit.i ] ; 7 uses
  %.127240.i = phi i32 [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i83 ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i ], [ %.026.i159, %.split226.loopexit.i ] ; 3 uses
  %i.fq = icmp eq ptr %i.fp, %.sroa.0.0.i60.i
  br i1 %i.fq, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i72

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i, %.critedge.i._ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i_crit_edge, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i
  %.pre264.i = phi ptr [ %.pre264.i.pre, %.critedge.i._ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i_crit_edge ], [ %i.ec, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i ], [ %i.fb, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i ]
  %.127.ph315.i = phi i32 [ 0, %.critedge.i._ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i_crit_edge ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i ], [ %.026.us252.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.us.i ] ; 3 uses
  %i.fr = icmp eq ptr %.pre264.i, %.sroa.3.0.i59.i
  br i1 %i.fr, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i76

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i, %.split226.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i
  %.127239.i = phi i32 [ %.127240.i, %.split226.i ], [ %.127.ph315.i, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i ], [ %i.fh, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.us.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i81 ], [ %i.fn, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ]
  %i.fs = sitofp i32 %i.co to double
  %i.ft = load i32, ptr %i.j, align 4, !tbaa !6
  %i.fu = add nsw i32 %i.ft, -1
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = load i32, ptr %i.k, align 4, !tbaa !6
  %i.fx = sitofp i32 %i.fw to double
  %i.fy = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.fs, double noundef %i.fv, double noundef %i.fx) ; 2 uses
  %i.fz = load i32, ptr %i.l, align 4, !tbaa !6
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = load i32, ptr %i.m, align 4, !tbaa !6
  %i.gc = sitofp i32 %i.gb to double
  %i.gd = load i32, ptr %i.n, align 4, !tbaa !6
  %i.ge = sitofp i32 %i.gd to double
  %i.gf = sitofp i32 %.127239.i to double
  %i.gg = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.ga, double noundef %i.gc, double noundef %i.ge, double noundef %i.gf) ; 2 uses
  %i.gh = tail call double @llvm.fabs.f64(double %i.fy)
  %i.gi = fcmp one double %i.gh, +inf
  %i.gj = tail call double @llvm.fabs.f64(double %i.gg)
  %i.gk = fcmp one double %i.gj, +inf
  %or.cond.i.i = and i1 %i.gi, %i.gk
  %i.gl = fmul double %i.fy, 8.640000e+07
  %i.gm = fadd double %i.gl, %i.gg
  %.0.i152.i = select i1 %or.cond.i.i, double %i.gm, double +qnan ; 3 uses
  %i.gn = tail call double @llvm.fabs.f64(double %.0.i152.i)
  %i.go = fcmp ueq double %i.gn, +inf
  br i1 %i.go, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i
  %i.gp = tail call noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793) %2, double noundef %.0.i152.i, i8 noundef signext 0) #19
  %i.gq = fsub double %.0.i152.i, %i.gp
  br label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i76: ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !54 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.gs, %.sroa.3.0.i59.i
  br i1 %.not3.i77, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i65, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i78

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i78: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i76
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !50
  %i.gu = icmp eq i16 %i.gt, 90
  br i1 %i.gu, label %bb.aa, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i65

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i72: ; preds = %.split226.i
  %i.gv = load i8, ptr %i.fp, align 1, !tbaa !51
  %i.gw = icmp eq i8 %i.gv, 90
  br i1 %i.gw, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread", label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i61

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread": ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i72
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store ptr %i.gx, ptr %10, align 8, !tbaa !53
  br label %.split324.i

bb.aa:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i78
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store ptr %i.gy, ptr %i.gr, align 8, !tbaa !54
  br label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i65: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i78, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i76
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !54 ; 3 uses
  %.not3.i66 = icmp eq ptr %i.ha, %.sroa.3.0.i59.i
  br i1 %.not3.i66, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i54, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i67

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i67: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i65
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !50
  %i.hc = icmp eq i16 %i.hb, 43
  br i1 %i.hc, label %bb.ab, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i54

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i61: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i72
  %i.hd = load i8, ptr %i.fp, align 1, !tbaa !51
  %i.he = icmp eq i8 %i.hd, 43
  br i1 %i.he, label %.split227.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i50

bb.ab:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i67
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  store ptr %i.hf, ptr %i.gz, align 8, !tbaa !54
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i54: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i67, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i65
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !54 ; 3 uses
  %.not3.i55 = icmp eq ptr %i.hh, %.sroa.3.0.i59.i
  br i1 %.not3.i55, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i56

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i56: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i54
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !50
  %i.hj = icmp eq i16 %i.hi, 45
  br i1 %i.hj, label %bb.ac, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i50: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i61
  %i.hk = load i8, ptr %i.fp, align 1, !tbaa !51
  %i.hl = icmp eq i8 %i.hk, 45
  br i1 %i.hl, label %.split227.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ac:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i56
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !54
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i

.split227.i:                                      ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i61, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i50
  %.1.i.ph122 = phi double [ 1.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i61 ], [ -1.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i50 ]
  %.ph = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  store ptr %.ph, ptr %10, align 8, !tbaa !53
  %.not.i154.i125 = icmp eq ptr %.sroa.0.0.i60.i, null ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i, i64 -2
  %.sroa.0.0.i156.i128 = select i1 %.not.i154.i125, ptr null, ptr %i.hn ; 2 uses
  %i.ho = icmp ugt ptr %.ph, %.sroa.0.0.i156.i128
  br i1 %i.ho, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.ad

_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i: ; preds = %bb.ab, %bb.ac
  %.1.i.ph = phi double [ -1.000000e+00, %bb.ac ], [ 1.000000e+00, %bb.ab ]
  %.not.i154.i = icmp eq ptr %.sroa.0.0.i60.i, null ; 2 uses
  %.sroa.3.0.idx.i.i = select i1 %.not.i154.i, i64 -2, i64 0
  %.sroa.3.0.i155.i = getelementptr inbounds [2 x i8], ptr %.sroa.3.0.i59.i, i64 %.sroa.3.0.idx.i.i ; 2 uses
  %i.hp = load ptr, ptr %i.ca, align 8, !tbaa !54 ; 2 uses
  %i.hq = icmp ugt ptr %i.hp, %.sroa.3.0.i155.i
  br i1 %i.hq, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.ae

bb.ad:                                            ; preds = %.split227.i
  %.sroa.3.0.idx.i.i126 = select i1 %.not.i154.i125, i64 -2, i64 0
  %.sroa.3.0.i155.i127 = getelementptr inbounds [2 x i8], ptr %.sroa.3.0.i59.i, i64 %.sroa.3.0.idx.i.i126
  %.pre265.i = load ptr, ptr %i.ca, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fp, i64 3
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i
  %i.hs = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i, i64 -2
  %.sroa.0.0.i156.i = select i1 %.not.i154.i, ptr null, ptr %i.hs
  %.sroa.3.0.i163.i289 = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sroa.3.0.i163.i298 = phi ptr [ %.sroa.3.0.i163.i289, %bb.ae ], [ %.pre265.i, %bb.ad ]
  %.1.i130296 = phi double [ %.1.i.ph, %bb.ae ], [ %.1.i.ph122, %bb.ad ] ; 2 uses
  %.sroa.3.0.i155.i132294 = phi ptr [ %.sroa.3.0.i155.i, %bb.ae ], [ %.sroa.3.0.i155.i127, %bb.ad ]
  %.sroa.0.0.i156.i135292 = phi ptr [ %.sroa.0.0.i156.i, %bb.ae ], [ %.sroa.0.0.i156.i128, %bb.ad ]
  %.127241.i255290 = phi i32 [ %.127.ph315.i, %bb.ae ], [ %.127240.i, %bb.ad ]
  %i.ht = phi ptr [ null, %bb.ae ], [ %i.hr, %bb.ad ]
  %i.hu = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.ht, ptr %.sroa.3.0.i163.i298, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br i1 %i.hu, label %bb.ag, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.hv = load i32, ptr %i.o, align 4, !tbaa !6
  %i.hw = sitofp i32 %i.hv to double
  %i.hx = fmul nnan double %.1.i130296, %i.hw
  %i.hy = fptosi double %i.hx to i32
  %i.hz = load ptr, ptr %10, align 8, !tbaa !53   ; 6 uses
  %.not.i.i.i39 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i39, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i45, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i40

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i45: ; preds = %bb.ag
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !54 ; 3 uses
  %.not3.i = icmp eq ptr %i.ib, %.sroa.3.0.i59.i
  br i1 %.not3.i, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i46

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i40: ; preds = %bb.ag
  %.not.i41 = icmp eq ptr %i.hz, %.sroa.0.0.i60.i
  br i1 %.not.i41, label %.split228.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i42

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i46: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i45
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !50
  %i.id = icmp eq i16 %i.ic, 58
  br i1 %i.id, label %bb.ah, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i42: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i40
  %i.ie = load i8, ptr %i.hz, align 1, !tbaa !51
  %i.if = icmp eq i8 %i.ie, 58
  br i1 %i.if, label %.thread2.i, label %.split228.i

.thread2.i:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i42
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE:bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.mx, align 8, !tbaa !129
  %i.my = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEi"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br i1 %i.my, label %_ZN4llvh9StringRefC2EPKc.exit50.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZN4llvh9StringRefC2EPKc.exit50.1.i:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.10, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.mz = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.mz, label %.preheader227.i, label %_ZN4llvh9StringRefC2EPKc.exit50.2.i

_ZN4llvh9StringRefC2EPKc.exit50.2.i:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.11, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.na = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.na, label %.preheader227.i, label %_ZN4llvh9StringRefC2EPKc.exit50.3.i

_ZN4llvh9StringRefC2EPKc.exit50.3.i:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.12, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.nb = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.nb, label %.preheader227.i, label %_ZN4llvh9StringRefC2EPKc.exit50.4.i

_ZN4llvh9StringRefC2EPKc.exit50.4.i:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.13, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.nc = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.nc, label %.preheader227.i, label %_ZN4llvh9StringRefC2EPKc.exit50.5.i

_ZN4llvh9StringRefC2EPKc.exit50.5.i:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.14, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.nd = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.nd, label %.preheader227.i, label %_ZN4llvh9StringRefC2EPKc.exit50.6.i

_ZN4llvh9StringRefC2EPKc.exit50.6.i:              ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.15, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.ne = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.ne, label %.preheader227.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZN4llvh9StringRefC2EPKc.exit50.i:                ; preds = %_ZNK6hermes2vm10StringView3endEv.exit.i12
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr @.str.9, ptr %8, align 8
  store i64 3, ptr %i.nf, align 8
  %i.ng = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIhEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.ng, label %.preheader227.i, label %_ZN4llvh9StringRefC2EPKc.exit50.1.i

.preheader227.i:                                  ; preds = %_ZN4llvh9StringRefC2EPKc.exit50.i, %_ZN4llvh9StringRefC2EPKc.exit50.6.i, %_ZN4llvh9StringRefC2EPKc.exit50.5.i, %_ZN4llvh9StringRefC2EPKc.exit50.4.i, %_ZN4llvh9StringRefC2EPKc.exit50.3.i, %_ZN4llvh9StringRefC2EPKc.exit50.2.i, %_ZN4llvh9StringRefC2EPKc.exit50.1.i
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader227.i
  %i.ni = load i32, ptr %i.kc, align 8            ; 5 uses
  %i.nj = icmp slt i32 %i.ni, 0
  br i1 %i.nj, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %.backedge.i
  %i.nk = and i32 %i.ni, 1073741824
  %.not.i.i106.i = icmp eq i32 %i.nk, 0
  %i.nl = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  br i1 %.not.i.i106.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.sroa.0.0.copyload.i.i.i.i.i107.i = load i64, ptr %i.nl, align 8, !tbaa !11
  %i.nm = and i64 %.sroa.0.0.copyload.i.i.i.i.i107.i, 281474976710655
  %i.nn = inttoptr i64 %i.nm to ptr               ; 5 uses
  %i.no = load i32, ptr %i.nn, align 4            ; 2 uses
  %i.np = icmp ugt i32 %i.no, 150994943
  br i1 %i.np, label %bb.bs, label %bb.bt, !prof !41

bb.bs:                                            ; preds = %bb.br
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !44
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i

bb.bt:                                            ; preds = %bb.br
  %.mask.i.i.i.i.i.i.i.i.i.i108.i = and i32 %i.no, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i108.i, label %bb.bw [
    i32 134217728, label %bb.bu
    i32 67108864, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i

bb.bv:                                            ; preds = %bb.bt
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i

bb.bw:                                            ; preds = %bb.bt
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i111.i = load i64, ptr %i.nu, align 8, !tbaa !11
  %i.nv = and i64 %.sroa.0.0.copyload.i.i.i2.i.i111.i, 281474976710655
  %i.nw = inttoptr i64 %i.nv to ptr
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !44
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i: ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.bq
  %.0.i.sink.i.i110.i = phi ptr [ %i.nl, %bb.bq ], [ %i.nr, %bb.bs ], [ %i.ns, %bb.bu ], [ %i.nt, %bb.bv ], [ %i.ny, %bb.bw ]
  %i.nz = and i32 %i.ni, 1073741823
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i110.i, i64 %i.oa
  %i.oc = load i32, ptr %i.nh, align 4, !tbaa !58
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.od
  br label %_ZNK6hermes2vm10StringView3endEv.exit112.i

bb.bx:                                            ; preds = %.backedge.i
  %.not.i1.i96.i = icmp samesign ult i32 %i.ni, 1073741824
  %i.of = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  br i1 %.not.i1.i96.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.0.0.copyload.i.i.i.i2.i97.i = load i64, ptr %i.of, align 8, !tbaa !11
  %i.og = and i64 %.sroa.0.0.copyload.i.i.i.i2.i97.i, 281474976710655
  %i.oh = inttoptr i64 %i.og to ptr               ; 5 uses
  %i.oi = load i32, ptr %i.oh, align 4            ; 2 uses
  %i.oj = icmp ugt i32 %i.oi, 150994943
  br i1 %i.oj, label %bb.bz, label %bb.ca, !prof !41

bb.bz:                                            ; preds = %bb.by
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !48
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i

bb.ca:                                            ; preds = %bb.by
  %.mask.i.i.i.i.i.i.i.i.i3.i98.i = and i32 %i.oi, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i98.i, label %bb.cd [
    i32 117440512, label %bb.cb
    i32 50331648, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i

bb.cc:                                            ; preds = %bb.ca
  %i.on = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i

bb.cd:                                            ; preds = %bb.ca
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i105.i = load i64, ptr %i.oo, align 8, !tbaa !11
  %i.op = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i105.i, 281474976710655
  %i.oq = inttoptr i64 %i.op to ptr
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !48
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i: ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.bx
  %.0.i.sink.i4.i100.i = phi ptr [ %i.of, %bb.bx ], [ %i.ol, %bb.bz ], [ %i.om, %bb.cb ], [ %i.on, %bb.cc ], [ %i.os, %bb.cd ]
  %i.ot = and i32 %i.ni, 1073741823
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i100.i, i64 %i.ou
  %i.ow = load i32, ptr %i.nh, align 4, !tbaa !58
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %i.ox
  br label %_ZNK6hermes2vm10StringView3endEv.exit112.i

_ZNK6hermes2vm10StringView3endEv.exit112.i:       ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i
  %.sroa.3.0.i101.i = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i ], [ %i.oy, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i ]
  %.sroa.0.0.i102.i = phi ptr [ %i.oe, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i109.i ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i99.i ]
  %i.oz = load ptr, ptr %5, align 8, !tbaa !53    ; 4 uses
  %.not.i.i113.i = icmp eq ptr %i.oz, null
  br i1 %.not.i.i113.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i14

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit112.i
  %i.pa = load ptr, ptr %i.mt, align 8, !tbaa !54 ; 3 uses
  %.not221.i = icmp eq ptr %i.pa, %.sroa.3.0.i101.i
  br i1 %.not221.i, label %.loopexit228.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i32

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i14: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit112.i
  %.not.i15 = icmp eq ptr %i.oz, %.sroa.0.0.i102.i
  br i1 %.not.i15, label %.loopexit228.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i16

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i32: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !50 ; 2 uses
  %i.pc = add i16 %i.pb, -48
  %i.pd = icmp ult i16 %i.pc, 10
  br i1 %i.pd, label %bb.ce, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i16: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i14
  %i.pe = load i8, ptr %i.oz, align 1, !tbaa !51  ; 2 uses
  %14 = add i8 %i.pe, -48
  %i.pf = icmp ult i8 %14, 10
  br i1 %i.pf, label %bb.ce, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.thread.i

bb.ce:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i16, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i32
  %i.pg = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.i84.i, ptr %.sroa.3.0.i83.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call fastcc void @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_4clEv"(ptr nonnull %5, ptr nonnull %3)
  %i.ph = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_1clEi"(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.ph, label %bb.cf, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.cf:                                            ; preds = %bb.ce
  %i.pi = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_5clEv"(ptr %4, ptr nonnull %i.b)
  br i1 %i.pi, label %.loopexit228.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i32
  %i.pj = or i16 %i.pb, 32
  %i.pk = add i16 %i.pj, -97
  %i.pl = icmp ult i16 %i.pk, 26
  br i1 %i.pl, label %bb.cg, label %bb.cj

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.thread.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i16
  %i.pm = or i8 %i.pe, 32
  %15 = add i8 %i.pm, -97
  %i.pn = icmp ult i8 %15, 26
  br i1 %i.pn, label %bb.cg, label %.thread210.i

bb.cg:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.thread.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.i
  %i.po = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_1clEi"(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.po, label %bb.ch, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.ch:                                            ; preds = %bb.cg
  %i.pp = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_5clEv"(ptr %4, ptr nonnull %i.b)
  br i1 %i.pp, label %bb.ci, label %.backedge.i.backedge

bb.ci:                                            ; preds = %bb.ch
  call fastcc void @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_4clEv"(ptr nonnull %5, ptr nonnull %3)
  %i.pq = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.i84.i, ptr %.sroa.3.0.i83.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.pq, label %.loopexit228.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

.thread210.i:                                     ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.thread.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store ptr %i.pr, ptr %5, align 8, !tbaa !53
  br label %.backedge.i.backedge

bb.cj:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit116.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  store ptr %i.ps, ptr %i.mt, align 8, !tbaa !54
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.cj, %.thread210.i, %bb.ch
  br label %.backedge.i, !llvm.loop !122

.loopexit228.i:                                   ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i14, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i, %bb.ci, %bb.cf
  call fastcc void @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_4clEv"(ptr nonnull %5, ptr nonnull %3)
  %i.pt = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.i84.i, ptr %.sroa.3.0.i83.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.pt, label %bb.ck, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.ck:                                            ; preds = %.loopexit228.i
  call fastcc void @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_4clEv"(ptr nonnull %5, ptr nonnull %3)
  %i.pu = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %.not.i.i118.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i118.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit120.i, label %.split278.i

.split278.i:                                      ; preds = %bb.ck
  %i.pv = icmp eq ptr %i.pu, %.sroa.0.0.i84.i
  br i1 %i.pv, label %bb.cq, label %bb.cl

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit120.i: ; preds = %bb.ck
  %i.pw = load ptr, ptr %i.mt, align 8, !tbaa !54
  %i.px = icmp eq ptr %i.pw, %.sroa.3.0.i83.i
  br i1 %i.px, label %bb.cq, label %bb.cl

bb.cl:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit120.i, %.split278.i
  %i.py = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.i84.i, ptr %.sroa.3.0.i83.i, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br i1 %i.py, label %bb.cm, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pz = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_2clEDs"(ptr nonnull %5, ptr nonnull %3, i16 noundef zeroext 58)
  br i1 %i.pz, label %bb.cn, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.cn:                                            ; preds = %bb.cm
  %i.qa = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.i84.i, ptr %.sroa.3.0.i83.i, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br i1 %i.qa, label %bb.co, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.co:                                            ; preds = %bb.cn
  %i.qb = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_2clEDs"(ptr nonnull %5, ptr nonnull %3, i16 noundef zeroext 58)
  br i1 %i.qb, label %bb.cp, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.cp:                                            ; preds = %bb.co
  %i.qc = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.i84.i, ptr %.sroa.3.0.i83.i, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  br i1 %i.qc, label %bb.cq, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.cq:                                            ; preds = %bb.cp, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit120.i, %.split278.i
  %i.qd = load i32, ptr %i.nh, align 4
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.backedge, %bb.cq
  %i.qf = load i32, ptr %i.kc, align 8            ; 5 uses
  %i.qg = icmp slt i32 %i.qf, 0
  br i1 %i.qg, label %bb.cr, label %bb.cy

bb.cr:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i
  %i.qh = and i32 %i.qf, 1073741824
  %.not.i.i.i.i31 = icmp eq i32 %i.qh, 0
  %i.qi = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  br i1 %.not.i.i.i.i31, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.qi, align 8, !tbaa !11
  %i.qj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 281474976710655
  %i.qk = inttoptr i64 %i.qj to ptr               ; 5 uses
  %i.ql = load i32, ptr %i.qk, align 4            ; 2 uses
  %i.qm = icmp ugt i32 %i.ql, 150994943
  br i1 %i.qm, label %bb.ct, label %bb.cu, !prof !41

bb.ct:                                            ; preds = %bb.cs
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !44
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %.mask.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ql, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx [
    i32 134217728, label %bb.cv
    i32 67108864, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i

bb.cx:                                            ; preds = %bb.cu
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i = load i64, ptr %i.qr, align 8, !tbaa !11
  %i.qs = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i, 281474976710655
  %i.qt = inttoptr i64 %i.qs to ptr
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !44
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct, %bb.cr
  %.0.i.sink.i.i.i.i = phi ptr [ %i.qi, %bb.cr ], [ %i.qo, %bb.ct ], [ %i.qp, %bb.cv ], [ %i.qq, %bb.cw ], [ %i.qv, %bb.cx ]
  %i.qw = and i32 %i.qf, 1073741823
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.i.i, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qe
  br label %_ZNK6hermes2vm10StringView3endEv.exit.i.i

bb.cy:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i
  %.not.i1.i.i.i = icmp samesign ult i32 %i.qf, 1073741824
  %i.ra = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  br i1 %.not.i1.i.i.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.sroa.0.0.copyload.i.i.i.i2.i.i.i = load i64, ptr %i.ra, align 8, !tbaa !11
  %i.rb = and i64 %.sroa.0.0.copyload.i.i.i.i2.i.i.i, 281474976710655
  %i.rc = inttoptr i64 %i.rb to ptr               ; 5 uses
  %i.rd = load i32, ptr %i.rc, align 4            ; 2 uses
  %i.re = icmp ugt i32 %i.rd, 150994943
  br i1 %i.re, label %bb.da, label %bb.db, !prof !41

bb.da:                                            ; preds = %bb.cz
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !48
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i

bb.db:                                            ; preds = %bb.cz
  %.mask.i.i.i.i.i.i.i.i.i3.i.i.i = and i32 %i.rd, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i.i.i, label %bb.de [
    i32 117440512, label %bb.dc
    i32 50331648, label %bb.dd
  ]

bb.dc:                                            ; preds = %bb.db
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i

bb.dd:                                            ; preds = %bb.db
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i

bb.de:                                            ; preds = %bb.db
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i.i.i = load i64, ptr %i.rj, align 8, !tbaa !11
  %i.rk = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i.i.i, 281474976710655
  %i.rl = inttoptr i64 %i.rk to ptr
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !48
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i: ; preds = %bb.de, %bb.dd, %bb.dc, %bb.da, %bb.cy
  %.0.i.sink.i4.i.i.i = phi ptr [ %i.ra, %bb.cy ], [ %i.rg, %bb.da ], [ %i.rh, %bb.dc ], [ %i.ri, %bb.dd ], [ %i.rn, %bb.de ]
  %i.ro = and i32 %i.qf, 1073741823
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i.i, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.rq, i64 %i.qe
  br label %_ZNK6hermes2vm10StringView3endEv.exit.i.i

_ZNK6hermes2vm10StringView3endEv.exit.i.i:        ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i ], [ %i.rr, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.qz, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i.i ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i.i ]
  %i.rs = load ptr, ptr %5, align 8, !tbaa !53    ; 6 uses
  %.not.i.i1.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i1.i.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i.i28, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i.i17

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i.i28: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit.i.i
  %i.rt = load ptr, ptr %i.mt, align 8, !tbaa !54 ; 5 uses
  %.not5.i.i = icmp eq ptr %i.rt, %.sroa.3.0.i.i.i
  br i1 %.not5.i.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i30, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i.i29

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i.i17: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit.i.i
  %.not4.i.i = icmp eq ptr %i.rs, %.sroa.0.0.i.i.i
  br i1 %.not4.i.i, label %"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_3clEv.exit.i", label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i.i18

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i.i29: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i.i28
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !50
  %i.rv = zext i16 %i.ru to i32
  %i.rw = call i32 @isspace(i32 noundef %i.rv) #20
  %.not.i121.i = icmp eq i32 %i.rw, 0
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE:bb.a
  %i.va = fmul nnan double %.036.i, %i.uz
  %i.vb = fptosi double %i.va to i32              ; 4 uses
  %i.vc = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %.not.i.i157.i = icmp eq ptr %i.vc, null
  br i1 %.not.i.i157.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit159.i, label %.split279.i

.split279.i:                                      ; preds = %bb.dq
  %i.vd = icmp eq ptr %i.vc, %.sroa.0.0.i84.i
  br i1 %i.vd, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i, label %bb.dr

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit159.i: ; preds = %bb.dq
  %i.ve = load ptr, ptr %i.mt, align 8, !tbaa !54
  %i.vf = icmp eq ptr %i.ve, %.sroa.3.0.i83.i
  br i1 %i.vf, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit159.i, %.split279.i
  %i.vg = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_2clEDs"(ptr nonnull %5, ptr nonnull %3, i16 noundef zeroext 32)
  br i1 %i.vg, label %bb.ds, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.ds:                                            ; preds = %bb.dr
  %i.vh = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_2clEDs"(ptr nonnull %5, ptr nonnull %3, i16 noundef zeroext 40)
  br i1 %i.vh, label %.preheader.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

.preheader.i:                                     ; preds = %bb.ds
  %i.vi = load ptr, ptr %5, align 8, !tbaa !53    ; 3 uses
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %.preheader.split.us.i23, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit162.thread.i.preheader

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit162.thread.i.preheader: ; preds = %.preheader.i
  %.not222.i161 = icmp eq ptr %i.vi, %.sroa.0.0.i84.i
  br i1 %.not222.i161, label %.critedge.i22, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.thread.i

.preheader.split.us.i23:                          ; preds = %.preheader.i
  %.promoted.i24 = load ptr, ptr %i.mt, align 8, !tbaa !54 ; 2 uses
  %.not223.us236.i = icmp eq ptr %.promoted.i24, %.sroa.3.0.i83.i
  br i1 %.not223.us236.i, label %.critedge.i22, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.us.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.us.i: ; preds = %.preheader.split.us.i23, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.us.i
  %i.vk = phi ptr [ %i.vm, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.us.i ], [ %.promoted.i24, %.preheader.split.us.i23 ] ; 2 uses
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !50
  %.not46.us.i = icmp eq i16 %i.vl, 41
  br i1 %.not46.us.i, label %.critedge.i22, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.us.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.us.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.us.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 2 ; 3 uses
  store ptr %i.vm, ptr %i.mt, align 8, !tbaa !54
  %.not223.us.i = icmp eq ptr %i.vm, %.sroa.3.0.i83.i
  br i1 %.not223.us.i, label %.critedge.i22, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.us.i, !llvm.loop !124

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.thread.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit162.thread.i.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.i
  %i.vn = phi ptr [ %i.vp, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.i ], [ %i.vi, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit162.thread.i.preheader ] ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !51
  %.not46219.i = icmp eq i8 %i.vo, 41
  br i1 %.not46219.i, label %.critedge.i22, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.thread.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 1 ; 3 uses
  store ptr %i.vp, ptr %5, align 8, !tbaa !53
  %.not222.i = icmp eq ptr %i.vp, %.sroa.0.0.i84.i
  br i1 %.not222.i, label %.critedge.i22, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.thread.i, !llvm.loop !125

.critedge.i22:                                    ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.thread.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit166.us.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit164.us.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit162.thread.i.preheader, %.preheader.split.us.i23
  %i.vq = call fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_2clEDs"(ptr nonnull %5, ptr nonnull %3, i16 noundef zeroext 41)
  br i1 %i.vq, label %bb.dt, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

bb.dt:                                            ; preds = %.critedge.i22
  %.pre242.i = load ptr, ptr %5, align 8, !tbaa !53 ; 2 uses
  %.not.i.i167.i = icmp eq ptr %.pre242.i, null
  br i1 %.not.i.i167.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i, label %.split284.i

.split284.i:                                      ; preds = %bb.dt
  %i.vr = icmp eq ptr %.pre242.i, %.sroa.0.0.i84.i
  br i1 %i.vr, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i: ; preds = %bb.dt
  %.pre = load ptr, ptr %i.mt, align 8, !tbaa !54
  %i.vs = icmp eq ptr %.pre, %.sroa.3.0.i83.i
  br i1 %i.vs, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i, label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit159.i, %.split279.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i, %.split284.i, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit134.i, %.split.i20
  %i.vt = phi i32 [ 0, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit134.i ], [ 0, %.split.i20 ], [ %i.vb, %.split284.i ], [ %i.vb, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i ], [ %i.vb, %.split279.i ], [ %i.vb, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit159.i ]
  %i.vu = phi i32 [ %i.ub, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit134.i ], [ %i.ub, %.split.i20 ], [ %i.ut, %.split284.i ], [ %i.ut, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i ], [ %i.ut, %.split279.i ], [ %i.ut, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit159.i ]
  %i.vv = load i32, ptr %i.a, align 4, !tbaa !6
  %i.vw = sitofp i32 %i.vv to double
  %i.vx = load i32, ptr %i.b, align 4, !tbaa !6
  %i.vy = add nsw i32 %i.vx, -1
  %i.vz = sitofp i32 %i.vy to double
  %i.wa = load i32, ptr %i.c, align 4, !tbaa !6
  %i.wb = sitofp i32 %i.wa to double
  %i.wc = call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.vw, double noundef %i.vz, double noundef %i.wb) ; 2 uses
  %i.wd = load i32, ptr %i.d, align 4, !tbaa !6
  %i.we = sub nsw i32 %i.wd, %i.vu
  %i.wf = sitofp i32 %i.we to double
  %i.wg = load i32, ptr %i.e, align 4, !tbaa !6
  %i.wh = sub nsw i32 %i.wg, %i.vt
  %i.wi = sitofp i32 %i.wh to double
  %i.wj = load i32, ptr %i.f, align 4, !tbaa !6
  %i.wk = sitofp i32 %i.wj to double
  %i.wl = fmul nnan double %i.wi, 6.000000e+04
  %i.wm = call double @llvm.fmuladd.f64(double %i.wf, double 3.600000e+06, double %i.wl)
  %i.wn = call double @llvm.fmuladd.f64(double %i.wk, double 1.000000e+03, double %i.wm)
  %i.wo = fadd double %i.wn, 0.000000e+00         ; 2 uses
  %i.wp = call double @llvm.fabs.f64(double %i.wc)
  %i.wq = fcmp one double %i.wp, +inf
  %i.wr = call double @llvm.fabs.f64(double %i.wo)
  %i.ws = fcmp one double %i.wr, +inf
  %or.cond.i172.i = and i1 %i.wq, %i.ws
  %i.wt = fmul double %i.wc, 8.640000e+07
  %i.wu = fadd double %i.wt, %i.wo
  %.0.i173.i = select i1 %or.cond.i172.i, double %i.wu, double +qnan
  br label %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit: ; preds = %bb.cg, %_ZNK6hermes2vm10StringView3endEv.exit.i12, %_ZN4llvh9StringRefC2EPKc.exit50.6.i, %bb.ce, %bb.cf, %bb.ci, %.loopexit228.i, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.dg, %bb.dh, %bb.di, %bb.dk, %.thread213.i, %bb.dm, %.split216.i, %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i25, %bb.do, %bb.dp, %bb.dr, %bb.ds, %.critedge.i22, %.split284.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i
  %.2.i13 = phi double [ +qnan, %_ZNK6hermes2vm10StringView3endEv.exit.i12 ], [ +qnan, %.split284.i ], [ +qnan, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169.i ], [ %.0.i173.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit169._crit_edge.i ], [ +qnan, %bb.di ], [ +qnan, %bb.dm ], [ +qnan, %.critedge.i22 ], [ +qnan, %bb.ds ], [ +qnan, %bb.dr ], [ +qnan, %bb.dp ], [ +qnan, %bb.do ], [ +qnan, %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i25 ], [ +qnan, %_ZN4llvh9StringRefC2EPKc.exit50.6.i ], [ +qnan, %bb.cp ], [ +qnan, %bb.co ], [ +qnan, %bb.cn ], [ +qnan, %bb.cm ], [ +qnan, %bb.cl ], [ +qnan, %.loopexit228.i ], [ +qnan, %bb.ci ], [ +qnan, %bb.ce ], [ +qnan, %bb.cf ], [ +qnan, %.thread213.i ], [ %i.tg, %bb.dh ], [ +qnan, %bb.dg ], [ +qnan, %.split216.i ], [ +qnan, %bb.dk ], [ +qnan, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.du

bb.du:                                            ; preds = %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit, %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit
  %.0 = phi double [ %.2.i13, %_ZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit ], [ %.0.i, %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readnone captures(address) %1, ptr nofree readnone captures(address) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvh::SmallString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 16, ptr %i.e, align 4, !tbaa !31
  %i.f = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = icmp eq ptr %i.i, %2
  br i1 %i.j, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, %bb.e, %bb.f
  %i.k = phi i32 [ %i.ad, %bb.f ], [ %i.ad, %bb.e ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ] ; 4 uses
  %.pr = phi ptr [ null, %bb.f ], [ %i.af, %bb.e ], [ null, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not19 = icmp eq ptr %i.m, %2
  br i1 %.not19, label %.critedge, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread: ; preds = %.split, %bb.b
  %i.n = phi ptr [ %.pr, %bb.b ], [ %i.f, %.split ] ; 2 uses
  %i.o = phi i32 [ %i.k, %bb.b ], [ 0, %.split ]  ; 3 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %.critedge, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit
  %i.p = load i16, ptr %i.m, align 2, !tbaa !50   ; 2 uses
  %i.q = add i16 %i.p, -48
  %i.r = icmp ult i16 %i.q, 10
  br i1 %i.r, label %bb.c, label %.critedge

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread
  %i.s = load i8, ptr %i.n, align 1, !tbaa !51    ; 2 uses
  %5 = add i8 %i.s, -48
  %i.t = icmp ult i8 %5, 10
  br i1 %i.t, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit9, label %.critedge

bb.c:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %i.u = trunc nuw nsw i16 %i.p to i8
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit9

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit9: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread, %bb.c
  %i.v = phi i32 [ %i.k, %bb.c ], [ %i.o, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread ] ; 2 uses
  %i.w = phi i8 [ %i.u, %bb.c ], [ %i.s, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread ]
  %i.x = load i32, ptr %i.e, align 4, !tbaa !31
  %.not.i.i10 = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i10, label %_ZN4llvh11SmallStringILj16EEpLEc.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit9
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 1) #19
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !30
  br label %_ZN4llvh11SmallStringILj16EEpLEc.exit

_ZN4llvh11SmallStringILj16EEpLEc.exit:            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit9, %bb.d
  %i.y = phi i32 [ %.pre.i.i, %bb.d ], [ %i.v, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit9 ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !33
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !30
  %i.ad = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.ad, ptr %i.d, align 8, !tbaa !30
  %i.ae = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %.not.i11 = icmp eq ptr %i.ae, null
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallStringILj16EEpLEc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !53
  br label %bb.b, !llvm.loop !132

bb.f:                                             ; preds = %_ZN4llvh11SmallStringILj16EEpLEc.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !54
  br label %bb.b, !llvm.loop !132

.critedge:                                        ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %i.aj = phi i32 [ %i.o, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread ], [ %i.o, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread ], [ %i.k, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit ], [ %i.k, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit ]
  %i.ak = load ptr, ptr %4, align 8, !tbaa !33
  %i.al = zext i32 %i.aj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.am = call noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr %i.ak, i64 %i.al, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  br i1 %i.am, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.an = load i64, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.ao = add i64 %i.an, 2147483648
  %.not.i12 = icmp ult i64 %i.ao, 4294967296
  br i1 %.not.i12, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nsw i64 %i.an to i32
  store i32 %i.ap, ptr %3, align 4, !tbaa !6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.critedge
  %i.aq = phi i1 [ true, %bb.h ], [ false, %bb.g ], [ false, %.critedge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ar = icmp eq ptr %.pre, %i.c
  br i1 %i.ar, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %.pre) #19
  br label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit

_ZN4llvh11SmallVectorIcLj16EED2Ev.exit:           ; preds = %.split, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, %bb.i, %bb.j
  %.030 = phi i1 [ %i.aq, %bb.j ], [ %i.aq, %bb.i ], [ false, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ], [ false, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !59, !align !60 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %.not.i = icmp ne ptr %i.c, null                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %.sroa.3.0.idx.i = select i1 %.not.i, i64 0, i64 3
  %.sroa.3.0.i = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.sroa.3.0.idx.i
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.f, ptr null
  %i.g = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !59, !align !60 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 9 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.i, 1073741824
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !51   ; 5 uses
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView3endEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr                 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp ugt i32 %i.o, 150994943
  br i1 %i.p, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.o, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.u, align 8, !tbaa !11
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.i:                                             ; preds = %bb.a
  %.not.i1.i = icmp samesign ult i32 %i.i, 1073741824
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !51   ; 5 uses
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView3endEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.z, align 8, !tbaa !11
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr               ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 150994943
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !41

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  br label %_ZNK6hermes2vm10StringView3endEv.exit.thread

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ac, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.o [
    i32 117440512, label %bb.m
    i32 50331648, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  br label %_ZNK6hermes2vm10StringView3endEv.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %_ZNK6hermes2vm10StringView3endEv.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  br label %_ZNK6hermes2vm10StringView3endEv.exit.thread

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i.i = phi ptr [ %i.l, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.y, %bb.h ]
  br i1 %.not.i, label %.split, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit

_ZNK6hermes2vm10StringView3endEv.exit.thread:     ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %.0.i.sink.i4.i = phi ptr [ %i.z, %bb.i ], [ %i.af, %bb.k ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ], [ %i.am, %bb.o ]
  %i.an = and i32 %i.i, 1073741823
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.ao
end_hunk_2
