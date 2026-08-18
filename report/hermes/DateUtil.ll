inline.NumInlined: 605
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE:bb.a
  %i.dv = load i16, ptr %.pre257.i, align 2, !tbaa !108
  %i.dw = icmp eq i16 %i.dv, 84
  br i1 %i.dw, label %bb.ab, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !110
  switch i8 %i.dx, label %.split316.i [
    i8 84, label %.thread2.i105.i
    i8 32, label %.thread2.i115.i
  ]

.thread2.i105.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dy, ptr %10, align 8, !tbaa !111
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

bb.ab:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i108.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre257.i, i64 2
  store ptr %i.dz, ptr %i.cn, align 8, !tbaa !113
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i108.i
  %i.ea = load i16, ptr %.pre257.i, align 2, !tbaa !108
  %i.eb = icmp eq i16 %i.ea, 32
  br i1 %i.eb, label %bb.ac, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i

.thread2.i115.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.ec, ptr %10, align 8, !tbaa !111
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

bb.ac:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre257.i, i64 2
  store ptr %i.ed, ptr %i.cn, align 8, !tbaa !113
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i": ; preds = %bb.ac, %.thread2.i115.i, %bb.ab, %.thread2.i105.i
  %i.ee = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  br i1 %i.ee, label %bb.ad, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ad:                                            ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i"
  %i.ef = load ptr, ptr %10, align 8, !tbaa !111  ; 4 uses
  %.not.i.i.i120.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i120.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i: ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 3 uses
  %.not3.i127.i = icmp eq ptr %i.eg, %.sroa.3.0.i59.i
  br i1 %.not3.i127.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i: ; preds = %bb.ad
  %.not.i122.i = icmp eq ptr %i.ef, %.sroa.0.0.i60.i
  br i1 %.not.i122.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !108
  %i.ei = icmp eq i16 %i.eh, 58
  br i1 %i.ei, label %bb.ae, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !110
  %i.ek = icmp eq i8 %i.ej, 58
  br i1 %i.ek, label %.thread2.i125.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

.thread2.i125.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store ptr %i.el, ptr %10, align 8, !tbaa !111
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i"

bb.ae:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store ptr %i.em, ptr %i.cn, align 8, !tbaa !113
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i": ; preds = %bb.ae, %.thread2.i125.i
  %i.en = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  br i1 %i.en, label %bb.af, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.af:                                            ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i"
  %i.eo = load ptr, ptr %10, align 8, !tbaa !111  ; 5 uses
  %.not.i.i.i130.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i130.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i: ; preds = %bb.af
  %i.ep = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 3 uses
  %.not3.i137.i = icmp eq ptr %i.ep, %.sroa.3.0.i59.i
  br i1 %.not3.i137.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i: ; preds = %bb.af
  %.not.i132.i = icmp eq ptr %i.eo, %.sroa.0.0.i60.i
  br i1 %.not.i132.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !108
  %i.er = icmp eq i16 %i.eq, 58
  br i1 %i.er, label %bb.ag, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i75

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !110
  %i.et = icmp eq i8 %i.es, 58
  br i1 %i.et, label %.thread2.i135.i, label %.split226.i

.thread2.i135.i:                                  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.eu, ptr %10, align 8, !tbaa !111
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i"

bb.ag:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store ptr %i.ev, ptr %i.cn, align 8, !tbaa !113
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i": ; preds = %bb.ag, %.thread2.i135.i
  %i.ew = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.0.0.i60.i, ptr %.sroa.3.0.i59.i, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  br i1 %i.ew, label %bb.ah, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ah:                                            ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i"
  %i.ex = load ptr, ptr %10, align 8, !tbaa !111  ; 6 uses
  %.not.i.i.i79 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i79, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i80

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86: ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !113 ; 3 uses
  %.not3.i87 = icmp eq ptr %i.ez, %.sroa.3.0.i59.i
  br i1 %.not3.i87, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i80: ; preds = %bb.ah
  %.not.i81 = icmp eq ptr %i.ex, %.sroa.0.0.i60.i
  br i1 %.not.i81, label %.split226.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i82

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !108
  %i.fb = icmp eq i16 %i.fa, 46
  br i1 %i.fb, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i82: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i80
  %i.fc = load i8, ptr %i.ex, align 1, !tbaa !110
  %i.fd = icmp eq i8 %i.fc, 46
  br i1 %i.fd, label %.split.i, label %.split226.i

.split.i:                                         ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i82
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 4 uses
  store ptr %i.fe, ptr %10, align 8, !tbaa !111
  %i.ff = icmp eq ptr %i.fe, %.sroa.0.0.i60.i
  br i1 %i.ff, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.ai

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store ptr %i.fg, ptr %i.ey, align 8, !tbaa !113
  %i.fh = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %.sroa.3.0.i59.i
  br i1 %i.fi, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.aj

bb.ai:                                            ; preds = %.split.i
  %i.fj = load i8, ptr %i.fe, align 1, !tbaa !110
  %i.fk = sext i8 %i.fj to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i

bb.aj:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i
  %i.fl = load i16, ptr %i.fh, align 2, !tbaa !108
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i: ; preds = %bb.aj, %bb.ai
  %.pr234.pre.i106 = phi ptr [ %i.fe, %bb.ai ], [ null, %bb.aj ]
  %i.fm = phi i16 [ %i.fk, %bb.ai ], [ %i.fl, %bb.aj ]
  %i.fn = add i16 %i.fm, -48
  %i.fo = icmp ult i16 %i.fn, 10
  br i1 %i.fo, label %.preheader.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

.preheader.i:                                     ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i
  %i.fp = phi ptr [ %i.gb, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ], [ %.pr234.pre.i106, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i ] ; 6 uses
  %.028.i = phi i32 [ %i.gd, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ], [ 100, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i ] ; 2 uses
  %.026.i = phi i32 [ %i.gc, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i ] ; 4 uses
  %.not.i.i143.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i143.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i: ; preds = %.preheader.i
  %i.fq = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 3 uses
  %.not246.i = icmp eq ptr %i.fq, %.sroa.3.0.i59.i
  br i1 %.not246.i, label %.critedge.i.thread229, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i: ; preds = %.preheader.i
  %.not.i = icmp eq ptr %i.fp, %.sroa.0.0.i60.i
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !108 ; 2 uses
  %i.fs = add i16 %i.fr, -48
  %i.ft = icmp ult i16 %i.fs, 10
  br i1 %i.ft, label %bb.ak, label %.critedge.i.thread229

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i
  %i.fu = load i8, ptr %i.fp, align 1, !tbaa !110 ; 2 uses
  %i.fv = sext i8 %i.fu to i16
  %i.fw = add nsw i16 %i.fv, -48
  %i.fx = icmp ult i16 %i.fw, 10
  br i1 %i.fx, label %.thread225.i, label %.critedge.i

.thread225.i:                                     ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i
  %11 = zext nneg i8 %i.fu to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.i
  %i.fz = zext nneg i16 %i.fr to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store ptr %i.ga, ptr %i.cn, align 8, !tbaa !113
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i: ; preds = %bb.ak, %.thread225.i
  %i.gb = phi ptr [ %i.fy, %.thread225.i ], [ null, %bb.ak ]
  %.pn247.in.i = phi i32 [ %11, %.thread225.i ], [ %i.fz, %bb.ak ]
  %.pn247.i = add nsw i32 %.pn247.in.i, -48
  %.pn.i = mul nsw i32 %.pn247.i, %.028.i
  %i.gc = add nsw i32 %.pn.i, %.026.i
  %i.gd = sdiv i32 %.028.i, 10
  br label %.preheader.i, !llvm.loop !114

.critedge.i.thread229:                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i
  store ptr null, ptr %10, align 8
  br label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i

.critedge.i:                                      ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit145.thread.i
  store ptr %i.fp, ptr %10, align 8
  br label %.split226.i

.split226.i:                                      ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i80, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i82, %.critedge.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i
  %.127240.i = phi i32 [ %.026.i, %.critedge.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i82 ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i80 ] ; 3 uses
  %i.ge = phi ptr [ %i.fp, %.critedge.i ], [ %i.eo, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i133.i ], [ %i.ex, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i82 ], [ %i.ex, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i80 ] ; 7 uses
  %i.gf = icmp eq ptr %i.ge, %.sroa.0.0.i60.i
  br i1 %i.gf, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i71

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88, %.critedge.i.thread229
  %.127.ph.i222 = phi i32 [ %.026.i, %.critedge.i.thread229 ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i88 ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i86 ] ; 2 uses
  %.pre259.i.pre = load ptr, ptr %i.cn, align 8, !tbaa !113
  %i.gg = icmp eq ptr %.pre259.i.pre, %.sroa.3.0.i59.i
  br i1 %i.gg, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i75

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i, %.split226.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i
  %.127239.i = phi i32 [ %.127240.i, %.split226.i ], [ %.127.ph.i222, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i136.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i131.i ], [ %.026.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i ]
  %i.gh = sitofp i32 %i.db to double
  %i.gi = load i32, ptr %i.j, align 4, !tbaa !3
  %i.gj = add nsw i32 %i.gi, -1
  %i.gk = sitofp i32 %i.gj to double
  %i.gl = load i32, ptr %i.k, align 4, !tbaa !3
  %i.gm = sitofp i32 %i.gl to double
  %i.gn = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.gh, double noundef %i.gk, double noundef %i.gm) ; 2 uses
  %i.go = load i32, ptr %i.l, align 4, !tbaa !3
  %i.gp = sitofp i32 %i.go to double
  %i.gq = load i32, ptr %i.m, align 4, !tbaa !3
  %i.gr = sitofp i32 %i.gq to double
  %i.gs = load i32, ptr %i.n, align 4, !tbaa !3
  %i.gt = sitofp i32 %i.gs to double
  %i.gu = sitofp i32 %.127239.i to double
  %i.gv = tail call noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %i.gp, double noundef %i.gr, double noundef %i.gt, double noundef %i.gu) ; 2 uses
  %i.gw = tail call double @llvm.fabs.f64(double %i.gn)
  %i.gx = fcmp one double %i.gw, +inf
  %i.gy = tail call double @llvm.fabs.f64(double %i.gv)
  %i.gz = fcmp one double %i.gy, +inf
  %or.cond.i.i = and i1 %i.gx, %i.gz
  %i.ha = fmul double %i.gn, 8.640000e+07
  %i.hb = fadd double %i.ha, %i.gv
  %.0.i152.i = select i1 %or.cond.i.i, double %i.hb, double +qnan ; 3 uses
  %i.hc = tail call double @llvm.fabs.f64(double %.0.i152.i)
  %i.hd = fcmp ueq double %i.hc, +inf
  br i1 %i.hd, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i
  %i.he = tail call noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793) %2, double noundef %.0.i152.i, i8 noundef signext 0) #19
  %i.hf = fsub double %.0.i152.i, %i.he
  br label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i75: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i
  %.127241.i.ph = phi i32 [ %.127.ph.i222, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.i ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i138.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !113 ; 3 uses
  %.not3.i76 = icmp eq ptr %i.hh, %.sroa.3.0.i59.i
  br i1 %.not3.i76, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i77

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i77: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i75
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !108
  %i.hj = icmp eq i16 %i.hi, 90
  br i1 %i.hj, label %bb.am, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i71: ; preds = %.split226.i
  %i.hk = load i8, ptr %i.ge, align 1, !tbaa !110
  %i.hl = icmp eq i8 %i.hk, 90
  br i1 %i.hl, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread", label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread": ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i71
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  br label %.split316.i

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i77
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  store ptr %i.hn, ptr %i.hg, align 8, !tbaa !113
  br label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i77, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i75
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !113 ; 3 uses
  %.not3.i65 = icmp eq ptr %i.hp, %.sroa.3.0.i59.i
  br i1 %.not3.i65, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !108
  %i.hr = icmp eq i16 %i.hq, 43
  br i1 %i.hr, label %bb.an, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i71
  %i.hs = load i8, ptr %i.ge, align 1, !tbaa !110
  %i.ht = icmp eq i8 %i.hs, 43
  br i1 %i.ht, label %.split227.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  store ptr %i.hu, ptr %i.ho, align 8, !tbaa !113
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !113 ; 3 uses
  %.not3.i54 = icmp eq ptr %i.hw, %.sroa.3.0.i59.i
  br i1 %.not3.i54, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !108
  %i.hy = icmp eq i16 %i.hx, 45
  br i1 %i.hy, label %bb.ao, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60
  %i.hz = load i8, ptr %i.ge, align 1, !tbaa !110
  %i.ia = icmp eq i8 %i.hz, 45
  br i1 %i.ia, label %.split227.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  store ptr %i.ib, ptr %i.hv, align 8, !tbaa !113
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i

.split227.i:                                      ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49
  %.1.i.ph115 = phi double [ 1.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60 ], [ -1.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49 ]
  %.ph = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store ptr %.ph, ptr %10, align 8, !tbaa !111
  %.not.i154.i118 = icmp eq ptr %.sroa.0.0.i60.i, null ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i, i64 -2
  %.sroa.0.0.i156.i121 = select i1 %.not.i154.i118, ptr null, ptr %i.ic ; 2 uses
  %i.id = icmp ugt ptr %.ph, %.sroa.0.0.i156.i121
  br i1 %i.id, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.ap

_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i: ; preds = %bb.an, %bb.ao
  %.1.i.ph = phi double [ -1.000000e+00, %bb.ao ], [ 1.000000e+00, %bb.an ]
  %.not.i154.i = icmp eq ptr %.sroa.0.0.i60.i, null ; 2 uses
  %.sroa.3.0.idx.i.i = select i1 %.not.i154.i, i64 -2, i64 0
  %.sroa.3.0.i155.i = getelementptr inbounds [2 x i8], ptr %.sroa.3.0.i59.i, i64 %.sroa.3.0.idx.i.i ; 2 uses
  %i.ie = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
  %i.if = icmp ugt ptr %i.ie, %.sroa.3.0.i155.i
  br i1 %i.if, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.aq

bb.ap:                                            ; preds = %.split227.i
  %.sroa.3.0.idx.i.i119 = select i1 %.not.i154.i118, i64 -2, i64 0
  %.sroa.3.0.i155.i120 = getelementptr inbounds [2 x i8], ptr %.sroa.3.0.i59.i, i64 %.sroa.3.0.idx.i.i119
  %.pre260.i = load ptr, ptr %i.cn, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i, i64 -2
  %.sroa.0.0.i156.i = select i1 %.not.i154.i, ptr null, ptr %i.ih
  %.sroa.3.0.i163.i280 = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sroa.3.0.i163.i289 = phi ptr [ %.sroa.3.0.i163.i280, %bb.aq ], [ %.pre260.i, %bb.ap ]
  %.1.i123287 = phi double [ %.1.i.ph, %bb.aq ], [ %.1.i.ph115, %bb.ap ] ; 2 uses
  %.sroa.3.0.i155.i125285 = phi ptr [ %.sroa.3.0.i155.i, %bb.aq ], [ %.sroa.3.0.i155.i120, %bb.ap ]
  %.sroa.0.0.i156.i128283 = phi ptr [ %.sroa.0.0.i156.i, %bb.aq ], [ %.sroa.0.0.i156.i121, %bb.ap ]
  %.127241.i245281 = phi i32 [ %.127241.i.ph, %bb.aq ], [ %.127240.i, %bb.ap ]
  %i.ii = phi ptr [ null, %bb.aq ], [ %i.ig, %bb.ap ]
  %i.ij = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.ii, ptr %.sroa.3.0.i163.i289, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br i1 %i.ij, label %bb.as, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.ik = load i32, ptr %i.o, align 4, !tbaa !3
  %i.il = sitofp i32 %i.ik to double
  %i.im = fmul nnan double %.1.i123287, %i.il
  %i.in = fptosi double %i.im to i32
  %i.io = load ptr, ptr %10, align 8, !tbaa !111  ; 6 uses
  %.not.i.i.i38 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i38, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44: ; preds = %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !113 ; 3 uses
  %.not3.i = icmp eq ptr %i.iq, %.sroa.3.0.i59.i
  br i1 %.not3.i, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i45

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39: ; preds = %bb.as
  %.not.i40 = icmp eq ptr %i.io, %.sroa.0.0.i60.i
  br i1 %.not.i40, label %.split228.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i45: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !108
  %i.is = icmp eq i16 %i.ir, 58
  br i1 %i.is, label %bb.at, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39
  %i.it = load i8, ptr %i.io, align 1, !tbaa !110
  %i.iu = icmp eq i8 %i.it, 58
  br i1 %i.iu, label %.thread2.i, label %.split228.i

.thread2.i:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41
end_hunk_0
