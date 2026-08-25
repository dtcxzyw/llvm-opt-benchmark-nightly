Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterCoalescer?download=true
inline.NumInlined: 5517
inline.NumDeleted: 2347
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_18JoinVals11pruneValuesERS0_RN4llvm15SmallVectorImplINS2_9SlotIndexEEEb:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !281  ; 2 uses
  %.not3457 = icmp eq i32 %i.c, 0
  br i1 %.not3457, label %._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph59, %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit ] ; 6 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1173
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63   ; 6 uses
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val39, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 8, !tbaa !986
  switch i32 %i.s, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit [
    i32 2, label %bb.o
    i32 3, label %bb.c
    i32 1, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.u = load ptr, ptr %1, align 8, !tbaa !984, !nonnull !19, !align !44
  tail call void @_ZN4llvm13LiveIntervals10pruneValueERNS_9LiveRangeENS_9SlotIndexEPNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(424) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.u, i64 %i.q, ptr noundef nonnull %2) #22
  %.val38 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.val38, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1292
  %i.y = load i32, ptr %i.x, align 8, !tbaa !875
  %i.z = zext i32 %i.y to i64
  %.val37 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.val37, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !1310, !range !18, !noundef !19
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i32, ptr %i.aa, align 8
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false     ; 2 uses
  %i.ah = and i64 %i.q, 6
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aj = and i64 %i.q, -8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !942 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !1319 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.aq = load i24, ptr %i.ap, align 8, !noalias !1319 ; 2 uses
  %i.ar = zext i24 %i.aq to i64
  %.idx.i = shl nuw nsw i64 %i.ar, 5
  %i.as = getelementptr i8, ptr %i.ao, i64 %.idx.i ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i24 %i.aq, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.011.0.i.i = phi ptr [ %i.aw, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %i.at = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !1322
  %i.au = and i32 %i.at, 16777471
  %i.av = icmp eq i32 %i.au, 16777216
  br i1 %i.av, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !842

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.sroa.011.1.i.i = phi ptr [ %i.ao, %bb.e ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not5355 = icmp eq ptr %.sroa.011.1.i.i, %i.as
  br i1 %.not5355, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.041.056 = phi ptr [ %.sroa.041.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.041.056, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !63
  %i.az = load i32, ptr %i.g, align 8, !tbaa !189
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.bb = load i32, ptr %.sroa.041.056, align 8   ; 5 uses
  %i.bc = and i32 %i.bb, 1048320
  %.not35 = icmp eq i32 %i.bc, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = and i32 %i.bb, 268435456
  %.not54 = icmp eq i32 %i.bd, 0
  %or.cond = select i1 %.not54, i1 true, i1 %i.ag
  %i.be = and i32 %i.bb, -268435457
  %spec.select = select i1 %or.cond, i32 %i.bb, i32 %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i32 [ %i.bb, %bb.g ], [ %spec.select, %bb.h ]
  %i.bg = and i32 %i.bf, -67108865
  store i32 %i.bg, ptr %.sroa.041.056, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.041.056, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.bh, %i.as
  br i1 %.not1.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.sroa.041.1 = phi ptr [ %i.bl, %bb.k ], [ %i.bh, %bb.j ] ; 4 uses
  %i.bi = load i32, ptr %.sroa.041.1, align 8
  %i.bj = and i32 %i.bi, 16777471
  %i.bk = icmp eq i32 %i.bj, 16777216
  br i1 %i.bk, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.as
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !842

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not53 = icmp eq ptr %.sroa.041.1, %i.as
  br i1 %.not53, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %bb.j, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.k, %_ZN4llvm12MachineInstr8all_defsEv.exit, %bb.d
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bm = load i32, ptr %i.h, align 8, !tbaa !281 ; 2 uses
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !282
  %.not.i = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !212

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.q)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

bb.n:                                             ; preds = %bb.l
  %i.bo = zext i32 %i.bm to i64
  %i.bp = load ptr, ptr %2, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  store i64 %i.q, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.h, align 8, !tbaa !281
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.h, align 8, !tbaa !281
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bt = trunc nuw i64 %indvars.iv to i32
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_18JoinVals13isPrunedValueEjRS0_(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(520) %1)
  br i1 %i.bu, label %bb.p, label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

bb.p:                                             ; preds = %bb.o
  %.val36 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %.val36, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1292
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !875
  %i.bz = zext i32 %i.by to i64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !1310, !range !18, !noundef !19
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load i32, ptr %i.ca, align 8
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = select i1 %i.cd, i1 %i.cf, i1 false
  %i.ch = select i1 %i.cg, ptr null, ptr %2
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.cj = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  tail call void @_ZN4llvm13LiveIntervals10pruneValueERNS_9LiveRangeENS_9SlotIndexEPNS_15SmallVectorImplIS3_EE(ptr noundef nonnull align 8 dereferenceable(424) %i.ci, ptr noundef nonnull align 8 dereferenceable(104) %i.cj, i64 %i.q, ptr noundef %i.ch) #22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE9push_backES1_.exit: ; preds = %bb.n, %bb.m, %.loopexit, %bb.c, %bb.o, %bb.p, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not34 = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %.not34, label %._crit_edge, label %bb.b, !llvm.loop !1325
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18JoinVals11eraseInstrsERN4llvm15SmallPtrSetImplIPNS1_12MachineInstrEEERNS1_15SmallVectorImplINS1_8RegisterEEEPNS1_12LiveIntervalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.088 = alloca i64, align 8                ; 5 uses
  %.sroa.087 = alloca i64, align 8                ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !281  ; 2 uses
  %.not110 = icmp eq i32 %i.c, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.not50 = icmp eq ptr %3, null
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ai, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1173 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.sroa.024.0.copyload = load i64, ptr %i.s, align 8, !tbaa !63 ; 8 uses
  %.val55 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %.val55, i64 %indvars.iv ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !986
  switch i32 %i.u, label %bb.ai [
    i32 0, label %bb.c
    i32 1, label %bb.z
  ]

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !1310, !range !18, !noundef !19
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 41
  %i.z = load i8, ptr %i.y, align 1, !tbaa !1308, !range !18, !noundef !19
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.ai

bb.e:                                             ; preds = %bb.d
  br i1 %.not50, label %.critedge53, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %i.n, i64 %.sroa.024.0.copyload) #22 ; 3 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !281
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8 ; 2 uses
  %i.ah = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !714
  %i.al = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.am = lshr i32 %i.al, 1
  %i.an = and i32 %i.am, 3
  %i.ao = or i32 %i.an, %i.ak
  %i.ap = and i64 %.sroa.024.0.copyload, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !714
  %i.at = trunc i64 %.sroa.024.0.copyload to i32
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.au, 3
  %i.aw = or i32 %i.as, %i.av
  %.not7.i = icmp ugt i32 %i.ao, %i.aw
  br i1 %.not7.i, label %bb.h, label %_ZN4llvm9LiveRange21FindSegmentContainingENS_9SlotIndexE.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %_ZN4llvm9LiveRange21FindSegmentContainingENS_9SlotIndexE.exit

_ZN4llvm9LiveRange21FindSegmentContainingENS_9SlotIndexE.exit: ; preds = %bb.g, %bb.h
  %i.ax = phi ptr [ %i.ag, %bb.h ], [ %i.ab, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !63 ; 4 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  tail call void @_ZN4llvm9LiveRange11removeValNoEPNS_6VNInfoE(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, ptr noundef nonnull %i.r) #22
  store i64 0, ptr %i.s, align 8, !tbaa !63
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !528 ; 2 uses
  %.not98 = icmp eq ptr %i.bb, null
  br i1 %.not98, label %bb.z, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm9LiveRange21FindSegmentContainingENS_9SlotIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.088)
  store i64 0, ptr %.sroa.088, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.087)
  store i64 0, ptr %.sroa.087, align 8
  %i.bc = and i64 %.sroa.024.0.copyload, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = trunc i64 %.sroa.024.0.copyload to i32
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 3
  br label %bb.k

bb.j:                                             ; preds = %bb.r
  %i.bi = icmp ugt i64 %.sroa.087.0..sroa.087.0..sroa.087.0..0.copyload.i.i.i.i, 7 ; 2 uses
  br i1 %i.bi, label %bb.s, label %bb.t

bb.k:                                             ; preds = %bb.i, %bb.r
  %.sroa.082.0109 = phi ptr [ %i.bb, %bb.i ], [ %i.dh, %bb.r ] ; 4 uses
  %.sroa.087.0..sroa.087.0..0.copyload.i.i.i.i60104108 = phi i64 [ 0, %bb.i ], [ %.sroa.087.0..sroa.087.0..sroa.087.0..0.copyload.i.i.i.i, %bb.r ] ; 5 uses
  %.sroa.088.0..sroa.088.0..0.copyload.i.i.i.i57106107 = phi i64 [ 0, %bb.i ], [ %.sroa.088.0..sroa.088.0..sroa.088.0..0.copyload.i.i.i.i67, %bb.r ] ; 5 uses
  %i.bj = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.082.0109, i64 %.sroa.024.0.copyload) #22 ; 4 uses
  %i.bk = load ptr, ptr %.sroa.082.0109, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.082.0109, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !281
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = icmp eq ptr %i.bj, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bj, align 8 ; 3 uses
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !714
  %i.bu = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = and i32 %i.bv, 3
  %i.bx = or i32 %i.bw, %i.bt                     ; 2 uses
  %i.by = load i32, ptr %i.be, align 8, !tbaa !714
  %i.bz = or i32 %i.by, %i.bh
  %i.ca = icmp ugt i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cb = icmp ugt i64 %.sroa.088.0..sroa.088.0..0.copyload.i.i.i.i57106107, 7
  br i1 %i.cb, label %bb.n, label %4

bb.n:                                             ; preds = %bb.m
  %i.cc = and i64 %.sroa.088.0..sroa.088.0..0.copyload.i.i.i.i57106107, -8
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !714
  %i.cg = trunc i64 %.sroa.088.0..sroa.088.0..0.copyload.i.i.i.i57106107 to i32
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = and i32 %i.ch, 3
  %i.cj = or i32 %i.cf, %i.ci
  %i.ck = icmp ult i32 %i.bx, %i.cj
  %..i = select i1 %i.ck, ptr %i.bj, ptr %.sroa.088
  %.pre = load i64, ptr %..i, align 8, !tbaa !63
  br label %4

4:                                                ; preds = %bb.m, %bb.n
  %5 = phi i64 [ %.pre, %bb.n ], [ %.0.copyload.i.i.i.i.i.i, %bb.m ] ; 2 uses
  store i64 %5, ptr %.sroa.088, align 8, !tbaa !63
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.cl = icmp ugt i64 %.sroa.087.0..sroa.087.0..0.copyload.i.i.i.i60104108, 7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.cm, align 8, !tbaa !63 ; 2 uses
  %i.cn = and i64 %.sroa.087.0..sroa.087.0..0.copyload.i.i.i.i60104108, -8
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !714
  %i.cr = trunc i64 %.sroa.087.0..sroa.087.0..0.copyload.i.i.i.i60104108 to i32
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = and i32 %i.cs, 3
  %i.cu = or i32 %i.cq, %i.ct
  %i.cv = and i64 %.sroa.0.0.copyload.i61, -8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !714
  %i.cz = trunc i64 %.sroa.0.0.copyload.i61 to i32
  %i.da = lshr i32 %i.cz, 1
  %i.db = and i32 %i.da, 3
  %i.dc = or i32 %i.db, %i.cy
  %i.dd = icmp ult i32 %i.cu, %i.dc
  %..i63 = select i1 %i.dd, ptr %i.cm, ptr %.sroa.087
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.de = phi ptr [ %..i63, %bb.p ], [ %i.cm, %bb.o ]
  %i.df = load i64, ptr %i.de, align 8, !tbaa !63 ; 2 uses
  store i64 %i.df, ptr %.sroa.087, align 8, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %4, %bb.q, %bb.k
  %.sroa.088.0..sroa.088.0..sroa.088.0..0.copyload.i.i.i.i67 = phi i64 [ %5, %4 ], [ %.sroa.088.0..sroa.088.0..0.copyload.i.i.i.i57106107, %bb.q ], [ %.sroa.088.0..sroa.088.0..0.copyload.i.i.i.i57106107, %bb.k ] ; 5 uses
  %.sroa.087.0..sroa.087.0..sroa.087.0..0.copyload.i.i.i.i = phi i64 [ %.sroa.087.0..sroa.087.0..0.copyload.i.i.i.i60104108, %4 ], [ %i.df, %bb.q ], [ %.sroa.087.0..sroa.087.0..0.copyload.i.i.i.i60104108, %bb.k ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.082.0109, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !825 ; 2 uses
  %.not99 = icmp eq ptr %i.dh, null
  br i1 %.not99, label %bb.j, label %bb.k

bb.s:                                             ; preds = %bb.j
  %i.di = and i64 %.sroa.087.0..sroa.087.0..sroa.087.0..0.copyload.i.i.i.i, -8
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !714
  %i.dm = trunc i64 %.sroa.087.0..sroa.087.0..sroa.087.0..0.copyload.i.i.i.i to i32
  %i.dn = lshr i32 %i.dm, 1
  %i.do = and i32 %i.dn, 3
  %i.dp = or i32 %i.dl, %i.do
  %i.dq = and i64 %i.az, -8
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !714
  %i.du = trunc i64 %i.az to i32
  %i.dv = lshr i32 %i.du, 1
  %i.dw = and i32 %i.dv, 3
  %i.dx = or i32 %i.dt, %i.dw
  %i.dy = icmp ult i32 %i.dp, %i.dx
  %.sroa.speculated92 = select i1 %i.dy, i64 %.sroa.087.0..sroa.087.0..sroa.087.0..0.copyload.i.i.i.i, i64 %i.az
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j
  %.sroa.089.0 = phi i64 [ %.sroa.speculated92, %bb.s ], [ %i.az, %bb.j ] ; 4 uses
  %i.dz = icmp ugt i64 %.sroa.088.0..sroa.088.0..sroa.088.0..0.copyload.i.i.i.i67, 7
  br i1 %i.dz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ea = and i64 %.sroa.088.0..sroa.088.0..sroa.088.0..0.copyload.i.i.i.i67, -8
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !714
  %i.ee = trunc i64 %.sroa.088.0..sroa.088.0..sroa.088.0..0.copyload.i.i.i.i67 to i32
  %i.ef = lshr i32 %i.ee, 1
  %i.eg = and i32 %i.ef, 3
  %i.eh = or i32 %i.ed, %i.eg
  %i.ei = and i64 %.sroa.089.0, -8
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !714
  %i.em = trunc i64 %.sroa.089.0 to i32
  %i.en = lshr i32 %i.em, 1
  %i.eo = and i32 %i.en, 3
  %i.ep = or i32 %i.el, %i.eo
  %i.eq = icmp ult i32 %i.eh, %i.ep
  %.sroa.speculated = select i1 %i.eq, i64 %.sroa.088.0..sroa.088.0..sroa.088.0..0.copyload.i.i.i.i67, i64 %.sroa.089.0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.089.1 = phi i64 [ %.sroa.speculated, %bb.u ], [ %.sroa.089.0, %bb.t ]
  br i1 %i.bi, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.er = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  %i.es = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %i.er, i64 %.sroa.024.0.copyload) #22 ; 2 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !984, !nonnull !19, !align !44
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !21
  %.not51 = icmp eq ptr %i.es, %i.eu
  br i1 %.not51, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 -16
  store i64 %.sroa.089.1, ptr %i.ev, align 8, !tbaa !63
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.087)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088)
  br label %bb.z

.critedge53:                                      ; preds = %bb.e
  tail call void @_ZN4llvm9LiveRange11removeValNoEPNS_6VNInfoE(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull %i.r) #22
  store i64 0, ptr %i.s, align 8, !tbaa !63
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4llvm9LiveRange21FindSegmentContainingENS_9SlotIndexE.exit, %.critedge53, %bb.b
  %i.ew = and i64 %.sroa.024.0.copyload, -8
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !942 ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 52
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !45
  %i.fc = icmp eq i32 %i.fb, 20
  br i1 %i.fc, label %bb.aa, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !63 ; 5 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %bb.ab, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !1326, !nonnull !19, !align !44 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %.sroa.0.0.copyload.i72 = load i32, ptr %i.fj, align 4, !tbaa !188
  %.not100 = icmp eq i32 %i.fg, %.sroa.0.0.copyload.i72
  br i1 %.not100, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.0.0.copyload.i73 = load i32, ptr %i.fk, align 8, !tbaa !188
  %.not101 = icmp eq i32 %i.fg, %.sroa.0.0.copyload.i73
  br i1 %.not101, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = load i32, ptr %i.g, align 8, !tbaa !281 ; 2 uses
  %i.fm = load i32, ptr %i.h, align 4, !tbaa !282
  %.not.i74 = icmp ult i32 %i.fl, %i.fm
  br i1 %.not.i74, label %bb.af, label %bb.ae, !prof !212

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %i.fg)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.af:                                            ; preds = %bb.ad
  %i.fn = zext i32 %i.fl to i64
  %i.fo = load ptr, ptr %2, align 8, !tbaa !21
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fn
  store i32 %i.fg, ptr %i.fp, align 1
  %i.fq = load i32, ptr %i.g, align 8, !tbaa !281
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.g, align 8, !tbaa !281
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ac, %bb.ae, %bb.af, %bb.aa, %bb.ab, %bb.z
  %i.fs = load i8, ptr %i.i, align 8, !tbaa !14, !range !18, !noalias !1327, !noundef !19
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ag, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.ag:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %i.fu = load ptr, ptr %1, align 8, !tbaa !20, !noalias !1327 ; 2 uses
  %i.fv = load i32, ptr %i.j, align 4, !tbaa !284, !noalias !1327 ; 4 uses
  %i.fw = zext i32 %i.fv to i64
  %.idx.i.i = shl nuw nsw i64 %i.fw, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.fz, %.critedge.i.i ], [ %i.fu, %bb.ag ] ; 2 uses
  %i.fy = load ptr, ptr %.023.i.i, align 8, !tbaa !23, !noalias !1327
  %.not15.i.i = icmp eq ptr %i.fy, %i.ez
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fz, %i.fx
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.ag
  %i.ga = load i32, ptr %i.k, align 8, !tbaa !283, !noalias !1327
  %i.gb = icmp ult i32 %i.fv, %i.ga
  br i1 %i.gb, label %bb.ah, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.gc = add nuw i32 %i.fv, 1
  store i32 %i.gc, ptr %i.j, align 4, !tbaa !284, !noalias !1327
  store ptr %i.ez, ptr %i.fx, align 8, !tbaa !23, !noalias !1327
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %i.gd = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull %i.ez) #22, !noalias !1327 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.ah
  %i.ge = load ptr, ptr %i.l, align 8, !tbaa !976
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !307
  tail call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i1 noundef zeroext false) #22
  %i.gh = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ez) #22 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.c, %bb.d, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1330
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN4llvm8RegisterENS0_11SmallVectorIjLj2EEEEC2IS1_RS3_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !188
  store i32 %i.a, ptr %0, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !281
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.e, align 4, !tbaa !282
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !281  ; 5 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = icmp eq ptr %i.b, %2
  %or.cond.i = or i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorIjLj2EEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %i.g, 2
  br i1 %i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i:           ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.c, i64 noundef %i.j, i64 noundef 4) #22
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !281 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i:    ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge, %bb.b
  %i.k = phi ptr [ %.pre, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.c, %bb.b ]
  %i.l = phi i32 [ %.pre.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.g, %bb.b ]
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %2, align 8, !tbaa !21
  %gepdiff.i.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 4 %i.n, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !281
  br label %_ZN4llvm11SmallVectorIjLj2EEC2ERKS1_.exit

_ZN4llvm11SmallVectorIjLj2EEC2ERKS1_.exit:        ; preds = %bb.a, %.sink.split.i.i
  ret void
}

declare void @_ZN4llvm9LiveRange4joinERS0_PKiS3_RNS_15SmallVectorImplIPNS_6VNInfoEEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEES2_mS4_S7_E24lookupOrInsertIntoBucketIS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !622, !noalias !1331 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1336, !noalias !1331 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !621, !noalias !1331 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !189    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !188
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !207

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !188
end_hunk_0
