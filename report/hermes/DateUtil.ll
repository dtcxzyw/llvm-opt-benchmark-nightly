inline.NumInlined: 605
inline.NumDeleted: 364
begin_hunk_0_@_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE:bb.a
  %.not3.i65 = icmp eq ptr %i.hr, %.sroa.3.0.i59.i
  br i1 %.not3.i65, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !108
  %i.ht = icmp eq i16 %i.hs, 43
  br i1 %i.ht, label %bb.ao, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i71
  %i.hu = load i8, ptr %i.gg, align 1, !tbaa !110
  %i.hv = icmp eq i8 %i.hu, 43
  br i1 %i.hv, label %bb.aq, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  store ptr %i.hw, ptr %i.hq, align 8, !tbaa !113
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i66, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i64
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !113 ; 3 uses
  %.not3.i54 = icmp eq ptr %i.hy, %.sroa.3.0.i59.i
  br i1 %.not3.i54, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !108
  %i.ia = icmp eq i16 %i.hz, 45
  br i1 %i.ia, label %bb.ap, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60
  %i.ib = load i8, ptr %i.gg, align 1, !tbaa !110
  %i.ic = icmp eq i8 %i.ib, 45
  br i1 %i.ic, label %bb.aq, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ap:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store ptr %i.id, ptr %i.hx, align 8, !tbaa !113
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i

bb.aq:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49
  %.1.i.ph115 = phi double [ 1.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i60 ], [ -1.000000e+00, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49 ]
  %.ph = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 2 uses
  store ptr %.ph, ptr %10, align 8, !tbaa !111
  %.not.i154.i118 = icmp eq ptr %.sroa.0.0.i60.i, null ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i, i64 -2
  %.sroa.0.0.i156.i121 = select i1 %.not.i154.i118, ptr null, ptr %i.ie ; 2 uses
  %i.if = icmp ugt ptr %.ph, %.sroa.0.0.i156.i121
  br i1 %i.if, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.ar

_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i: ; preds = %bb.ao, %bb.ap
  %.1.i.ph = phi double [ -1.000000e+00, %bb.ap ], [ 1.000000e+00, %bb.ao ]
  %.not.i154.i = icmp eq ptr %.sroa.0.0.i60.i, null ; 2 uses
  %.sroa.3.0.idx.i.i = select i1 %.not.i154.i, i64 -2, i64 0
  %.sroa.3.0.i155.i = getelementptr inbounds [2 x i8], ptr %.sroa.3.0.i59.i, i64 %.sroa.3.0.idx.i.i ; 2 uses
  %i.ig = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
  %i.ih = icmp ugt ptr %i.ig, %.sroa.3.0.i155.i
  br i1 %i.ih, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.sroa.3.0.idx.i.i119 = select i1 %.not.i154.i118, i64 -2, i64 0
  %.sroa.3.0.i155.i120 = getelementptr inbounds [2 x i8], ptr %.sroa.3.0.i59.i, i64 %.sroa.3.0.idx.i.i119
  %.pre257.i = load ptr, ptr %i.cn, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gg, i64 3
  br label %bb.at

bb.as:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i
  %i.ij = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i, i64 -2
  %.sroa.0.0.i156.i = select i1 %.not.i154.i, ptr null, ptr %i.ij
  %.sroa.3.0.i163.i281 = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.sroa.3.0.i163.i290 = phi ptr [ %.sroa.3.0.i163.i281, %bb.as ], [ %.pre257.i, %bb.ar ]
  %.1.i123288 = phi double [ %.1.i.ph, %bb.as ], [ %.1.i.ph115, %bb.ar ] ; 2 uses
  %.sroa.3.0.i155.i125286 = phi ptr [ %.sroa.3.0.i155.i, %bb.as ], [ %.sroa.3.0.i155.i120, %bb.ar ]
  %.sroa.0.0.i156.i128284 = phi ptr [ %.sroa.0.0.i156.i, %bb.as ], [ %.sroa.0.0.i156.i121, %bb.ar ]
  %.127238.i246282 = phi i32 [ %.127238.i.ph, %bb.as ], [ %.127237.i, %bb.ar ]
  %i.ik = phi ptr [ null, %bb.as ], [ %i.ii, %bb.ar ]
  %i.il = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.ik, ptr %.sroa.3.0.i163.i290, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br i1 %i.il, label %bb.au, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.im = load i32, ptr %i.o, align 4, !tbaa !3
  %i.in = sitofp i32 %i.im to double
  %i.io = fmul nnan double %.1.i123288, %i.in
  %i.ip = fptosi double %i.io to i32
  %i.iq = load ptr, ptr %10, align 8, !tbaa !111  ; 6 uses
  %.not.i.i.i38 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i38, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44: ; preds = %bb.au
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !113 ; 3 uses
  %.not3.i = icmp eq ptr %i.is, %.sroa.3.0.i59.i
  br i1 %.not3.i, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i45

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39: ; preds = %bb.au
  %.not.i40 = icmp eq ptr %i.iq, %.sroa.0.0.i60.i
  br i1 %.not.i40, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.thread", label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i45: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44
  %i.it = load i16, ptr %i.is, align 2, !tbaa !108
  %i.iu = icmp eq i16 %i.it, 58
  br i1 %i.iu, label %bb.av, label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39
  %i.iv = load i8, ptr %i.iq, align 1, !tbaa !110
  %i.iw = icmp eq i8 %i.iv, 58
  br i1 %i.iw, label %.thread2.i, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.thread"

.thread2.i:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 2 uses
  store ptr %i.ix, ptr %10, align 8, !tbaa !111
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.thread"

bb.av:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i45
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store ptr %i.iy, ptr %i.ir, align 8, !tbaa !113
  br label %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.thread": ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41, %.thread2.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39
  %i.iz = phi ptr [ %i.iq, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i39 ], [ %i.ix, %.thread2.i ], [ %i.iq, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i41 ] ; 2 uses
  %i.ja = icmp ugt ptr %i.iz, %.sroa.0.0.i156.i128284
  br i1 %i.ja, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.aw

_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i44, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i45, %bb.av
  %i.jb = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
  %i.jc = icmp ugt ptr %i.jb, %.sroa.3.0.i155.i125286
  br i1 %i.jc, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, label %bb.ax

bb.aw:                                            ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.thread"
  %.pre259.i = load ptr, ptr %i.cn, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i
  %.sroa.3.0.i178.i296.a = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.sroa.3.0.i178.i297 = phi ptr [ %.sroa.3.0.i178.i296.a, %bb.ax ], [ %.pre259.i, %bb.aw ]
  %i.je = phi ptr [ null, %bb.ax ], [ %i.jd, %bb.aw ]
  %i.jf = call fastcc noundef zeroext i1 @_ZN6hermes2vmL7scanIntINS0_10StringView14const_iteratorEEEbRT_S4_Ri(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.je, ptr %.sroa.3.0.i178.i297, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  br i1 %i.jf, label %bb.az, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.jg = load i32, ptr %i.p, align 4, !tbaa !3
  %i.jh = sitofp i32 %i.jg to double
  %i.ji = fmul nnan double %.1.i123288, %i.jh
  %i.jj = fptosi double %i.ji to i32
  %.pr138.pre = load ptr, ptr %10, align 8, !tbaa !111
  br label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i": ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i, %bb.az
  %.pr138 = phi ptr [ %.sroa.0.0.i60.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i ], [ %.pr138.pre, %bb.az ] ; 2 uses
  %.ph136 = phi i32 [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i ], [ %i.jj, %bb.az ] ; 2 uses
  %.ph137 = phi i32 [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i ], [ %i.ip, %bb.az ] ; 2 uses
  %.2.i.ph = phi i32 [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i101.i ], [ %.127238.i246282, %bb.az ] ; 2 uses
  %.not.i.i182.i = icmp eq ptr %.pr138, null
  br i1 %.not.i.i182.i, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i, label %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308"

"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308": ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread", %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i"
  %.2.i142 = phi i32 [ %.127237.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread" ], [ %.2.i.ph, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i ]
  %i.jk = phi i32 [ 0, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread" ], [ %.ph137, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i ]
  %i.jl = phi i32 [ 0, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread" ], [ %.ph136, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i ]
  %i.jm = phi ptr [ %i.ho, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread" ], [ %.pr138, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ %i.du, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i103.i ]
  %i.jn = icmp eq ptr %i.jm, %.sroa.0.0.i60.i
  br i1 %i.jn, label %bb.ba, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i, %bb.an, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i"
  %.2.i.ph307 = phi i32 [ %.2.i.ph, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i ], [ %.127238.i.ph, %bb.an ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i ]
  %.ph137306 = phi i32 [ %.ph137, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i ], [ 0, %bb.an ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i ]
  %.ph136305 = phi i32 [ %.ph136, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i" ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i118.i ], [ 0, %bb.an ], [ 0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i106.i ]
  %i.jo = load ptr, ptr %i.cn, align 8, !tbaa !113
  %i.jp = icmp eq ptr %i.jo, %.sroa.3.0.i59.i
  br i1 %i.jp, label %bb.ba, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

bb.ba:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308"
  %.2.i141 = phi i32 [ %.2.i.ph307, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i ], [ %.2.i142, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308" ]
  %i.jq = phi i32 [ %.ph137306, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i ], [ %i.jk, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308" ]
  %i.jr = phi i32 [ %.ph136305, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i ], [ %i.jl, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308" ]
  %i.js = sitofp i32 %i.db to double
  %i.jt = load i32, ptr %i.j, align 4, !tbaa !3
  %i.ju = add nsw i32 %i.jt, -1
  %i.jv = sitofp i32 %i.ju to double
  %i.jw = load i32, ptr %i.k, align 4, !tbaa !3
  %i.jx = sitofp i32 %i.jw to double
  %i.jy = tail call noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %i.js, double noundef %i.jv, double noundef %i.jx) ; 2 uses
  %i.jz = load i32, ptr %i.l, align 4, !tbaa !3
  %i.ka = sub nsw i32 %i.jz, %i.jq
  %i.kb = sitofp i32 %i.ka to double
  %i.kc = load i32, ptr %i.m, align 4, !tbaa !3
  %i.kd = sub nsw i32 %i.kc, %i.jr
  %i.ke = sitofp i32 %i.kd to double
  %i.kf = load i32, ptr %i.n, align 4, !tbaa !3
  %i.kg = sitofp i32 %i.kf to double
  %i.kh = sitofp i32 %.2.i141 to double
  %i.ki = fmul nnan double %i.ke, 6.000000e+04
  %i.kj = tail call double @llvm.fmuladd.f64(double %i.kb, double 3.600000e+06, double %i.ki)
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kg, double 1.000000e+03, double %i.kj)
  %i.kl = fadd double %i.kk, %i.kh                ; 2 uses
  %i.km = tail call double @llvm.fabs.f64(double %i.jy)
  %i.kn = fcmp one double %i.km, +inf
  %i.ko = tail call double @llvm.fabs.f64(double %i.kl)
  %i.kp = fcmp one double %i.ko, +inf
  %or.cond.i187.i = and i1 %i.kn, %i.kp
  %i.kq = fmul double %i.jy, 8.640000e+07
  %i.kr = fadd double %i.kq, %i.kl
  br i1 %or.cond.i187.i, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit, label %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread

_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread: ; preds = %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit139.i", %bb.ai, %bb.ay, %bb.ba, %bb.at, %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit175.i, %_ZNK6hermes2vm10StringView14const_iteratorgtERKS2_.exit.i, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit129.i", %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.thread", %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit109.i", %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit99.i", %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit89.i", %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit.i", %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit184.i, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit151.thread.i, %bb.aq, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i123.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i128.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i126.i, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread.i121.i, %"_ZZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_0clEDs.exit119.thread.i.thread308", %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread.i49, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i55, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.bb

_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit: ; preds = %bb.ba, %bb.am
  %.0.i = phi double [ %i.hh, %bb.am ], [ %i.kr, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ks = fcmp uno double %.0.i, 0.000000e+00
  br i1 %i.ks, label %bb.bb, label %bb.en

bb.bb:                                            ; preds = %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit.thread, %_ZN6hermes2vmL12parseISODateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %0, ptr %3, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %1, ptr %i.kt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 1, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 0, ptr %i.e, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 0, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i32 0, ptr %i.g, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i32 0, ptr %i.h, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  br i1 %i.q, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.ku = and i32 %.sroa.5.8.extract.trunc.i, 1073741824
  %.not.i.i.i33 = icmp eq i32 %i.ku, 0
  br i1 %.not.i.i.i33, label %bb.bq, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.0.0.copyload.i.i.i.i.i.i34 = load i64, ptr %0, align 8, !tbaa !12
  %i.kv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i34, 281474976710655
  %i.kw = inttoptr i64 %i.kv to ptr               ; 10 uses
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.ky = icmp ugt i32 %i.kx, 150994943
  br i1 %i.ky, label %bb.be, label %bb.bf, !prof !100

bb.be:                                            ; preds = %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !101
  br label %bb.br

bb.bf:                                            ; preds = %bb.bd
  %.mask.i.i.i.i.i.i.i.i.i.i.i35 = and i32 %i.kx, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i.i35, label %bb.bi [
    i32 134217728, label %bb.bg
    i32 67108864, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  br label %bb.br

bb.bh:                                            ; preds = %bb.bf
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  br label %bb.br

bb.bi:                                            ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i37 = load i64, ptr %i.ld, align 8, !tbaa !12
  %i.le = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i37, 281474976710655
  %i.lf = inttoptr i64 %i.le to ptr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !101
  br label %bb.br

bb.bj:                                            ; preds = %bb.bb
  %.not.i1.i.i9 = icmp samesign ult i32 %.sroa.5.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i.i9, label %bb.bx, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.sroa.0.0.copyload.i.i.i.i2.i.i10 = load i64, ptr %0, align 8, !tbaa !12
  %i.li = and i64 %.sroa.0.0.copyload.i.i.i.i2.i.i10, 281474976710655
  %i.lj = inttoptr i64 %i.li to ptr               ; 10 uses
  %i.lk = load i32, ptr %i.lj, align 4            ; 2 uses
  %i.ll = icmp ugt i32 %i.lk, 150994943
  br i1 %i.ll, label %bb.bl, label %bb.bm, !prof !100

bb.bl:                                            ; preds = %bb.bk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !104
  br label %bb.by

bb.bm:                                            ; preds = %bb.bk
  %.mask.i.i.i.i.i.i.i.i.i3.i.i11 = and i32 %i.lk, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i.i11, label %bb.bp [
    i32 117440512, label %bb.bn
    i32 50331648, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  br label %bb.by

bb.bp:                                            ; preds = %bb.bm
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i.i32 = load i64, ptr %i.lq, align 8, !tbaa !12
  %i.lr = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i.i32, 281474976710655
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !104
  br label %bb.by

bb.bq:                                            ; preds = %bb.bc
  %i.lv = and i64 %1, 1073741823                  ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 %i.lv
  store ptr %i.lw, ptr %5, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.lx, align 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i91.i

bb.br:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be
  %.0.i.sink.i.i.ph.i36 = phi ptr [ %i.lh, %bb.bi ], [ %i.lc, %bb.bh ], [ %i.lb, %bb.bg ], [ %i.la, %bb.be ]
  %i.ly = and i64 %1, 1073741823                  ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph.i36, i64 %i.ly
  store ptr %i.lz, ptr %5, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.ma, align 8
  %i.mb = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.mc = icmp ugt i32 %i.mb, 150994943
  br i1 %i.mc, label %bb.bs, label %bb.bt, !prof !100

bb.bs:                                            ; preds = %bb.br
  %i.md = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !101
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i91.i

bb.bt:                                            ; preds = %bb.br
  %.mask.i.i.i.i.i.i.i.i.i.i90.i = and i32 %i.mb, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i90.i, label %bb.bw [
    i32 134217728, label %bb.bu
    i32 67108864, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i91.i

bb.bv:                                            ; preds = %bb.bt
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i91.i

bb.bw:                                            ; preds = %bb.bt
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i93.i = load i64, ptr %i.mh, align 8, !tbaa !12
  %i.mi = and i64 %.sroa.0.0.copyload.i.i.i2.i.i93.i, 281474976710655
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !101
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i91.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i91.i: ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.bq
  %i.mm = phi ptr [ %i.lx, %bb.bq ], [ %i.ma, %bb.bs ], [ %i.ma, %bb.bu ], [ %i.ma, %bb.bv ], [ %i.ma, %bb.bw ]
  %i.mn = phi i64 [ %i.lv, %bb.bq ], [ %i.ly, %bb.bs ], [ %i.ly, %bb.bu ], [ %i.ly, %bb.bv ], [ %i.ly, %bb.bw ]
  %.0.i.sink.i.i92.i = phi ptr [ %0, %bb.bq ], [ %i.me, %bb.bs ], [ %i.mf, %bb.bu ], [ %i.mg, %bb.bv ], [ %i.ml, %bb.bw ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i92.i, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.sroa.8.8.extract.shift.i
  br label %_ZNK6hermes2vm10StringView3endEv.exit.i12

bb.bx:                                            ; preds = %bb.bj
  %i.mq = and i64 %1, 1073741823                  ; 2 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.mq
  store ptr null, ptr %5, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.mr, ptr %i.ms, align 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i81.i

end_hunk_0
