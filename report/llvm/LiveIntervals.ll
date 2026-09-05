Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveIntervals?download=true
inline.NumInlined: 3391
inline.NumDeleted: 1721
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm13LiveIntervals24checkRegMaskInterferenceERKNS_12LiveIntervalERNS_9BitVectorE:bb.a
  %i.gb = icmp ult i32 %i.ga, %i.fs
  br i1 %i.gb, label %bb.s, label %.loopexit, !llvm.loop !733

bb.s:                                             ; preds = %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %.4, i64 8 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.bd
  br i1 %i.gd, label %.loopexit84, label %bb.r, !llvm.loop !734

.loopexit84:                                      ; preds = %_ZL17hasLiveThroughUsePKN4llvm12MachineInstrENS_8RegisterE.exit.thread, %bb.q, %bb.h, %bb.s
  %.0.in = load i8, ptr %i.a, align 1, !tbaa !400, !range !133, !noundef !85
  %.0 = trunc nuw i8 %.0.in to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEERKS2_EEDaOT_OT0_.exit, %.loopexit84
  %.1 = phi i1 [ %.0, %.loopexit84 ], [ false, %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEERKS2_EEDaOT_OT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t
  %.2 = phi i1 [ %.1, %bb.t ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4llvm13LiveIntervals24checkRegMaskInterferenceERKNS_12LiveIntervalERNS_9BitVectorEENK3$_0clEj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !747, !nonnull !85
  %i.b = load i8, ptr %i.a, align 1, !tbaa !400, !range !133, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !405
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !748, !nonnull !85, !align !86 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !749  ; 4 uses
  store i32 %i.m, ptr %i.h, align 8, !tbaa !750
  %i.n = add i32 %i.m, 63
  %i.o = lshr i32 %i.n, 6                         ; 4 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !84
  %.not.i.i.i.i.i = icmp ugt i32 %i.o, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.g, ptr noundef nonnull %i.t, i64 noundef %i.p, i64 noundef 8) #19
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !83 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.h, align 8, !tbaa !750
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre4.pre.i = phi i32 [ %i.m, %bb.b ], [ %.pre4.pre.i.pre, %bb.c ]
  %.pre-phi.i.i = phi i64 [ 0, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.u = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !112
  %i.x = add i32 %i.u, %i.o                       ; 2 uses
  store i32 %i.x, ptr %i.i, align 8, !tbaa !83
  %i.y = zext i32 %i.x to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.z = phi i64 [ 0, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %i.y, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ]
  %i.aa = phi i32 [ %i.m, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ]
  %i.ab = and i32 %i.aa, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %i.ad, -1
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.z
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112
  %i.aj = and i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !112
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !747, !nonnull !85
  store i8 1, ptr %i.ak, align 1, !tbaa !400
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9BitVector6resizeEjb.exit, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !748, !nonnull !85, !align !86 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !751, !nonnull !85, !align !86
  %i.ap = zext i32 %1 to i64
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !753
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !406 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !750
  %i.av = add i32 %i.au, 31                       ; 2 uses
  %i.aw = lshr i32 %i.av, 5                       ; 3 uses
  %i.ax = icmp ugt i32 %i.av, 63
  br i1 %i.ax, label %.lr.ph.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !82 ; 2 uses
  %i.az = add nsw i32 %i.aw, -2                   ; 2 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = add nuw nsw i32 %i.ba, 1
  %wide.trip.count.i.i = zext nneg i32 %i.bb to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.az, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 4 uses
  %i.bc = shl nuw nsw i64 %n.vec, 3
  %i.bd = getelementptr i8, ptr %i.as, i64 %i.bc  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be
  %i.bf = getelementptr i8, ptr %i.as, i64 %i.be
  %next.gep5 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !112
  %wide.load6 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !112
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !149 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec7 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec8 = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !149 ; 2 uses
  %strided.vec9.a = shufflevector <4 x i32> %wide.vec8, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec10 = shufflevector <4 x i32> %wide.vec8, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bi = zext <2 x i32> %strided.vec to <2 x i64>
  %i.bj = zext <2 x i32> %strided.vec9.a to <2 x i64>
  %i.bk = or disjoint <2 x i64> %i.bi, splat (i64 -4294967296)
  %i.bl = or disjoint <2 x i64> %i.bj, splat (i64 -4294967296)
  %i.bm = and <2 x i64> %i.bk, %wide.load
  %i.bn = and <2 x i64> %i.bl, %wide.load6
  %i.bo = xor <2 x i32> %strided.vec7, splat (i32 -1)
  %i.bp = xor <2 x i32> %strided.vec10, splat (i32 -1)
  %i.bq = zext <2 x i32> %i.bo to <2 x i64>
  %i.br = zext <2 x i32> %i.bp to <2 x i64>
  %i.bs = shl nuw <2 x i64> %i.bq, splat (i64 32)
  %i.bt = shl nuw <2 x i64> %i.br, splat (i64 32)
  %i.bu = xor <2 x i64> %i.bs, splat (i64 -1)
  %i.bv = xor <2 x i64> %i.bt, splat (i64 -1)
  %i.bw = and <2 x i64> %i.bm, %i.bu
  %i.bx = and <2 x i64> %i.bn, %i.bv
  store <2 x i64> %i.bw, ptr %i.bg, align 8, !tbaa !112
  store <2 x i64> %i.bx, ptr %i.bh, align 8, !tbaa !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader.i.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.036.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.bd, %middle.block ]
  br label %scalar.ph

.preheader.i.loopexit.i:                          ; preds = %scalar.ph, %middle.block
  %scevgep.i.i.lcssa = phi ptr [ %i.bd, %middle.block ], [ %scevgep.i.i, %scalar.ph ]
  %i.bz = and i32 %i.aw, 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %bb.e
  %.029.lcssa.i.i = phi i32 [ %i.aw, %bb.e ], [ %i.bz, %.preheader.i.loopexit.i ]
  %.020.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %wide.trip.count.i.i, %.preheader.i.loopexit.i ]
  %.0.lcssa.i.i = phi ptr [ %i.as, %bb.e ], [ %scevgep.i.i.lcssa, %.preheader.i.loopexit.i ]
  %.not39.i.i = icmp eq i32 %.029.lcssa.i.i, 0
  br i1 %.not39.i.i, label %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %.preheader.i.i
  %i.ca = load ptr, ptr %i.am, align 8, !tbaa !82
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.020.lcssa.i.i ; 2 uses
  %.promoted.i.i = load i64, ptr %i.cb, align 8, !tbaa !112
  %i.cc = load i32, ptr %.0.lcssa.i.i, align 4, !tbaa !149
  %i.cd = zext i32 %i.cc to i64
  %i.ce = or disjoint i64 %i.cd, -4294967296
  %i.cf = and i64 %.promoted.i.i, %i.ce
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !112
  br label %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.036.i.i = phi ptr [ %scevgep.i.i, %scalar.ph ], [ %.036.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !112
  %i.ci = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 4
  %i.cj = load i32, ptr %.036.i.i, align 4, !tbaa !149
  %i.ck = zext i32 %i.cj to i64
  %i.cl = or disjoint i64 %i.ck, -4294967296
  %i.cm = and i64 %i.cl, %i.ch
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !149
  %i.co = xor i32 %i.cn, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw i64 %i.cp, 32
  %i.cr = xor i64 %i.cq, -1
  %i.cs = and i64 %i.cm, %i.cr
  %scevgep.i.i = getelementptr i8, ptr %.036.i.i, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.cg, align 8, !tbaa !112
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.loopexit.i, label %scalar.ph, !llvm.loop !746

_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit: ; preds = %.preheader.i.i, %.lr.ph43.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13LiveIntervals10handleMoveERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::LiveIntervals::HMEditor", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !307  ; 2 uses
  %i.e = and i32 %i.d, 4
  %.not2.i.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %1, %bb.a ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !307
  %i.j = and i32 %i.i, 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.g, %.lr.ph.i.i ] ; 3 uses
  %i.k = and i32 %i.d, 8
  %.not3.i.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, %.lr.ph.i11.i
  %.sroa.0.04.i.i = phi ptr [ %i.m, %.lr.ph.i11.i ], [ %1, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !297  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !307
  %i.p = and i32 %i.o, 8
  %.not.i12.i = icmp eq i32 %i.p, 0
  br i1 %.not.i12.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i11.i, !llvm.loop !5

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i: ; preds = %.lr.ph.i11.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i
  %.sroa.0.0.lcssa.i13.i = phi ptr [ %1, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ], [ %i.m, %.lr.ph.i11.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !297  ; 3 uses
  %.not8.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.r
  br i1 %.not8.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, %.critedge2.i.i
  %.sroa.03.09.i.i = phi ptr [ %i.v, %.critedge2.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !308
  switch i32 %i.t, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i [
    i32 25, label %.critedge2.i.i
    i32 18, label %.critedge2.i.i
    i32 17, label %.critedge2.i.i
    i32 16, label %.critedge2.i.i
    i32 15, label %.critedge2.i.i
    i32 14, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i, %.lr.ph.i14.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !297  ; 2 uses
  %.not.i15.i = icmp eq ptr %i.v, %i.r
  br i1 %.not.i15.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i, label %.lr.ph.i14.i, !llvm.loop !6

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i: ; preds = %.critedge2.i.i, %.lr.ph.i14.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i
  %i.w = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ], [ %i.r, %.critedge2.i.i ], [ %.sroa.03.09.i.i, %.lr.ph.i14.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !311, !noalias !764 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !312, !noalias !764 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !313, !noalias !764 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.ae, %i.aj                    ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !149, !noalias !765
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !314

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.as = phi i64 [ %i.ay, %bb.c ], [ %i.al, %bb.b ] ; 2 uses
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.c ], [ %i.ak, %bb.b ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !316, !noalias !765
  %i.av = icmp eq ptr %i.w, %i.au
  br i1 %i.av, label %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit, label %bb.c, !prof !134

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.ae                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !149, !noalias !765
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !317

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i
  %i.bf = zext i32 %i.ac to i64
  br label %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit

_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.bg = phi i64 [ %i.bf, %.loopexit.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.bi, align 8, !tbaa !106
  tail call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false) #19
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.bk = tail call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = zext i1 %2 to i8
  store ptr %0, ptr %3, align 8, !tbaa !355
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !99
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !99
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.010.0.copyload.i, ptr %i.bp, align 8, !tbaa !106
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bk, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !95
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 8, ptr %i.bt, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 0, ptr %i.bu, align 4, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store i8 1, ptr %i.bv, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 %i.bm, ptr %i.bw, align 8, !tbaa !410
  call void @_ZN4llvm13LiveIntervals8HMEditor15updateAllRangesEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull %1)
  %i.bx = load i8, ptr %i.bv, align 8, !tbaa !97, !range !133, !noundef !85
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN4llvm13LiveIntervals8HMEditorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !95
  call void @free(ptr noundef %i.bz) #19
  br label %_ZN4llvm13LiveIntervals8HMEditorD2Ev.exit

_ZN4llvm13LiveIntervals8HMEditorD2Ev.exit:        ; preds = %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.488", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396  ; 4 uses
  br i1 %2, label %bb.b, label %bb.e
end_hunk_0
begin_hunk_1_@_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb:bb.a
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !307
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !297  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !307
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !297  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !294
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !149, !noalias !778
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !314

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !316, !noalias !778
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !134

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !149, !noalias !778
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !317

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !106
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !362
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !297
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = load i32, ptr %i.bo, align 4
  %.fr18.i = freeze i32 %i.bp                     ; 3 uses
  %i.bq = icmp eq i32 %.fr18.i, 0
  %i.br = add i32 %.fr18.i, -1                    ; 2 uses
  %i.bs = zext i32 %.fr18.i to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bs ; 3 uses
  br i1 %i.bq, label %.split16.us.i30, label %.split.i17

.split.i17:                                       ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %.sroa.010.0.i18 = phi ptr [ %.sroa.0.1.i.i.i.i20, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21 ], [ %1, %bb.e ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.010.0.i18, %i.bj
  br i1 %i.bu, label %.split16.us.i30, label %bb.f

.split16.us.i30:                                  ; preds = %.split.i17, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !294
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !82
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

bb.f:                                             ; preds = %.split.i17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19 = load i64, ptr %.sroa.010.0.i18, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28: ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !307
  %i.cg = and i32 %i.cf, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !307
  %i.cl = and i32 %i.ck, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, !llvm.loop !7

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %bb.f
  %.sroa.0.1.i.i.i.i20 = phi ptr [ %i.cc, %bb.f ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ], [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ] ; 3 uses
  %i.cm = ptrtoint ptr %.sroa.0.1.i.i.i.i20 to i64
  %i.cn = mul i64 %i.cm, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.br, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !149, !noalias !779
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !314

.lr.ph.i.i.i.i26:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %bb.g
  %i.cz = phi i64 [ %i.df, %bb.g ], [ %i.cs, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %.017.i.i.i.i27 = phi i32 [ %i.de, %bb.g ], [ %i.cr, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !316, !noalias !779
  %i.dc = icmp eq ptr %.sroa.0.1.i.i.i.i20, %i.db
  br i1 %i.dc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, label %bb.g, !prof !134

bb.g:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.dd = add nuw i32 %.017.i.i.i.i27, 1
  %i.de = and i32 %i.dd, %i.br                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !149, !noalias !779
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !317

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21: ; preds = %bb.g, %.lr.ph.i.i.i.i26, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %.lcssa.sink.i.i.i22 = phi ptr [ %i.bt, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %i.da, %.lr.ph.i.i.i.i26 ], [ %i.bt, %bb.g ] ; 2 uses
  %.not.i23 = icmp eq ptr %.lcssa.sink.i.i.i22, %i.bt
  br i1 %.not.i23, label %.split.i17, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit: ; preds = %.split16.us.i30, %.thread.i
  %.sroa.0.2.in.i24 = phi ptr [ %i.ca, %.split16.us.i30 ], [ %i.dm, %.thread.i ]
  %.sroa.0.2.i25 = load i64, ptr %.sroa.0.2.in.i24, align 8, !tbaa !106
  %i.dn = and i64 %.sroa.0.2.i25, -8
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !244
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit
  %.sroa.038.0 = phi ptr [ %i.bg, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.dq, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ] ; 4 uses
  %.sroa.039.0 = phi ptr [ %i.bh, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ], [ %i.do, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !352
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !352 ; 2 uses
  %i.dv = sub i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = and i32 %i.dw, 2147483644               ; 2 uses
  %i.dy = add i32 %i.dx, %i.du
  %i.dz = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, 32                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !146
  %i.ee = icmp ult i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.h, label %bb.i, !prof !134

bb.h:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ef = inttoptr i64 %i.eb to ptr
  store ptr %i.ef, ptr %0, align 8, !tbaa !145
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

bb.i:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.eg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.dz, %bb.h ], [ %i.eg, %bb.i ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %1, ptr %i.eh, align 8, !tbaa !353
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 %i.dy, ptr %i.ei, align 8, !tbaa !352
  %i.ej = load ptr, ptr %.sroa.038.0, align 8, !tbaa !362 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %.sroa.038.0, ptr %i.ek, align 8, !tbaa !244
  store ptr %i.ej, ptr %.0.i.i.i, align 8, !tbaa !362
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.0.i.i.i, ptr %i.el, align 8, !tbaa !244
  store ptr %.0.i.i.i, ptr %.sroa.038.0, align 8, !tbaa !362
  %i.em = icmp eq i32 %i.dx, 0
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  tail call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nonnull %.0.i.i.i) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  %i.en = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !781
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !106
  %i.eq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !782 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %i.en
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13LiveIntervals8HMEditor15updateAllRangesEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i24, ptr %i.c, align 8              ; 2 uses
  %i.e = zext i24 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not174 = icmp eq i24 %i.d, 0
  br i1 %.not174, label %.critedge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit
  br i1 %spec.select, label %bb.af, label %.critedge178

bb.b:                                             ; preds = %.lr.ph177, %_ZNK4llvm14MachineOperand8readsRegEv.exit
  %.0176 = phi i1 [ false, %.lr.ph177 ], [ %spec.select, %_ZNK4llvm14MachineOperand8readsRegEv.exit ]
  %.058175 = phi ptr [ %i.b, %.lr.ph177 ], [ %i.gt, %_ZNK4llvm14MachineOperand8readsRegEv.exit ] ; 6 uses
  %i.p = load i32, ptr %.058175, align 8          ; 4 uses
  %i.q = and i32 %i.p, 255                        ; 2 uses
  %i.r = icmp eq i32 %i.q, 12
  %spec.select = select i1 %i.r, i1 true, i1 %.0176 ; 2 uses
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %bb.c, label %_ZNK4llvm14MachineOperand8readsRegEv.exit

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.p, 16777216
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %i.p, 805306368
  %or.cond.not.i = icmp eq i32 %i.u, 0
  br i1 %or.cond.not.i, label %bb.e, label %_ZNK4llvm14MachineOperand8readsRegEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = and i32 %i.p, -889192704
  store i32 %i.v, ptr %.058175, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.058175, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !106  ; 9 uses
  %.not64 = icmp eq i32 %i.x, 0
  br i1 %.not64, label %_ZNK4llvm14MachineOperand8readsRegEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !411, !nonnull !85, !align !86 ; 3 uses
  %i.aa = and i32 %i.x, 2147483647                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !83
  %i.ad = icmp ugt i32 %i.ac, %i.aa
  br i1 %i.ad, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.thread.i

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !108 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ai, null
  br i1 %.not.i70, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.thread.i, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.thread.i: ; preds = %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, %bb.h
  %i.aj = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(424) %i.z, i32 %i.x)
  br label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit: ; preds = %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.thread.i
  %.0.i = phi ptr [ %i.aj, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.thread.i ], [ %i.ai, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ] ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 104 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !393 ; 2 uses
  %.not158 = icmp eq ptr %i.al, null
  br i1 %.not158, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %i.am = load i32, ptr %.058175, align 8
  %i.an = lshr i32 %i.am, 8
  %i.ao = and i32 %i.an, 4095                     ; 2 uses
  %.not66 = icmp eq i32 %i.ao, 0
  br i1 %.not66, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !412, !nonnull !85, !align !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !373
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8, !tbaa !112
  br label %.lr.ph169.preheader

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !413, !nonnull !85, !align !86
  %i.av = tail call i64 @_ZNK4llvm19MachineRegisterInfo21getMaxLaneMaskForVRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.au, i32 %i.x) #19
  %.sroa.0129.0166.pre = load ptr, ptr %i.ak, align 8, !tbaa !356 ; 2 uses
  %.not159167 = icmp eq ptr %.sroa.0129.0166.pre, null
  br i1 %.not159167, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %.thread, %bb.j
  %.sroa.027.0203 = phi i64 [ %.sroa.0.0.copyload.i, %.thread ], [ %i.av, %bb.j ]
  %.sroa.0129.0166202 = phi ptr [ %i.al, %.thread ], [ %.sroa.0129.0166.pre, %bb.j ]
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %_ZN4llvm13LiveIntervals8HMEditor11updateRangeERNS_9LiveRangeENS_13VirtRegOrUnitENS_11LaneBitmaskE.exit
  %.sroa.0129.0168 = phi ptr [ %.sroa.0129.0, %_ZN4llvm13LiveIntervals8HMEditor11updateRangeERNS_9LiveRangeENS_13VirtRegOrUnitENS_11LaneBitmaskE.exit ], [ %.sroa.0129.0166202, %.lr.ph169.preheader ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0129.0168, i64 112
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !358 ; 2 uses
  %i.ay = and i64 %i.ax, %.sroa.027.0203
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvm13LiveIntervals8HMEditor11updateRangeERNS_9LiveRangeENS_13VirtRegOrUnitENS_11LaneBitmaskE.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph169
  %i.ba = load i8, ptr %i.k, align 8, !tbaa !97, !range !133, !noalias !794, !noundef !85
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %_ZN4llvm15SmallPtrSetImplIPNS_9LiveRangeEE6insertES2_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !95, !noalias !794 ; 2 uses
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !98, !noalias !794 ; 4 uses
  %i.be = zext i32 %i.bd to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.critedge.i.i.i
end_hunk_1
