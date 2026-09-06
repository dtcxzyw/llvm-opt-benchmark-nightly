Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelLowering?download=true
inline.NumInlined: 26532
inline.NumDeleted: 5745
loop-unroll.NumCompletelyUnrolled: 411
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 438
begin_hunk_0_@_ZL19isSimpleVIDSequenceN4llvm7SDValueEj:bb.a
  %i.nl = load ptr, ptr %9, align 8, !tbaa !261   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit84, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdaPv(ptr noundef nonnull %i.nl) #37
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit84

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit84: ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit82, %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.df

bb.df:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit84, %bb.b
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getStridedLoadVPENS_3EVTERKNS_5SDLocENS_7SDValueES5_S5_S5_S5_PNS_17MachineMemOperandEb(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL19matchIndexAsShuffleN4llvm3EVTENS_7SDValueES1_RNS_11SmallVectorIiLj12EEE(i16 %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(64) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %7 = alloca %"class.llvm::BitVector", align 8   ; 10 uses
  store i16 %0, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = tail call noundef zeroext i1 @_ZN4llvm3ISD28isConstantSplatVectorAllOnesEPKNS_6SDNodeEb(ptr noundef %3, i1 noundef zeroext false) #34
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE(ptr noundef %2) #34
  br i1 %i.c, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %.not.i.i.i = icmp eq i16 %0, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.d = add i16 %0, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.d, 197
  br i1 %spec.select.i.i.i.i, label %bb.d, label %bb.f

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.c
  %i.e = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #38
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.split.i.i
  %i.f = zext nneg i16 %0 to i64
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !216
  %i.j = insertvalue { i16, ptr } poison, i16 %i.i, 0
  %i.k = insertvalue { i16, ptr } %i.j, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.l = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #34
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.f:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.m = insertvalue { i16, ptr } poison, i16 %0, 0
  %i.n = insertvalue { i16, ptr } %i.m, ptr %1, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.f, %bb.e, %bb.d
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.n, %bb.f ], [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %i.o = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.o, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.q, ptr %i.p, align 8
  %.not.i.i1.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.r = zext i16 %i.o to i64
  %i.s = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.t, align 16
  br label %_ZNK4llvm3EVT18getScalarStoreSizeEv.exit

bb.h:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.u = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #38
  %i.v = extractvalue { i64, i8 } %i.u, 0
  br label %_ZNK4llvm3EVT18getScalarStoreSizeEv.exit

_ZNK4llvm3EVT18getScalarStoreSizeEv.exit:         ; preds = %bb.g, %bb.h
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.g ], [ %i.v, %bb.h ]
  %i.w = add i64 %.pn.i.i.i, 7
  %i.x = lshr i64 %i.w, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.y = load i16, ptr %6, align 8, !tbaa !270    ; 3 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZNK4llvm3EVT18getScalarStoreSizeEv.exit
  %i.z = add i16 %i.y, -163
  %spec.select.i.i.i = icmp ult i16 %i.z, 53
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %_ZNK4llvm3EVT18getScalarStoreSizeEv.exit
  %i.aa = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #38
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.285) #35
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.ab = zext i16 %i.y to i64
  %i.ac = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !217
  %i.af = zext i16 %i.ae to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.ag = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #38
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.j
  %i.ah = phi i32 [ %i.af, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.ag, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ai = add i32 %i.ah, 63                       ; 2 uses
  %i.aj = lshr i32 %i.ai, 6                       ; 3 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.al, ptr %7, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.an, align 4, !tbaa !340
  %i.ao = icmp ugt i32 %i.ai, 447
  br i1 %i.ao, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  store i32 0, ptr %i.am, align 8, !tbaa !339
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %7, ptr noundef nonnull %i.al, i64 noundef %i.ak, i64 noundef 8) #34
  %i.ap = load ptr, ptr %7, align 8, !tbaa !54
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i.i25 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i25, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.ap, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.al, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ] ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !347
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %i.aq = phi ptr [ %i.al, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %.sink, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split ] ; 3 uses
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !339
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store i32 %i.ah, ptr %i.ar, align 8, !tbaa !1872
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !522
  %.not2234.not = icmp eq i16 %i.at, 0
  br i1 %.not2234.not, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.av = and i64 %i.x, 4294967295                ; 2 uses
  %i.aw = zext i32 %i.ah to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !381
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !392 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !362
  %i.bd = add i32 %i.bc, -53
  %spec.select.i4 = icmp ult i32 %i.bd, 2
  br i1 %spec.select.i4, label %_ZNK4llvm9BitVector3allEv.exit, label %.lr.ph6

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !381
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !392 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !362
  %i.bj = add i32 %i.bi, -53
  %spec.select.i = icmp ult i32 %i.bj, 2
  br i1 %spec.select.i, label %_ZNK4llvm9BitVector3allEv.exit, label %.lr.ph6, !llvm.loop !1864

.lr.ph6:                                          ; preds = %.lr.ph, %bb.k
  %i.bk = phi ptr [ %i.bg, %bb.k ], [ %i.ba, %.lr.ph ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph ]
  %i.bl = phi ptr [ %i.cg, %bb.k ], [ %i.aq, %.lr.ph ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !368 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !333
  %i.br = icmp ult i32 %i.bq, 65
  %i.bs = load ptr, ptr %i.bo, align 8
  %spec.select.i.i.i.i26 = select i1 %i.br, ptr %i.bo, ptr %i.bs
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i26, align 8, !tbaa !261 ; 2 uses
  %i.bt = urem i64 %.0.i.i.i.i, %i.av
  %i.bu = udiv i64 %.0.i.i.i.i, %i.av             ; 4 uses
  %.not = icmp eq i64 %i.bt, 0
  %.not21 = icmp ult i64 %i.bu, %i.aw
  %or.cond = and i1 %.not, %.not21
  br i1 %or.cond, label %.critedge, label %_ZNK4llvm9BitVector3allEv.exit

.critedge:                                        ; preds = %.lr.ph6
  %i.bv = trunc nuw i64 %i.bu to i32              ; 2 uses
  %i.bw = load i32, ptr %i.ax, align 8, !tbaa !339 ; 2 uses
  %i.bx = load i32, ptr %i.ay, align 4, !tbaa !340
  %.not.i = icmp ult i32 %i.bw, %i.bx
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !341

bb.l:                                             ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.m:                                             ; preds = %.critedge
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %4, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  store i32 %i.bv, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.ax, align 8, !tbaa !339
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ax, align 8, !tbaa !339
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.l, %bb.m
  %i.cd = and i64 %i.bu, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = lshr i64 %i.bu, 6
  %i.cg = load ptr, ptr %7, align 8, !tbaa !54    ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !347
  %i.cj = or i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !347
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1 ; 3 uses
  %i.ck = load i16, ptr %i.as, align 8, !tbaa !522
  %i.cl = zext i16 %i.ck to i64
  %.not22 = icmp samesign ult i64 %indvars.iv.next, %i.cl
  br i1 %.not22, label %bb.k, label %.critedge24.loopexit, !llvm.loop !1864

.critedge24.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.pre = load i32, ptr %i.ar, align 8, !tbaa !1872
  br label %.critedge24

.critedge24:                                      ; preds = %.critedge24.loopexit, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.cm = phi ptr [ %i.cg, %.critedge24.loopexit ], [ %i.aq, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 5 uses
  %i.cn = phi i32 [ %.pre, %.critedge24.loopexit ], [ %i.ah, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 2 uses
  %i.co = lshr i32 %i.cn, 6                       ; 3 uses
  %.not19.i = icmp eq i32 %i.co, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge24
  %wide.trip.count.i = zext nneg i32 %i.co to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1865

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !347
  %.not.i27 = icmp eq i64 %i.cq, -1
  br i1 %.not.i27, label %bb.n, label %_ZNK4llvm9BitVector3allEv.exit

._crit_edge.i:                                    ; preds = %bb.n, %.critedge24
  %i.cr = and i32 %i.cn, 63                       ; 2 uses
  %.not12.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not12.not.i, label %_ZNK4llvm9BitVector3allEv.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.cs = zext nneg i32 %i.co to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !347
  %i.cv = zext nneg i32 %i.cr to i64
  %notmask.i = shl nsw i64 -1, %i.cv
  %i.cw = xor i64 %i.cu, %notmask.i
  %i.cx = icmp eq i64 %i.cw, -1
  br label %_ZNK4llvm9BitVector3allEv.exit

_ZNK4llvm9BitVector3allEv.exit:                   ; preds = %.lr.ph6, %bb.k, %bb.o, %.lr.ph, %bb.p, %._crit_edge.i
  %i.cy = phi ptr [ %i.cm, %._crit_edge.i ], [ %i.cm, %bb.p ], [ %i.cm, %bb.o ], [ %i.aq, %.lr.ph ], [ %i.cg, %bb.k ], [ %i.bl, %.lr.ph6 ] ; 2 uses
  %.3 = phi i1 [ true, %._crit_edge.i ], [ %i.cx, %bb.p ], [ false, %bb.o ], [ false, %.lr.ph ], [ false, %bb.k ], [ false, %.lr.ph6 ]
  %i.cz = icmp eq ptr %i.cy, %i.al
  br i1 %i.cz, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm9BitVector3allEv.exit
  call void @free(ptr noundef %i.cy) #34
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZNK4llvm9BitVector3allEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %_ZN4llvm9BitVectorD2Ev.exit
  %.4 = phi i1 [ %.3, %_ZN4llvm9BitVectorD2Ev.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.4
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getMaskedLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_S5_S5_S5_S1_PNS_17MachineMemOperandENS_3ISD14MemIndexedModeENS8_11LoadExtTypeEb(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL19matchIndexAsWiderOpN4llvm3EVTENS_7SDValueES1_NS_5AlignERKNS_14RISCVSubtargetE(i16 %0, ptr %1, ptr %2, ptr %3, i8 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519768) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  store i16 %0, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = tail call noundef zeroext i1 @_ZN4llvm3ISD28isConstantSplatVectorAllOnesEPKNS_6SDNodeEb(ptr noundef %3, i1 noundef zeroext false) #34
  br i1 %i.b, label %bb.b, label %.thread39

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE(ptr noundef %2) #34
  br i1 %i.c, label %bb.c, label %.thread39

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i16 %0, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.d = add i16 %0, -163
  %spec.select.i.i.i = icmp ult i16 %i.d, 53
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.thread

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.c
  %i.e = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  br i1 %i.e, label %bb.d, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.285) #35
  unreachable

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.f = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.thread39

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.thread: ; preds = %.split.i
  %i.h = zext i16 %0 to i64                       ; 2 uses
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !217
  %i.l = and i16 %i.k, 1
  %.not37 = icmp eq i16 %i.l, 0
  br i1 %.not37, label %.split.i.i, label %.thread39

.split.i.i:                                       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.m = add i16 %0, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.m, 197
  br i1 %spec.select.i.i.i.i, label %bb.e, label %bb.g

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.n = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  br i1 %i.n, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.split.i.i
  %i.o = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.h
  %i.p = getelementptr i8, ptr %i.o, i64 -2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !216
  %i.r = insertvalue { i16, ptr } poison, i16 %i.q, 0
  %i.s = insertvalue { i16, ptr } %i.r, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.f:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.t = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #34
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.u = insertvalue { i16, ptr } poison, i16 %0, 0
  %i.v = insertvalue { i16, ptr } %i.u, ptr %1, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.g, %bb.f, %bb.e
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.v, %bb.g ], [ %i.s, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.w = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.w, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.y, ptr %i.x, align 8
  %.not.i.i1.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.z = zext i16 %i.w to i64
  %i.aa = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ab, align 16
  br label %_ZNK4llvm3EVT18getScalarStoreSizeEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ac = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #38
  %i.ad = extractvalue { i64, i8 } %i.ac, 0
  br label %_ZNK4llvm3EVT18getScalarStoreSizeEv.exit

_ZNK4llvm3EVT18getScalarStoreSizeEv.exit:         ; preds = %bb.h, %bb.i
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ], [ %i.ad, %bb.i ]
end_hunk_0
begin_hunk_1_@_ZNK4llvm3EVT11isByteSizedEv:bb.a
_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %_ZNK4llvm3EVT11isZeroSizedEv.exit, %_ZNK4llvm3EVT11isZeroSizedEv.exit.thread
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %_ZNK4llvm3EVT11isZeroSizedEv.exit.thread ], [ %i.c, %_ZNK4llvm3EVT11isZeroSizedEv.exit ]
  %i.i = and i64 %.pn.i, 7
  %i.j = icmp eq i64 %i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm3EVT11isZeroSizedEv.exit.thread, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %_ZNK4llvm3EVT11isZeroSizedEv.exit
  %i.k = phi i1 [ false, %_ZNK4llvm3EVT11isZeroSizedEv.exit ], [ %i.j, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %_ZNK4llvm3EVT11isZeroSizedEv.exit.thread ]
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc i16 @"_ZZL31combineVectorSizedSetCCEqualityN4llvm3EVTENS_7SDValueES1_NS_3ISD8CondCodeERKNS_5SDLocERNS_12SelectionDAGERKNS_14RISCVSubtargetEENK3$_1clES1_"(ptr %0, i32 %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %i.a = tail call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %0, i32 %1) #34 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.a, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.a, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.b = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !361
  %i.d = zext i32 %.fca.1.extract to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.e, align 8, !tbaa !216 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !334
  store i16 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.f, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.g = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.g, 197
  br i1 %spec.select.i.i, label %.split16, label %.critedge

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #38
  br i1 %i.h, label %_ZNK4llvm3EVT9isIntegerEv.exit, label %.critedge

.split16:                                         ; preds = %.split
  %or.cond3.i.i = icmp samesign ult i16 %.sroa.0.0.copyload.i.i, 105
  %i.i = add nsw i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i24 = icmp ult i16 %i.i, 32
  %i.j = or i1 %or.cond3.i.i, %spec.select.i.i24
  br i1 %i.j, label %bb.b, label %.critedge

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.k = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #38
  br i1 %i.k, label %bb.c, label %.critedge

bb.b:                                             ; preds = %.split16
  %i.l = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.m = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !216
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.p = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #34
  %i.q = extractvalue { i16, ptr } %i.p, 0
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.b, %bb.c
  %.fca.1.insert.merged.i = phi i16 [ %i.o, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %.not26 = icmp eq i16 %.fca.1.insert.merged.i, 0
  br i1 %.not26, label %.critedge, label %.critedge22

.critedge:                                        ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %.split16, %.split, %_ZNK4llvm3EVT9isIntegerEv.exit, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.04.029 = load ptr, ptr %i.r, align 8, !tbaa !640 ; 2 uses
  %.not2730 = icmp eq ptr %.sroa.04.029, null
  br i1 %.not2730, label %.critedge22, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.04.031 = phi ptr [ %.sroa.04.029, %.lr.ph ], [ %.sroa.04.0, %bb.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.031, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !471
  %.not = icmp eq i32 %i.u, %1
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.031, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !643  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !362
  %i.z = icmp eq i32 %i.y, 248
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !361 ; 2 uses
  %.sroa.0.0.copyload.i30 = load i16, ptr %i.ab, align 8, !tbaa !216 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !334
  store i16 %.sroa.0.0.copyload.i30, ptr %3, align 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.s, align 8
  %.not.i31 = icmp eq i16 %.sroa.0.0.copyload.i30, 0
  br i1 %.not.i31, label %_ZNK4llvm3EVT8isVectorEv.exit33, label %.split18

.split18:                                         ; preds = %bb.f
  %i.ac = add i16 %.sroa.0.0.copyload.i30, -19
  %spec.select.i.i32 = icmp ult i16 %i.ac, 197
  br i1 %spec.select.i.i32, label %.split20, label %.critedge20

_ZNK4llvm3EVT8isVectorEv.exit33:                  ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #38
  br i1 %i.ad, label %_ZNK4llvm3EVT9isIntegerEv.exit39, label %.critedge20

.split20:                                         ; preds = %.split18
  %or.cond3.i.i36 = icmp samesign ult i16 %.sroa.0.0.copyload.i30, 105
  %i.ae = add nsw i16 %.sroa.0.0.copyload.i30, -163
  %spec.select.i.i38 = icmp ult i16 %i.ae, 32
  %i.af = or i1 %or.cond3.i.i36, %spec.select.i.i38
  br i1 %i.af, label %bb.g, label %.critedge20

_ZNK4llvm3EVT9isIntegerEv.exit39:                 ; preds = %_ZNK4llvm3EVT8isVectorEv.exit33
  %i.ag = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #38
  br i1 %i.ag, label %bb.h, label %.critedge20

bb.g:                                             ; preds = %.split20
  %i.ah = zext nneg i16 %.sroa.0.0.copyload.i30 to i64
  %i.ai = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !216
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit42

bb.h:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit39
  %i.al = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #34
  %i.am = extractvalue { i16, ptr } %i.al, 0
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit42

_ZNK4llvm3EVT20getVectorElementTypeEv.exit42:     ; preds = %bb.g, %bb.h
  %.fca.1.insert.merged.i41 = phi i16 [ %i.ak, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %.not28 = icmp eq i16 %.fca.1.insert.merged.i41, 0
  br i1 %.not28, label %.critedge20, label %bb.j

.critedge20:                                      ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit42, %.split20, %.split18, %_ZNK4llvm3EVT9isIntegerEv.exit39, %_ZNK4llvm3EVT8isVectorEv.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %.critedge20, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.031, i64 32
  %.sroa.04.0 = load ptr, ptr %i.an, align 8, !tbaa !640 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.04.0, null
  br i1 %.not27, label %.critedge22, label %bb.d

bb.j:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.critedge22

.critedge22:                                      ; preds = %bb.i, %.critedge, %bb.j, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %.sroa.015.2 = phi i16 [ %.fca.1.insert.merged.i, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ %.fca.1.insert.merged.i41, %bb.j ], [ 0, %.critedge ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i16 %.sroa.015.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZL31combineVectorSizedSetCCEqualityN4llvm3EVTENS_7SDValueES1_NS_3ISD8CondCodeERKNS_5SDLocERNS_12SelectionDAGERKNS_14RISCVSubtargetEENK3$_2clENS_3MVTE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i16 %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i16 %1, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i16 %1, -2
  %or.cond.i = icmp ult i16 %i.b, 10
  %i.c = add i16 %1, -19
  %or.cond3.i = icmp ult i16 %i.c, 86
  %or.cond4.i = or i1 %or.cond.i, %or.cond3.i
  %i.d = add i16 %1, -163
  %spec.select.i = icmp ult i16 %i.d, 32
  %i.e = or i1 %spec.select.i, %or.cond4.i
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i16 %1 to i64
  %i.g = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.f ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.h = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.h, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.284) #35
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16
  %i.j = trunc i64 %.sroa.0.0.copyload.i to i32   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !2593, !nonnull !51, !align !2594
  %i.l = load i32, ptr %i.k, align 4, !tbaa !222  ; 2 uses
  %i.m = urem i32 %i.l, %i.j
  %i.n = udiv i32 %i.l, %i.j                      ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2595, !nonnull !51, !align !204
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !470
  %i.s = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %1, i32 noundef %i.n) ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %bb.f, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

bb.f:                                             ; preds = %bb.e
  %i.t = tail call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i16 %1, ptr null, i32 noundef %i.n, i1 noundef zeroext false) #34
  %i.u = extractvalue { i16, ptr } %i.t, 0
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi i16 [ %i.u, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2596, !nonnull !51, !align !204 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(519768) %i.w) #34
  %.not.i11 = icmp eq i16 %.sroa.0.0.i, 0
  br i1 %.not.i11, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = zext i16 %.sroa.0.0.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !206
  %i.af = icmp ne ptr %i.ae, null
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, %bb.a, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %bb.a ], [ false, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %i.af, %bb.g ]
  ret i1 %.1
}

declare { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZZL20combineTruncToVnclipPN4llvm6SDNodeERNS_12SelectionDAGERKNS_14RISCVSubtargetEENK3$_0clENS_7SDValueEjjRNS_5APIntE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i32 noundef range(i32 187, 190) %2, i32 noundef range(i32 695, 752) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %.not = icmp eq i32 %i.b, %2
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !381
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, %3
  br i1 %i.c, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !381  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !362
  %i.j = add i32 %i.i, -53
  %spec.select.i.i = icmp ult i32 %i.j, 2
  br i1 %spec.select.i.i, label %bb.d, label %.critedge15

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2598, !nonnull !51, !align !204 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !392
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.r, %i.t
  %i.v = select i1 %i.p, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %.critedge15

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.x = load ptr, ptr %0, align 8, !tbaa !2599, !nonnull !51, !align !204 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !392
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !392
  %i.aa = icmp eq ptr %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ac, %i.ae
  %i.ag = select i1 %i.aa, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.f, label %.critedge15

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.030.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !383 ; 5 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !222 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !362
  %i.am = icmp eq i32 %i.al, 166
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  br i1 %i.am, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 40 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !381 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !392
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !362
  %i.as = add i32 %i.ar, -53
  %spec.select.i.i16 = icmp ult i32 %i.as, 2
  br i1 %spec.select.i.i16, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %.sroa.04.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !383
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !222
  %i.au = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload) #34
  br i1 %i.au, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !381 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !392 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !471
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !361
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bd, align 8, !tbaa !216 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !334
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.be, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, label %.split

.split:                                           ; preds = %bb.i
  %i.bf = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i17 = icmp ult i16 %i.bf, 144
  br i1 %spec.select.i.i17, label %bb.j, label %.critedge

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit:        ; preds = %bb.i
  %i.bg = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  br i1 %i.bg, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.split, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !362
  %i.bj = icmp eq i32 %i.bi, 167
  br i1 %i.bj, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !381 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !392
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !471
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !361
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i18 = load i16, ptr %i.bs, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.21.0.copyload.i.i20 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i19, align 8, !tbaa !334
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !361
  %i.bv = zext i32 %.sroa.19.0.copyload to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %.sroa.0.0.copyload.i.i23 = load i16, ptr %i.bw, align 8, !tbaa !216
  %.sroa.21.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.21.0.copyload.i.i25 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i24, align 8, !tbaa !334
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i18, %.sroa.0.0.copyload.i.i23
  %i.bx = icmp eq ptr %.sroa.21.0.copyload.i.i20, %.sroa.21.0.copyload.i.i25
  %.not4.i = select i1 %.not.i.i, i1 %i.bx, i1 false
  br i1 %.not4.i, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.by, align 8, !tbaa !383
end_hunk_1
