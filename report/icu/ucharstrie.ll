Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucharstrie?download=true
inline.NumInlined: 39
inline.NumDeleted: 12
begin_hunk_0_@_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi:bb.a
  %.063 = phi i32 [ %i.u, %bb.i ], [ %i.cb, %bb.al ] ; 8 uses
  %i.v = icmp slt i32 %.086, 0
  br i1 %i.v, label %.preheader, label %.preheader130

.preheader130:                                    ; preds = %bb.j
  %i.w = icmp eq i32 %.086, 0
  br i1 %i.w, label %.preheader130._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader130
  %smin = tail call i32 @llvm.smin.i32(i32 %.063, i32 -1)
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j
  %i.x = load i16, ptr %.077, align 2, !tbaa !15  ; 3 uses
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %.preheader._crit_edge, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %.preheader
  %smin244 = tail call i32 @llvm.smin.i32(i32 %.063, i32 -1) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.077, i64 2 ; 2 uses
  %i.aa = icmp slt i32 %.063, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph388

.preheader._crit_edge:                            ; preds = %.preheader, %bb.n
  %.169.lcssa = phi ptr [ %i.am, %bb.n ], [ %.068, %.preheader ] ; 2 uses
  %.164.lcssa = phi i32 [ %i.an, %bb.n ], [ %.063, %.preheader ] ; 2 uses
  store i32 %.164.lcssa, ptr %i.t, align 8, !tbaa !13
  store ptr %.169.lcssa, ptr %i.q, align 8, !tbaa !12
  %i.ab = icmp slt i32 %.164.lcssa, 0
  br i1 %i.ab, label %bb.k, label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.k:                                             ; preds = %.preheader._crit_edge
  %i.ac = load i16, ptr %.169.lcssa, align 2, !tbaa !15 ; 2 uses
  %i.ad = icmp ugt i16 %i.ac, 63
  br i1 %i.ad, label %bb.l, label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = lshr i16 %i.ac, 15
  %i.af = xor i16 %i.ae, 3
  %i.ag = zext nneg i16 %i.af to i32
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

.lr.ph175:                                        ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.ai = icmp slt i32 %.164174386, 1
  br i1 %i.ai, label %.loopexit, label %.lr.ph388, !llvm.loop !24

.lr.ph388:                                        ; preds = %.lr.ph175.preheader, %.lr.ph175
  %i.aj = phi ptr [ %i.ah, %.lr.ph175 ], [ %i.z, %.lr.ph175.preheader ] ; 2 uses
  %.169173387 = phi ptr [ %i.am, %.lr.ph175 ], [ %.068, %.lr.ph175.preheader ] ; 2 uses
  %.164174386 = phi i32 [ %i.an, %.lr.ph175 ], [ %.063, %.lr.ph175.preheader ] ; 2 uses
  %i.ak = phi i16 [ %i.ao, %.lr.ph175 ], [ %i.x, %.lr.ph175.preheader ]
  %i.al = load i16, ptr %.169173387, align 2, !tbaa !15
  %.not111 = icmp eq i16 %i.ak, %i.al
  br i1 %.not111, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph388
  store ptr null, ptr %i.q, align 8, !tbaa !12
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.n:                                             ; preds = %.lr.ph388
  %i.am = getelementptr inbounds nuw i8, ptr %.169173387, i64 2 ; 3 uses
  %i.an = add nsw i32 %.164174386, -1             ; 2 uses
  %i.ao = load i16, ptr %i.aj, align 2, !tbaa !15 ; 3 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %.preheader._crit_edge, label %.lr.ph175, !llvm.loop !24

.preheader130._crit_edge.loopexit:                ; preds = %bb.s
  %scevgep.le = getelementptr i8, ptr %.068, i64 2
  %i.aq = add nsw i32 %.086, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 1
  %scevgep243.le = getelementptr i8, ptr %scevgep.le, i64 %i.as
  %i.at = sub i32 %.063, %.086
  br label %.preheader130._crit_edge

.preheader130._crit_edge:                         ; preds = %.preheader130, %.preheader130._crit_edge.loopexit
  %.270.lcssa = phi ptr [ %scevgep243.le, %.preheader130._crit_edge.loopexit ], [ %.068, %.preheader130 ] ; 2 uses
  %.265.lcssa = phi i32 [ %i.at, %.preheader130._crit_edge.loopexit ], [ %.063, %.preheader130 ] ; 2 uses
  store i32 %.265.lcssa, ptr %i.t, align 8, !tbaa !13
  store ptr %.270.lcssa, ptr %i.q, align 8, !tbaa !12
  %i.au = icmp slt i32 %.265.lcssa, 0
  br i1 %i.au, label %bb.o, label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.o:                                             ; preds = %.preheader130._crit_edge
  %i.av = load i16, ptr %.270.lcssa, align 2, !tbaa !15 ; 2 uses
  %i.aw = icmp ugt i16 %i.av, 63
  br i1 %i.aw, label %bb.p, label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.p:                                             ; preds = %bb.o
  %i.ax = lshr i16 %i.av, 15
  %i.ay = xor i16 %i.ax, 3
  %i.az = zext nneg i16 %i.ay to i32
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.265169 = phi i32 [ %i.bg, %bb.s ], [ %.063, %.lr.ph.preheader ] ; 2 uses
  %.270168 = phi ptr [ %i.bf, %bb.s ], [ %.068, %.lr.ph.preheader ] ; 3 uses
  %.279167 = phi ptr [ %i.ba, %bb.s ], [ %.077, %.lr.ph.preheader ] ; 2 uses
  %.187166 = phi i32 [ %i.bc, %bb.s ], [ %.086, %.lr.ph.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.279167, i64 2 ; 2 uses
  %i.bb = load i16, ptr %.279167, align 2, !tbaa !15 ; 2 uses
  %i.bc = add nsw i32 %.187166, -1                ; 3 uses
  %i.bd = icmp slt i32 %.265169, 0
  br i1 %i.bd, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.be = load i16, ptr %.270168, align 2, !tbaa !15
  %.not = icmp eq i16 %i.bb, %i.be
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.q, align 8, !tbaa !12
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.s:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.270168, i64 2
  %i.bg = add nsw i32 %.265169, -1
  %i.bh = icmp eq i32 %i.bc, 0
  br i1 %i.bh, label %.preheader130._crit_edge.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph175, %.lr.ph175.preheader
  %storemerge = phi i32 [ %smin244, %.lr.ph175.preheader ], [ %smin244, %.lr.ph175 ], [ %smin, %.lr.ph ]
  %.288 = phi i32 [ %.086, %.lr.ph175.preheader ], [ %.086, %.lr.ph175 ], [ %i.bc, %.lr.ph ]
  %.380 = phi ptr [ %i.z, %.lr.ph175.preheader ], [ %i.ah, %.lr.ph175 ], [ %i.ba, %.lr.ph ]
  %.371 = phi ptr [ %.068, %.lr.ph175.preheader ], [ %i.am, %.lr.ph175 ], [ %.270168, %.lr.ph ]
  %.060.in = phi i16 [ %i.x, %.lr.ph175.preheader ], [ %i.ao, %.lr.ph175 ], [ %i.bb, %.lr.ph ]
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !13
  br label %.outer

.outer:                                           ; preds = %bb.ab, %.loopexit
  %.389.ph = phi i32 [ %.490, %bb.ab ], [ %.288, %.loopexit ] ; 5 uses
  %.481.ph = phi ptr [ %.582, %bb.ab ], [ %.380, %.loopexit ] ; 4 uses
  %.pn = phi ptr [ %i.bt, %bb.ab ], [ %.371, %.loopexit ] ; 2 uses
  %.161.ph.in = phi i16 [ %.262.in, %bb.ab ], [ %.060.in, %.loopexit ] ; 2 uses
  %.0.ph.in = load i16, ptr %.pn, align 2, !tbaa !15
  %.0.ph = zext i16 %.0.ph.in to i32              ; 2 uses
  %.161.ph = zext i16 %.161.ph.in to i32
  %.472.ph = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %i.bi = and i32 %.0.ph, 63
  br label %bb.t

bb.t:                                             ; preds = %.outer, %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit
  %.472 = phi ptr [ %.0.i114, %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit ], [ %.472.ph, %.outer ] ; 6 uses
  %.0 = phi i32 [ %i.bi, %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit ], [ %.0.ph, %.outer ] ; 7 uses
  %i.bj = icmp samesign ult i32 %.0, 48
  br i1 %i.bj, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bk = tail call noundef i32 @_ZN6icu_7810UCharsTrie10branchNextEPKDsii(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %.472, i32 noundef %.0, i32 noundef %.161.ph) ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZNK6icu_7810UCharsTrie7currentEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = icmp slt i32 %.389.ph, 0
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = load i16, ptr %.481.ph, align 2, !tbaa !15 ; 2 uses
  %i.bo = icmp eq i16 %i.bn, 0
  br i1 %i.bo, label %_ZNK6icu_7810UCharsTrie7currentEv.exit, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bp = icmp eq i32 %.389.ph, 0
  br i1 %i.bp, label %_ZNK6icu_7810UCharsTrie7currentEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load i16, ptr %.481.ph, align 2, !tbaa !15
  %i.br = add nsw i32 %.389.ph, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.490 = phi i32 [ %.389.ph, %bb.w ], [ %i.br, %bb.y ]
  %.262.in = phi i16 [ %i.bn, %bb.w ], [ %i.bq, %bb.y ]
  %i.bs = icmp eq i32 %i.bk, 2
  br i1 %i.bs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.q, align 8, !tbaa !12
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.ab:                                            ; preds = %bb.z
  %.582 = getelementptr inbounds nuw i8, ptr %.481.ph, i64 2
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !12
  br label %.outer, !llvm.loop !26

bb.ac:                                            ; preds = %bb.t
  %i.bu = icmp samesign ult i32 %.0, 64
  br i1 %i.bu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load i16, ptr %.472, align 2, !tbaa !15
  %.not113 = icmp eq i16 %.161.ph.in, %i.bv
  br i1 %.not113, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr null, ptr %i.q, align 8, !tbaa !12
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.af:                                            ; preds = %bb.ac
  %3 = and i32 %.0, 32768
  %.not112 = icmp eq i32 %3, 0
  br i1 %.not112, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %i.q, align 8, !tbaa !12
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.ah:                                            ; preds = %bb.af
  %i.bw = icmp samesign ugt i32 %.0, 16447
  br i1 %i.bw, label %bb.ai, label %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bx = icmp samesign ult i32 %.0, 32704
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = getelementptr inbounds nuw i8, ptr %.472, i64 2
  br label %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit

bb.ak:                                            ; preds = %bb.ai
  %i.bz = getelementptr inbounds nuw i8, ptr %.472, i64 4
  br label %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit

_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit: ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0.i114 = phi ptr [ %i.by, %bb.aj ], [ %i.bz, %bb.ak ], [ %.472, %bb.ah ]
  br label %bb.t, !llvm.loop !26

bb.al:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %.472, i64 2
  %i.cb = add nsw i32 %.0, -49
  br label %bb.j, !llvm.loop !27

_ZNK6icu_7810UCharsTrie7currentEv.exit:           ; preds = %bb.x, %bb.u, %bb.w, %bb.aa, %bb.ag, %bb.ae, %bb.o, %.preheader130._crit_edge, %bb.k, %.preheader._crit_edge, %bb.l, %bb.m, %bb.p, %bb.r, %bb.g, %bb.f, %bb.e, %bb.d, %bb.h
  %.7102 = phi i32 [ 1, %bb.e ], [ 0, %bb.h ], [ 0, %bb.d ], [ %i.p, %bb.g ], [ 1, %bb.f ], [ 0, %bb.ag ], [ 0, %bb.ae ], [ 0, %bb.r ], [ 1, %bb.o ], [ %i.az, %bb.p ], [ 1, %bb.k ], [ %i.ag, %bb.l ], [ 1, %.preheader._crit_edge ], [ 0, %bb.m ], [ 1, %.preheader130._crit_edge ], [ 0, %bb.aa ], [ %i.bk, %bb.w ], [ 0, %bb.u ], [ %i.bk, %bb.x ]
  ret i32 %.7102
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6icu_7810UCharsTrie25findUniqueValueFromBranchEPKDsiaRi(ptr noundef %0, i32 noundef %1, i8 noundef signext %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 5
  br i1 %i.a, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit
  %.03459 = phi i32 [ %i.aa, %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit ], [ %1, %bb.a ] ; 2 uses
  %.03658 = phi ptr [ %.0.i42, %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit ], [ %0, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.03658, i64 2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.03658, i64 4 ; 4 uses
  %i.d = load i16, ptr %i.b, align 2, !tbaa !15   ; 3 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp ugt i16 %i.d, -1025
  br i1 %i.f, label %bb.b, label %_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i16 %i.d, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.c, align 2, !tbaa !15
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %.03658, i64 6
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15
  %i.m = zext i16 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.03658, i64 8
  br label %_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit

bb.d:                                             ; preds = %bb.b
  %i.p = shl nuw i32 %i.e, 16
  %i.q = add nsw i32 %i.p, 67108864
  %i.r = getelementptr inbounds nuw i8, ptr %.03658, i64 6
  %i.s = load i16, ptr %i.c, align 2, !tbaa !15
  %i.t = zext i16 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t
  br label %_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit

_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit:    ; preds = %.lr.ph, %bb.c, %bb.d
  %.09.i = phi ptr [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.c, %.lr.ph ]
  %.0.i = phi i32 [ %i.n, %bb.c ], [ %i.u, %bb.d ], [ %i.e, %.lr.ph ]
  %i.v = sext i32 %.0.i to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %.09.i, i64 %i.v
  %i.x = lshr i32 %.03459, 1                      ; 2 uses
  %i.y = tail call noundef ptr @_ZN6icu_7810UCharsTrie25findUniqueValueFromBranchEPKDsiaRi(ptr noundef nonnull %i.w, i32 noundef %i.x, i8 noundef signext %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread50, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit
  %i.aa = sub nuw nsw i32 %.03459, %i.x           ; 3 uses
  %i.ab = load i16, ptr %i.b, align 2, !tbaa !15  ; 2 uses
  %i.ac = icmp ugt i16 %i.ab, -1025
  br i1 %i.ac, label %bb.f, label %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i16 %i.ab, -1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.03658, i64 8
  br label %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.03658, i64 6
  br label %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit

_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit:       ; preds = %bb.e, %bb.g, %bb.h
  %.0.i42 = phi ptr [ %i.ae, %bb.g ], [ %i.af, %bb.h ], [ %i.c, %bb.e ] ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.aa, 5
  br i1 %i.ag, label %.lr.ph, label %.preheader.preheader, !llvm.loop !30

.preheader.preheader:                             ; preds = %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit, %bb.a
  %.137.ph = phi ptr [ %0, %bb.a ], [ %.0.i42, %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit ]
  %.135.ph = phi i32 [ %1, %bb.a ], [ %i.aa, %_ZN6icu_7810UCharsTrie9skipDeltaEPKDs.exit ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %.137 = phi ptr [ %.0.i44, %bb.p ], [ %.137.ph, %.preheader.preheader ] ; 5 uses
  %.135 = phi i32 [ %i.bf, %bb.p ], [ %.135.ph, %.preheader.preheader ] ; 2 uses
  %.031 = phi i8 [ %.132, %bb.p ], [ %2, %.preheader.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.137, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.137, i64 4 ; 3 uses
  %i.aj = load i16, ptr %i.ah, align 2, !tbaa !15 ; 2 uses
  %i.ak = and i16 %i.aj, 32767                    ; 3 uses
  %i.al = zext nneg i16 %i.ak to i32              ; 2 uses
  %i.am = icmp samesign ult i16 %i.ak, 16384
  br i1 %i.am, label %_ZN6icu_7810UCharsTrie9skipValueEPKDsi.exit, label %bb.i

bb.i:                                             ; preds = %.preheader
  %.not53 = icmp eq i16 %i.ak, 32767
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = shl nuw nsw i32 %i.al, 16
  %i.ao = add nsw i32 %i.an, -1073741824
  %i.ap = load i16, ptr %i.ai, align 2, !tbaa !15
  %i.aq = zext i16 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.137, i64 6
  br label %_ZN6icu_7810UCharsTrie9skipValueEPKDsi.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load i16, ptr %i.ai, align 2, !tbaa !15
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw i32 %i.au, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.137, i64 6
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !15
  %i.ay = zext i16 %i.ax to i32
  %i.az = or disjoint i32 %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.137, i64 8
  br label %_ZN6icu_7810UCharsTrie9skipValueEPKDsi.exit

_ZN6icu_7810UCharsTrie9skipValueEPKDsi.exit:      ; preds = %.preheader, %bb.j, %bb.k
  %.0.i4346 = phi i32 [ %i.ar, %bb.j ], [ %i.az, %bb.k ], [ %i.al, %.preheader ] ; 3 uses
  %.0.i44 = phi ptr [ %i.as, %bb.j ], [ %i.ba, %bb.k ], [ %i.ai, %.preheader ] ; 3 uses
  %.not = icmp sgt i16 %i.aj, -1
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7810UCharsTrie9skipValueEPKDsi.exit
  %.not40 = icmp eq i8 %.031, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %3, align 4, !tbaa !17
  %.not41 = icmp eq i32 %.0.i4346, %i.bb
  br i1 %.not41, label %bb.p, label %.thread50

bb.n:                                             ; preds = %bb.l
  store i32 %.0.i4346, ptr %3, align 4, !tbaa !17
  br label %bb.p

bb.o:                                             ; preds = %_ZN6icu_7810UCharsTrie9skipValueEPKDsi.exit
  %i.bc = sext i32 %.0.i4346 to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %.0.i44, i64 %i.bc
  %i.be = tail call noundef signext i8 @_ZN6icu_7810UCharsTrie15findUniqueValueEPKDsaRi(ptr noundef nonnull %i.bd, i8 noundef signext %.031, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not39 = icmp eq i8 %i.be, 0
  br i1 %.not39, label %.thread50, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.132 = phi i8 [ %.031, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ]
  %i.bf = add nsw i32 %.135, -1
  %i.bg = icmp sgt i32 %.135, 2
  br i1 %i.bg, label %.preheader, label %bb.q, !llvm.loop !31

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i44, i64 2
  br label %.thread50

.thread50:                                        ; preds = %_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit, %bb.o, %bb.m, %bb.q
  %.2 = phi ptr [ null, %bb.o ], [ %i.bh, %bb.q ], [ null, %bb.m ], [ null, %_ZN6icu_7810UCharsTrie11jumpByDeltaEPKDs.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7810UCharsTrie15findUniqueValueEPKDsaRi(ptr noundef %0, i8 noundef signext %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %0, align 2, !tbaa !15
  %i.c = zext i16 %i.b to i32
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.040.ph = phi ptr [ %i.a, %bb.a ], [ %.040.ph.be, %.outer.backedge ]
  %.036.ph = phi i8 [ %1, %bb.a ], [ %.036.ph.be, %.outer.backedge ] ; 3 uses
  %.031.ph = phi i32 [ %i.c, %bb.a ], [ %.031.ph.be, %.outer.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.h
  %.040 = phi ptr [ %i.s, %bb.h ], [ %.040.ph, %.outer ] ; 13 uses
  %.031 = phi i32 [ %i.u, %bb.h ], [ %.031.ph, %.outer ] ; 14 uses
  %i.d = icmp samesign ult i32 %.031, 48
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %.031, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.040, i64 2
  %i.g = load i16, ptr %.040, align 2, !tbaa !15
  %i.h = zext i16 %i.g to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.141 = phi ptr [ %i.f, %bb.d ], [ %.040, %bb.c ]
  %.1 = phi i32 [ %i.h, %bb.d ], [ %.031, %bb.c ]
  %i.i = add nuw nsw i32 %.1, 1
  %i.j = tail call noundef ptr @_ZN6icu_7810UCharsTrie25findUniqueValueFromBranchEPKDsiaRi(ptr noundef %.141, i32 noundef %i.i, i8 noundef signext %.036.ph, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.m = load i16, ptr %i.j, align 2, !tbaa !15
  %i.n = zext i16 %i.m to i32
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.f, %bb.z
  %.040.ph.be = phi ptr [ %.0.i48, %bb.z ], [ %i.l, %bb.f ]
  %.036.ph.be = phi i8 [ %.137, %bb.z ], [ 1, %bb.f ]
  %.031.ph.be = phi i32 [ %i.bf, %bb.z ], [ %i.n, %bb.f ]
  br label %.outer, !llvm.loop !32

bb.g:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %.031, 64
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %.031 to i64
  %i.q = getelementptr [2 x i8], ptr %.040, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -94
  %i.s = getelementptr i8, ptr %i.q, i64 -92
  %i.t = load i16, ptr %i.r, align 2, !tbaa !15
  %i.u = zext i16 %i.t to i32
  br label %bb.b, !llvm.loop !32

bb.i:                                             ; preds = %bb.g
  %3 = and i32 %.031, 32768
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.031, 32767                     ; 4 uses
  %i.w = icmp samesign ult i32 %i.v, 16384
  br i1 %i.w, label %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not54 = icmp eq i32 %i.v, 32767
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = shl nuw nsw i32 %i.v, 16
  %i.y = add nsw i32 %i.x, -1073741824
  %i.z = load i16, ptr %.040, align 2, !tbaa !15
  %i.aa = zext i16 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa
  br label %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = load i16, ptr %.040, align 2, !tbaa !15
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 16
  %i.af = getelementptr inbounds nuw i8, ptr %.040, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !15
  %i.ah = zext i16 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  br label %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit

bb.n:                                             ; preds = %bb.i
  %i.aj = icmp samesign ult i32 %.031, 16448
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = lshr i32 %.031, 6
  %i.al = add nsw i32 %i.ak, -1
  br label %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit

bb.p:                                             ; preds = %bb.n
  %i.am = icmp samesign ult i32 %.031, 32704
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = shl nuw nsw i32 %.031, 10
  %i.ao = and i32 %i.an, 33488896
  %i.ap = add nsw i32 %i.ao, -16842752
  %i.aq = load i16, ptr %.040, align 2, !tbaa !15
  %i.ar = zext i16 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  br label %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit

bb.r:                                             ; preds = %bb.p
  %i.at = load i16, ptr %.040, align 2, !tbaa !15
  %i.au = zext i16 %i.at to i32
  %i.av = shl nuw i32 %i.au, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.040, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !15
  %i.ay = zext i16 %i.ax to i32
  %i.az = or disjoint i32 %i.av, %i.ay
  br label %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit

_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit:      ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  %.0 = phi i32 [ %i.v, %bb.j ], [ %i.ai, %bb.m ], [ %i.ab, %bb.l ], [ %i.al, %bb.o ], [ %i.as, %bb.q ], [ %i.az, %bb.r ] ; 2 uses
  %.not45 = icmp eq i8 %.036.ph, 0
  br i1 %.not45, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit
  %i.ba = load i32, ptr %2, align 4, !tbaa !17
  %.not46 = icmp eq i32 %.0, %i.ba
  br i1 %.not46, label %bb.u, label %.thread

bb.t:                                             ; preds = %_ZN6icu_7810UCharsTrie9readValueEPKDsi.exit
  store i32 %.0, ptr %2, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.137 = phi i8 [ %.036.ph, %bb.s ], [ 1, %bb.t ]
  br i1 %.not, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bb = icmp samesign ugt i32 %.031, 16447
  br i1 %i.bb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bc = icmp samesign ult i32 %.031, 32704
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %.040, i64 2
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %.040, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v
  %.0.i48 = phi ptr [ %i.bd, %bb.x ], [ %i.be, %bb.y ], [ %.040, %bb.v ]
  %i.bf = and i32 %.031, 63
  br label %.outer.backedge

.thread:                                          ; preds = %bb.u, %bb.s, %bb.e
  %.335 = phi i8 [ 0, %bb.e ], [ 1, %bb.u ], [ 0, %bb.s ]
  ret i8 %.335
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 65537) i32 @_ZNK6icu_7810UCharsTrie13getNextUCharsERNS_10AppendableE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %i.b, align 2, !tbaa !15
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef signext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %i.g) ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.b, align 2, !tbaa !15   ; 5 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = icmp ugt i16 %i.m, 63
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not = icmp sgt i16 %i.m, -1
  br i1 %.not, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ugt i16 %i.m, 16447
  br i1 %i.p, label %bb.g, label %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit

bb.g:                                             ; preds = %bb.f
  %i.q = icmp samesign ult i16 %i.m, 32704
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  br label %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit

_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.l, %bb.f ]
  %i.t = and i32 %i.n, 63
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit, %bb.d
  %.021 = phi ptr [ %.0.i, %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit ], [ %i.l, %bb.d ] ; 4 uses
  %.0 = phi i32 [ %i.t, %_ZN6icu_7810UCharsTrie13skipNodeValueEPKDsi.exit ], [ %i.n, %bb.d ] ; 3 uses
  %i.u = icmp samesign ult i32 %.0, 48
  br i1 %i.u, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = icmp eq i32 %.0, 0
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.x = load i16, ptr %.021, align 2, !tbaa !15
  %i.y = zext i16 %i.x to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.122 = phi ptr [ %i.w, %bb.l ], [ %.021, %bb.k ]
  %.1 = phi i32 [ %i.y, %bb.l ], [ %.0, %bb.k ]
  %i.z = add nuw nsw i32 %.1, 1                   ; 3 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.z) ; 0 uses
  tail call void @_ZN6icu_7810UCharsTrie19getNextBranchUCharsEPKDsiRNS_10AppendableE(ptr noundef nonnull %.122, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ae = load i16, ptr %.021, align 2, !tbaa !15
  %i.af = load ptr, ptr %1, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %i.ae) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.e, %bb.a, %bb.c
  %.124 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.n ], [ %i.z, %bb.m ], [ 0, %bb.e ]
  ret i32 %.124
}

; Function Attrs: mustprogress uwtable
end_hunk_0
