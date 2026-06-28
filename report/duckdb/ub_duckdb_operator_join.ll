inline.NumInlined: 13952
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6duckdb11IEJoinUnion7NextRowILNS_11SortKeyTypeE9EEEbv:bb.a
_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv.exit68: ; preds = %_ZN6duckdb11IEJoinUnion7CompareINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S7_b.exit.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !1787 ; 2 uses
  %i.hf = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !68 ; 5 uses
  %i.hi = load ptr, ptr %i.v, align 8, !tbaa !1799
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !68
  %i.hl = icmp slt i64 %i.hk, 0
  br i1 %i.hl, label %bb.ag, label %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEdeEv.exit

bb.ag:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv.exit68
  %i.hm = lshr i64 %i.hh, 6
  %i.hn = and i64 %i.hh, 63
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = load ptr, ptr %i.ay, align 8, !tbaa !764
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hm ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !68
  %i.hs = or i64 %i.hr, %i.ho
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !68
  %i.ht = lshr i64 %i.hh, 10
  %i.hu = lshr i64 %i.hh, 16
  %i.hv = and i64 %i.ht, 63
  %i.hw = shl nuw i64 1, %i.hv
  %i.hx = load ptr, ptr %i.az, align 8, !tbaa !764
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hu ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !68
  %i.ia = or i64 %i.hz, %i.hw
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !68
  %.pre = load i64, ptr %i.hd, align 8, !tbaa !1787
  br label %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEdeEv.exit

_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEdeEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv.exit68, %bb.ag
  %i.ib = phi i64 [ %i.he, %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv.exit68 ], [ %.pre, %bb.ag ]
  %i.ic = add i64 %i.ib, 1                        ; 3 uses
  store i64 %i.ic, ptr %i.hd, align 8, !tbaa !1787
  %i.id = load i64, ptr %i.at, align 8, !tbaa !1771
  %i.ie = icmp ult i64 %i.ic, %i.id
  br i1 %i.ie, label %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv.exit25, label %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.thread

_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.thread: ; preds = %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i, %_ZN6duckdb11IEJoinUnion7CompareINS_7SortKeyILNS_11SortKeyTypeE9EEEEEbRKT_S7_b.exit, %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEdeEv.exit, %bb.ab, %.thread.i, %bb.ac, %_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv.exit.lr.ph
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.al, ptr %i.if, align 8, !tbaa !1796
  br label %.loopexit

.thread:                                          ; preds = %bb.b
  %i.ig = add nuw i64 %i.aj, 1                    ; 3 uses
  store i64 %i.ig, ptr %i.ac, align 8, !tbaa !1795
  %exitcond.not = icmp eq i64 %i.ig, %i.ae
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1810

.loopexit:                                        ; preds = %.thread, %bb.a, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.thread
  %i.ih = phi i1 [ true, %_ZN6duckdbltERKNS_7SortKeyILNS_11SortKeyTypeE9EEES4_.exit15.i.thread ], [ false, %bb.a ], [ false, %.thread ]
  ret i1 %i.ih
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb11IEJoinUnion17JoinComplexBlocksERNS_6vectorImLb0ESaImEEES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1798, !nonnull !21, !align !167
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(17) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i8 1, ptr %i.b, align 1, !tbaa !27
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.i = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(17) %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1161
  store i8 1, ptr %i.j, align 1, !tbaa !483
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = call noundef ptr @_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %i.m = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(17) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.a, align 1, !tbaa !27
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.n = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(17) %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1161
  store i8 1, ptr %i.o, align 1, !tbaa !483
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !184  ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp ult i64 %i.v, 2048
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = sub nuw nsw i64 2048, %i.v
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.x)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not72 = icmp eq i64 %i.u, 16384
  br i1 %.not72, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16384 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.y, ptr %i.p, align 8, !tbaa !184
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !184 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !186   ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 2048
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ah = sub nuw nsw i64 2048, %i.af
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ah)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit38

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %.not73 = icmp eq i64 %i.ae, 16384
  br i1 %.not73, label %_ZNSt6vectorImSaImEE6resizeEm.exit38, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16384 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.aa, %i.ai
  br i1 %.not.i.i36, label %_ZNSt6vectorImSaImEE6resizeEm.exit38, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i37

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i37:      ; preds = %bb.g
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !184
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit38

_ZNSt6vectorImSaImEE6resizeEm.exit38:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.elt32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.as, %_ZNSt6vectorImSaImEE6resizeEm.exit38
  %.025 = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit38 ], [ %.126, %bb.as ] ; 2 uses
  %i.ar = load i64, ptr %i.aj, align 8, !tbaa !1795
  %i.as = load i64, ptr %i.ak, align 8, !tbaa !1794
  %i.at = icmp ult i64 %i.ar, %i.as
  %.pre94 = load ptr, ptr %1, align 8             ; 2 uses
  br i1 %i.at, label %.preheader, label %split

.preheader:                                       ; preds = %bb.h
  %i.au = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.ao
  %.126 = phi i64 [ %i.gl, %bb.ao ], [ %.025, %.preheader ] ; 5 uses
  %i.av = load i64, ptr %i.am, align 8, !tbaa !1771 ; 3 uses
  %.promoted = load i64, ptr %i.al, align 8, !tbaa !1796
  %i.aw = load i64, ptr %i.ao, align 8            ; 5 uses
  %.val35 = load ptr, ptr %i.an, align 8          ; 11 uses
  %i.ax = add i64 %i.aw, 63
  %i.ay = lshr i64 %i.ax, 6
  %i.az = add nsw i64 %i.ay, -1                   ; 5 uses
  %.val = load ptr, ptr %i.ap, align 8            ; 11 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65, %bb.i
  %i.ba = phi i64 [ %.8.i40, %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65 ], [ %.promoted, %bb.i ] ; 5 uses
  %i.bb = icmp ult i64 %i.ba, %i.av
  br i1 %i.bb, label %bb.k, label %bb.an

bb.k:                                             ; preds = %bb.j
  %i.bc = lshr i64 %i.ba, 10                      ; 4 uses
  %.not.i = icmp ult i64 %i.bc, %i.aw
  br i1 %.not.i, label %bb.l, label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = lshr i64 %i.ba, 16                      ; 3 uses
  %i.be = and i64 %i.bc, 63
  %i.bf = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.bd
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !68
  %i.bi = shl nsw i64 -1, %i.be
  %i.bj = and i64 %i.bh, %i.bi                    ; 2 uses
  %.not53.i = icmp eq i64 %i.bj, 0
  br i1 %.not53.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bj, i1 true)
  %i.bl = and i64 %i.bc, 18014398509481920
  %i.bm = or disjoint i64 %i.bk, %i.bl
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit

bb.n:                                             ; preds = %bb.l
  %reass.sub.i = and i64 %i.bc, 18014398509481920
  %i.bn = add nuw nsw i64 %reass.sub.i, 64        ; 3 uses
  %i.bo = add nuw nsw i64 %i.bd, 9                ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.az
  br i1 %i.bp, label %.preheader20.i, label %.preheader.i

.preheader20.i:                                   ; preds = %bb.n, %.loopexit.i
  %i.bq = phi i64 [ %i.cp, %.loopexit.i ], [ %i.bo, %bb.n ] ; 3 uses
  %.01026.i = phi i64 [ %i.bq, %.loopexit.i ], [ %i.bf, %bb.n ] ; 9 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %.01026.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !68 ; 2 uses
  %.not56.i = icmp eq i64 %i.bs, 0
  br i1 %.not56.i, label %bb.o, label %bb.v

.preheader.i:                                     ; preds = %.loopexit.i, %bb.n
  %.010.lcssa.i = phi i64 [ %i.bf, %bb.n ], [ %i.bq, %.loopexit.i ] ; 3 uses
  %i.bt = icmp ult i64 %.010.lcssa.i, %i.az
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i

bb.o:                                             ; preds = %.preheader20.i
  %i.bu = add nuw i64 %.01026.i, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !68 ; 2 uses
  %.not56.1.i = icmp eq i64 %i.bw, 0
  br i1 %.not56.1.i, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.01026.i, 2                    ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %.not56.2.i = icmp eq i64 %i.bz, 0
  br i1 %.not56.2.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ca = add i64 %.01026.i, 3                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %.not56.3.i = icmp eq i64 %i.cc, 0
  br i1 %.not56.3.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cd = add i64 %.01026.i, 4                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !68 ; 2 uses
  %.not56.4.i = icmp eq i64 %i.cf, 0
  br i1 %.not56.4.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cg = add i64 %.01026.i, 5                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %.not56.5.i = icmp eq i64 %i.ci, 0
  br i1 %.not56.5.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cj = add i64 %.01026.i, 6                    ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !68 ; 2 uses
  %.not56.6.i = icmp eq i64 %i.cl, 0
  br i1 %.not56.6.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = add i64 %.01026.i, 7                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %.not56.7.i = icmp eq i64 %i.co, 0
  br i1 %.not56.7.i, label %.loopexit.i, label %bb.v

.loopexit.i:                                      ; preds = %bb.u
  %i.cp = add i64 %i.bq, 8                        ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.az
  br i1 %i.cq, label %.preheader20.i, label %.preheader.i, !llvm.loop !1811

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.preheader20.i
  %.lcssa34.i = phi i64 [ %.01026.i, %.preheader20.i ], [ %i.bu, %bb.o ], [ %i.bx, %bb.p ], [ %i.ca, %bb.q ], [ %i.cd, %bb.r ], [ %i.cg, %bb.s ], [ %i.cj, %bb.t ], [ %i.cm, %bb.u ]
  %.lcssa32.i = phi i64 [ %i.bs, %.preheader20.i ], [ %i.bw, %bb.o ], [ %i.bz, %bb.p ], [ %i.cc, %bb.q ], [ %i.cf, %bb.r ], [ %i.ci, %bb.s ], [ %i.cl, %bb.t ], [ %i.co, %bb.u ]
  %i.cr = sub i64 %.lcssa34.i, %i.bf
  %i.cs = shl i64 %i.cr, 6
  %i.ct = add i64 %i.cs, %i.bn
  %i.cu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa32.i, i1 true)
  %i.cv = or disjoint i64 %i.ct, %i.cu
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.x
  %.11127.i = phi i64 [ %i.dd, %bb.x ], [ %.010.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %.11127.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  %.not55.i = icmp eq i64 %i.cx, 0
  br i1 %.not55.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.cy = sub i64 %.11127.i, %i.bf
  %i.cz = shl i64 %i.cy, 6
  %i.da = add i64 %i.cz, %i.bn
  %i.db = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cx, i1 true)
  %i.dc = or disjoint i64 %i.da, %i.db
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit

bb.x:                                             ; preds = %.lr.ph.i
  %i.dd = add i64 %.11127.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dd, %i.az
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1812

._crit_edge.i:                                    ; preds = %bb.x, %.preheader.i
  %.111.lcssa.i = phi i64 [ %.010.lcssa.i, %.preheader.i ], [ %i.az, %bb.x ] ; 2 uses
  %i.de = sub i64 %.111.lcssa.i, %i.bf
  %i.df = shl i64 %i.de, 6
  %i.dg = add i64 %i.df, %i.bn                    ; 2 uses
  %.not54.i = icmp ult i64 %i.dg, %i.aw
  br i1 %.not54.i, label %bb.y, label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit

bb.y:                                             ; preds = %._crit_edge.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %.111.lcssa.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !68
  %i.dj = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.di, i1 false)
  %i.dk = add i64 %i.dj, %i.dg
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit

_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit: ; preds = %bb.k, %bb.m, %bb.v, %bb.w, %._crit_edge.i, %bb.y
  %.8.i = phi i64 [ %i.aw, %bb.k ], [ %i.bm, %bb.m ], [ %i.cv, %bb.v ], [ %i.dc, %bb.w ], [ %i.dk, %bb.y ], [ %i.aw, %._crit_edge.i ]
  %i.dl = shl i64 %.8.i, 10                       ; 2 uses
  %i.dm = add i64 %i.dl, 1024
  %i.dn = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.dm) ; 6 uses
  %i.do = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %i.dl) ; 6 uses
  store i64 %i.do, ptr %i.al, align 8, !tbaa !1796
  %.not.i39 = icmp ult i64 %i.do, %i.dn
  br i1 %.not.i39, label %bb.z, label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65

bb.z:                                             ; preds = %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit
  %i.dp = lshr i64 %i.do, 6                       ; 3 uses
  %i.dq = and i64 %i.do, 63
  %i.dr = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.dp
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !68
  %i.du = shl nsw i64 -1, %i.dq
  %i.dv = and i64 %i.dt, %i.du                    ; 2 uses
  %.not53.i41 = icmp eq i64 %i.dv, 0
  br i1 %.not53.i41, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dv, i1 true)
  %i.dx = and i64 %i.do, -64
  %i.dy = or disjoint i64 %i.dw, %i.dx
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65

bb.ab:                                            ; preds = %bb.z
  %reass.sub.i42 = and i64 %i.do, -64
  %i.dz = add i64 %reass.sub.i42, 64              ; 3 uses
  %i.ea = add i64 %i.dn, 63
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = add nsw i64 %i.eb, -1                   ; 5 uses
  %i.ed = add nuw nsw i64 %i.dp, 9                ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  br i1 %i.ee, label %.preheader20.i52, label %.preheader.i43

.preheader20.i52:                                 ; preds = %bb.ab, %.loopexit.i64
  %i.ef = phi i64 [ %i.fe, %.loopexit.i64 ], [ %i.ed, %bb.ab ] ; 3 uses
  %.01026.i53 = phi i64 [ %i.ef, %.loopexit.i64 ], [ %i.dr, %bb.ab ] ; 9 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.01026.i53
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !68 ; 2 uses
  %.not56.i54 = icmp eq i64 %i.eh, 0
  br i1 %.not56.i54, label %bb.ac, label %bb.aj

.preheader.i43:                                   ; preds = %.loopexit.i64, %bb.ab
  %.010.lcssa.i44 = phi i64 [ %i.dr, %bb.ab ], [ %i.ef, %.loopexit.i64 ] ; 3 uses
  %i.ei = icmp ult i64 %.010.lcssa.i44, %i.ec
  br i1 %i.ei, label %.lr.ph.i48, label %._crit_edge.i45

bb.ac:                                            ; preds = %.preheader20.i52
  %i.ej = add nuw i64 %.01026.i53, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !68 ; 2 uses
  %.not56.1.i57 = icmp eq i64 %i.el, 0
  br i1 %.not56.1.i57, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.em = add i64 %.01026.i53, 2                  ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !68 ; 2 uses
  %.not56.2.i58 = icmp eq i64 %i.eo, 0
  br i1 %.not56.2.i58, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ep = add i64 %.01026.i53, 3                  ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !68 ; 2 uses
  %.not56.3.i59 = icmp eq i64 %i.er, 0
  br i1 %.not56.3.i59, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.es = add i64 %.01026.i53, 4                  ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !68 ; 2 uses
  %.not56.4.i60 = icmp eq i64 %i.eu, 0
  br i1 %.not56.4.i60, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ev = add i64 %.01026.i53, 5                  ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !68 ; 2 uses
  %.not56.5.i61 = icmp eq i64 %i.ex, 0
  br i1 %.not56.5.i61, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ey = add i64 %.01026.i53, 6                  ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !68 ; 2 uses
  %.not56.6.i62 = icmp eq i64 %i.fa, 0
  br i1 %.not56.6.i62, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fb = add i64 %.01026.i53, 7                  ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !68 ; 2 uses
  %.not56.7.i63 = icmp eq i64 %i.fd, 0
  br i1 %.not56.7.i63, label %.loopexit.i64, label %bb.aj

.loopexit.i64:                                    ; preds = %bb.ai
  %i.fe = add i64 %i.ef, 8                        ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.ec
  br i1 %i.ff, label %.preheader20.i52, label %.preheader.i43, !llvm.loop !1811

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.preheader20.i52
  %.lcssa34.i55 = phi i64 [ %.01026.i53, %.preheader20.i52 ], [ %i.ej, %bb.ac ], [ %i.em, %bb.ad ], [ %i.ep, %bb.ae ], [ %i.es, %bb.af ], [ %i.ev, %bb.ag ], [ %i.ey, %bb.ah ], [ %i.fb, %bb.ai ]
  %.lcssa32.i56 = phi i64 [ %i.eh, %.preheader20.i52 ], [ %i.el, %bb.ac ], [ %i.eo, %bb.ad ], [ %i.er, %bb.ae ], [ %i.eu, %bb.af ], [ %i.ex, %bb.ag ], [ %i.fa, %bb.ah ], [ %i.fd, %bb.ai ]
  %i.fg = sub i64 %.lcssa34.i55, %i.dr
  %i.fh = shl i64 %i.fg, 6
  %i.fi = add i64 %i.fh, %i.dz
  %i.fj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa32.i56, i1 true)
  %i.fk = or disjoint i64 %i.fi, %i.fj
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65

.lr.ph.i48:                                       ; preds = %.preheader.i43, %bb.al
  %.11127.i49 = phi i64 [ %i.fs, %bb.al ], [ %.010.lcssa.i44, %.preheader.i43 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.11127.i49
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !68 ; 2 uses
  %.not55.i50 = icmp eq i64 %i.fm, 0
  br i1 %.not55.i50, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i48
  %i.fn = sub i64 %.11127.i49, %i.dr
  %i.fo = shl i64 %i.fn, 6
  %i.fp = add i64 %i.fo, %i.dz
  %i.fq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fm, i1 true)
  %i.fr = or disjoint i64 %i.fp, %i.fq
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65

bb.al:                                            ; preds = %.lr.ph.i48
  %i.fs = add i64 %.11127.i49, 1                  ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.fs, %i.ec
  br i1 %exitcond.not.i51, label %._crit_edge.i45, label %.lr.ph.i48, !llvm.loop !1812

._crit_edge.i45:                                  ; preds = %bb.al, %.preheader.i43
  %.111.lcssa.i46 = phi i64 [ %.010.lcssa.i44, %.preheader.i43 ], [ %i.ec, %bb.al ] ; 2 uses
  %i.ft = sub i64 %.111.lcssa.i46, %i.dr
  %i.fu = shl i64 %i.ft, 6
  %i.fv = add i64 %i.fu, %i.dz                    ; 2 uses
  %.not54.i47 = icmp ult i64 %i.fv, %i.dn
  br i1 %.not54.i47, label %bb.am, label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65

bb.am:                                            ; preds = %._crit_edge.i45
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.111.lcssa.i46
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !68
  %i.fy = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fx, i1 false)
  %i.fz = add i64 %i.fy, %i.fv
  br label %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65

_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65: ; preds = %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit, %bb.aa, %bb.aj, %bb.ak, %._crit_edge.i45, %bb.am
  %.8.i40 = phi i64 [ %i.dn, %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit ], [ %i.dy, %bb.aa ], [ %i.fk, %bb.aj ], [ %i.fr, %bb.ak ], [ %i.fz, %bb.am ], [ %i.dn, %._crit_edge.i45 ] ; 4 uses
  store i64 %.8.i40, ptr %i.al, align 8, !tbaa !1796
  %i.ga = icmp ult i64 %.8.i40, %i.dn
  br i1 %i.ga, label %bb.an, label %bb.j

bb.an:                                            ; preds = %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65, %bb.j
  %i.gb = phi i64 [ %.8.i40, %_ZN6duckdbL9NextValidERKNS_12ValidityMaskEmm.exit65 ], [ %i.ba, %bb.j ] ; 3 uses
  %.not = icmp ult i64 %i.gb, %i.av
  br i1 %.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !1799
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !68
  %i.gf = add nuw i64 %i.gb, 1
  store i64 %i.gf, ptr %i.al, align 8, !tbaa !1796
  %i.gg = load i64, ptr %i.aq, align 8, !tbaa !1800
  %i.gh = add nsw i64 %i.gg, -1
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.pre94, i64 %.126
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !68
  %i.gj = xor i64 %i.ge, -1
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.126
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !68
  %i.gl = add i64 %.126, 1                        ; 2 uses
  %.not31 = icmp eq i64 %i.gl, 2048
  br i1 %.not31, label %_ZNSt6vectorImSaImEE6resizeEm.exit71, label %bb.i, !llvm.loop !1813

bb.ap:                                            ; preds = %bb.an
  %i.gm = load i64, ptr %i.aj, align 8, !tbaa !1795
  %i.gn = add i64 %i.gm, 1
  store i64 %i.gn, ptr %i.aj, align 8, !tbaa !1795
  %.unpack = load i64, ptr %0, align 8, !tbaa !1797 ; 3 uses
  %.unpack33 = load i64, ptr %.elt32, align 8, !tbaa !1797
  %i.go = getelementptr inbounds i8, ptr %0, i64 %.unpack33 ; 2 uses
  %i.gp = and i64 %.unpack, 1
  %.not34 = icmp eq i64 %i.gp, 0
  br i1 %.not34, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !63
  %i.gr = getelementptr i8, ptr %i.gq, i64 %.unpack
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load ptr, ptr %i.gs, align 8, !nosanitize !21
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gu = inttoptr i64 %.unpack to ptr
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gv = phi ptr [ %i.gt, %bb.aq ], [ %i.gu, %bb.ar ]
  %i.gw = call noundef zeroext i1 %i.gv(ptr noundef nonnull align 8 dereferenceable(200) %i.go)
  br i1 %i.gw, label %bb.h, label %._crit_edge, !llvm.loop !1814

._crit_edge:                                      ; preds = %bb.as
  %.pre = load ptr, ptr %1, align 8, !tbaa !186
  br label %split, !llvm.loop !1814

split:                                            ; preds = %bb.h, %._crit_edge
  %i.gx = phi ptr [ %.pre, %._crit_edge ], [ %.pre94, %bb.h ] ; 2 uses
  %.227 = phi i64 [ %.126, %._crit_edge ], [ %.025, %bb.h ] ; 12 uses
  %i.gy = load ptr, ptr %i.p, align 8, !tbaa !184 ; 2 uses
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 3                 ; 3 uses
  %i.hd = icmp ugt i64 %.227, %i.hc
  br i1 %i.hd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %split
  %i.he = sub nuw i64 %.227, %i.hc
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.he)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit68

bb.au:                                            ; preds = %split
  %i.hf = icmp ult i64 %.227, %i.hc
  br i1 %i.hf, label %bb.av, label %_ZNSt6vectorImSaImEE6resizeEm.exit68

bb.av:                                            ; preds = %bb.au
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %.227 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.gy, %i.hg
  br i1 %.not.i.i66, label %_ZNSt6vectorImSaImEE6resizeEm.exit68, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i67

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i67:      ; preds = %bb.av
  store ptr %i.hg, ptr %i.p, align 8, !tbaa !184
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit68

_ZNSt6vectorImSaImEE6resizeEm.exit68:             ; preds = %bb.at, %bb.au, %bb.av, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i67
  %i.hh = load ptr, ptr %i.z, align 8, !tbaa !184 ; 2 uses
  %i.hi = load ptr, ptr %2, align 8, !tbaa !186   ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 3                 ; 3 uses
  %i.hn = icmp ugt i64 %.227, %i.hm
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit68
  %i.ho = sub nuw i64 %.227, %i.hm
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ho)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit71

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit68
  %i.hp = icmp ult i64 %.227, %i.hm
  br i1 %i.hp, label %bb.ay, label %_ZNSt6vectorImSaImEE6resizeEm.exit71

bb.ay:                                            ; preds = %bb.ax
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.227 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.hh, %i.hq
  br i1 %.not.i.i69, label %_ZNSt6vectorImSaImEE6resizeEm.exit71, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i70

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i70:      ; preds = %bb.ay
  store ptr %i.hq, ptr %i.z, align 8, !tbaa !184
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit71

_ZNSt6vectorImSaImEE6resizeEm.exit71:             ; preds = %bb.ao, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i70, %bb.ay, %bb.ax, %bb.aw
  %.3 = phi i64 [ %.227, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i70 ], [ %.227, %bb.aw ], [ %.227, %bb.ax ], [ %.227, %bb.ay ], [ 2048, %bb.ao ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1790   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_11IEJoinUnion13UnionIteratorESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

end_hunk_0
