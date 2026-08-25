Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK4llvm4bolt14BinaryFunction22getOutputAddressRangesEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.bv, %i.bc
  br i1 %.not1.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_4bolt14BinaryFunctionEEppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJmmEEERS2_DpOT_.exit20, %bb.i
  %.sroa.021.1 = phi ptr [ %i.by, %bb.i ], [ %i.bv, %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJmmEEERS2_DpOT_.exit20 ] ; 3 uses
  %i.bw = load ptr, ptr %.sroa.021.1, align 8, !tbaa !703
  %i.bx = icmp eq ptr %i.bw, inttoptr (i64 -1 to ptr)
  br i1 %i.bx, label %bb.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_4bolt14BinaryFunctionEEppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.021.1, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, %i.bc
  br i1 %.not.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_4bolt14BinaryFunctionEEppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !704

_ZN4llvm19SmallPtrSetIteratorIPNS_4bolt14BinaryFunctionEEppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.i, %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJmmEEERS2_DpOT_.exit20
  %.sroa.021.2 = phi ptr [ %i.bv, %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJmmEEERS2_DpOT_.exit20 ], [ %.sroa.021.1, %.lr.ph.i.i.i ], [ %i.by, %bb.i ] ; 2 uses
  %.not32 = icmp eq ptr %.sroa.021.2, %i.bg
  br i1 %.not32, label %.loopexit, label %.lr.ph38

.loopexit:                                        ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_4bolt14BinaryFunctionEEppEv.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_4bolt14BinaryFunctionEE5beginEv.exit, %bb.a, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK4llvm4bolt14BinaryFunction29translateInputToOutputAddressEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1360) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !702
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !673
  %i.e = and i8 %i.d, -2
  %spec.select.i = icmp eq i8 %i.e, 4
  br i1 %spec.select.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !506  ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24, !nonnull !19, !align !152 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 864
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2350, !range !18, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 808
  %i.o = load i64, ptr %i.n, align 8, !tbaa !2351
  %.not.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 800
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.p, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !623 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !408
  %i.s = icmp eq i64 %1, %i.r
  br i1 %i.s, label %.loopexit, label %bb.g, !llvm.loop !2353

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 784
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 792
  %i.v = load i64, ptr %i.u, align 8, !tbaa !2354 ; 2 uses
  %i.w = urem i64 %1, %i.v                        ; 2 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2355
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !639  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !623 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !408
  %i.ad = icmp eq i64 %1, %i.ac
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.ae = icmp eq i64 %1, %i.ah
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2356

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %.020.i.i.i.i.i = phi ptr [ %i.af, %bb.k ], [ %i.aa, %bb.j ]
  %i.af = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !623 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i.i.i.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !408 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.v
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.w
  br i1 %.not19.i.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2356

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.l
  br label %.thread, !llvm.loop !2356

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.j
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.h ], [ %i.aa, %bb.j ], [ %i.af, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !408
  br label %bb.p

.thread:                                          ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %..loopexit_crit_edge21.i.i.i.i.i, %bb.i, %bb.d
  %i.al = sub i64 %1, %i.g                        ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !477 ; 2 uses
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i16 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i16, label %bb.n, label %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i

_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i: ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = zext i32 %i.aq to i64
  br label %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i

_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.at, %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i = phi ptr [ %i.as, %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 2 uses
  %i.au = lshr i64 %.017.i.i.i.i.i, 1             ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !478
  %i.ax = icmp ult i64 %i.al, %i.aw               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = xor i64 %i.au, -1
  %i.ba = add nsw i64 %.017.i.i.i.i.i, %i.az
  %.112.i.i.i.i.i = select i1 %i.ax, ptr %.01116.i.i.i.i.i, ptr %i.ay ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.ax, i64 %i.au, i64 %i.ba ; 2 uses
  %i.bb = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit.i.i, !llvm.loop !481

_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %.112.i.i.i.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !483 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 132
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !484
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp ult i64 %i.al, %i.bg
  br i1 %i.bh, label %_ZNK4llvm4bolt14BinaryFunction29getBasicBlockContainingOffsetEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit.i.i, %.thread, %bb.m
  %i.bi = icmp eq i64 %i.al, %i.an
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !2340
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !2341
  %i.bn = add i64 %i.bm, %i.bk
  br label %bb.p

_ZNK4llvm4bolt14BinaryFunction29getBasicBlockContainingOffsetEm.exit: ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !776
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 124
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !777
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.al, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !790
  %i.bx = zext i32 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bt)
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o, %_ZNK4llvm4bolt14BinaryFunction29getBasicBlockContainingOffsetEm.exit, %bb.n, %bb.c, %bb.b, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %bb.c ], [ %i.ak, %.loopexit ], [ %.sroa.speculated, %_ZNK4llvm4bolt14BinaryFunction29getBasicBlockContainingOffsetEm.exit ], [ %i.bn, %bb.o ], [ 0, %bb.n ]
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt14BinaryFunction27translateInputToOutputRangeENS0_17DebugAddressRangeE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.1263") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1360) %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !427
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 2, ptr %i.e, align 4, !tbaa !589
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !702
  %.not60 = icmp eq ptr %i.g, null
  br i1 %.not60, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !673
  %i.j = and i8 %i.i, -2
  %spec.select.i = icmp eq i8 %i.j, 4
  br i1 %spec.select.i, label %bb.c, label %.critedge.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !506  ; 4 uses
  %.not9.i = icmp ule i64 %i.l, %2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = add i64 %i.n, %i.l
  %i.p = icmp ult i64 %2, %i.o
  %i.q = select i1 %.not9.i, i1 %i.p, i1 false
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %2, %3
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef i64 @_ZNK4llvm4bolt14BinaryFunction29translateInputToOutputAddressEm(ptr noundef nonnull align 8 dereferenceable(1360) %1, i64 noundef %2) ; 3 uses
  %.not32 = icmp eq i64 %i.s, 0
  br i1 %.not32, label %.critedge, label %.critedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.t = sub i64 %2, %i.l                         ; 3 uses
  %i.u = sub i64 %3, %i.l
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.u) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !427  ; 2 uses
  %.not.i37 = icmp eq i32 %i.y, 0
  br i1 %.not.i37, label %_ZN4llvm11upper_boundIRKNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit, label %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %bb.f
  %i.z = zext i32 %i.y to i64
  br label %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.z, %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.w, %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.aa = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !478
  %i.ad = icmp ult i64 %i.t, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = xor i64 %i.aa, -1
  %i.ag = add nsw i64 %.017.i.i.i, %i.af
  %.112.i.i.i = select i1 %i.ad, ptr %.01116.i.i.i, ptr %i.ae ; 2 uses
  %.1.i.i.i = select i1 %i.ad, i64 %i.aa, i64 %i.ag ; 2 uses
  %i.ah = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ah, label %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11upper_boundIRKNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit, !llvm.loop !2357

_ZN4llvm11upper_boundIRKNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit: ; preds = %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.f
  %.011.lcssa.i.i.i = phi ptr [ %i.w, %bb.f ], [ %.112.i.i.i, %_ZSt9__advanceIPKSt4pairImPN4llvm4bolt16BinaryBasicBlockEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ]
  %i.ai = icmp ult i64 %i.t, %.sroa.speculated
  br i1 %i.ai, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11upper_boundIRKNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit
  %i.aj = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.02763 = phi ptr [ %i.cj, %bb.t ], [ %i.aj, %.lr.ph.preheader ] ; 3 uses
  %.062 = phi i64 [ %.pre-phi, %bb.t ], [ %i.t, %.lr.ph.preheader ] ; 4 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.al = load i32, ptr %i.x, align 8, !tbaa !427
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am
  %.not = icmp eq ptr %.02763, %i.an
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.02763, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !483 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !790
  %i.as = zext i32 %i.ar to i64                   ; 3 uses
  %i.at = icmp ult i64 %.062, %i.as
  br i1 %i.at, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 132 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !484
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.not30 = icmp ult i64 %.062, %i.aw
  br i1 %.not30, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 120 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !776 ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 124 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !777
  %i.bc = zext i32 %i.bb to i64
  %.not31 = icmp eq i32 %i.ay, 0
  br i1 %.not31, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bd = icmp samesign ugt i64 %.062, %i.as
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = sub nuw nsw i64 %.062, %i.as
  %i.bf = add nuw nsw i64 %i.be, %i.az
  %.sroa.speculated.i = call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = phi i64 [ %.sroa.speculated.i, %bb.k ], [ %i.az, %bb.j ] ; 5 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !776
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !777
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !408
  %i.bk = load i32, ptr %i.au, align 4, !tbaa !484
  %i.bl = zext i32 %i.bk to i64                   ; 3 uses
  %i.bm = icmp ult i64 %.sroa.speculated, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = zext i32 %i.bh to i64
  %i.bo = load i32, ptr %i.aq, align 8, !tbaa !790
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %.sroa.speculated, %i.bn
  %i.br = sub nsw i64 %i.bq, %i.bp
  %.sroa.speculated.i42 = call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.br, i64 %i.bj) ; 2 uses
  store i64 %.sroa.speculated.i42, ptr %i.b, align 8, !tbaa !408
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = phi i64 [ %.sroa.speculated.i42, %bb.m ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bt = load i32, ptr %i.d, align 8, !tbaa !427 ; 5 uses
  %.not.i43 = icmp eq i32 %i.bt, 0
  br i1 %.not.i43, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %0, align 8, !tbaa !21
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !2349
  %i.bz = icmp eq i64 %i.by, %i.bg
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %4 = icmp samesign ult i64 %i.bg, %i.bs
  %..i44 = select i1 %4, ptr %i.b, ptr %i.bx
  %5 = load i64, ptr %..i44, align 8, !tbaa !408
  store i64 %5, ptr %i.bx, align 8, !tbaa !2349
  br label %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJRmRKmEEERS2_DpOT_.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ca = icmp samesign ult i64 %i.bg, %i.bs
  %..i45 = select i1 %i.ca, ptr %i.b, ptr %i.a    ; 2 uses
  %i.cb = load i32, ptr %i.e, align 4, !tbaa !589
  %.not.i46 = icmp ult i32 %i.bt, %i.cb
  br i1 %.not.i46, label %bb.s, label %bb.r, !prof !575

bb.r:                                             ; preds = %bb.q
  %i.cc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_4bolt17DebugAddressRangeELb1EE18growAndEmplaceBackIJRmRKmEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %..i45) ; 0 uses
  %.pre.pre = load ptr, ptr %i.ao, align 8, !tbaa !483
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 132
  %.pre67.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !484
  %.pre71 = zext i32 %.pre67.pre to i64
  br label %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJRmRKmEEERS2_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.cd = zext i32 %i.bt to i64
  %i.ce = load ptr, ptr %0, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load i64, ptr %..i45, align 8, !tbaa !408
  store i64 %i.bg, ptr %i.cf, align 8, !tbaa !2347
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !2349
  %i.ci = add nuw i32 %i.bt, 1
  store i32 %i.ci, ptr %i.d, align 8, !tbaa !427
  br label %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJRmRKmEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJRmRKmEEERS2_DpOT_.exit: ; preds = %bb.s, %bb.r, %bb.p
  %.pre70.pre-phi = phi i64 [ %i.bl, %bb.s ], [ %.pre71, %bb.r ], [ %i.bl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJRmRKmEEERS2_DpOT_.exit, %bb.i
  %.pre-phi = phi i64 [ %.pre70.pre-phi, %_ZN4llvm15SmallVectorImplINS_4bolt17DebugAddressRangeEE12emplace_backIJRmRKmEEERS2_DpOT_.exit ], [ %i.aw, %bb.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02763, i64 16
  %i.ck = icmp ugt i64 %.sroa.speculated, %.pre-phi
  br i1 %i.ck, label %.lr.ph, label %.critedge, !llvm.loop !2358

.critedge.sink.split:                             ; preds = %bb.e, %bb.b
  %.sink81 = phi i64 [ %2, %bb.b ], [ %i.s, %bb.e ]
  %.sink = phi i64 [ %3, %bb.b ], [ %i.s, %bb.e ]
  store i64 %.sink81, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.d, align 8, !tbaa !427
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.t, %bb.h, %bb.g, %.critedge.sink.split, %_ZN4llvm11upper_boundIRKNS_11SmallVectorISt4pairImPNS_4bolt16BinaryBasicBlockEELj0EEES6_NS3_14BinaryFunction24CompareBasicBlockOffsetsEEEDaOT_OT0_T1_.exit, %bb.a, %bb.c, %bb.e
  ret void
}

declare noundef i32 @_ZNK4llvm4bolt13MCPlusBuilder20getOffsetWithDefaultERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #4

declare i64 @_ZNK4llvm4bolt13MCPlusBuilder7getSizeERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZN4llvm4bolt14BinaryFunction30getInstructionContainingOffsetEm(ptr nofree noundef nonnull readonly align 8 dereferenceable(1360) %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !477
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !745  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11upper_boundERS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !573
  %i.j = icmp ugt i32 %i.i, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.j, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.j, i64 16, i64 24
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !760 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11upper_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2359

_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11upper_boundERS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.08.lcssa.i.i.i = phi ptr [ %i.g, %bb.b ], [ %.19.i.i.i, %.lr.ph.i.i.i ]
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i) #35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11upper_boundERS5_.exit
  %.0 = phi ptr [ %i.l, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11upper_boundERS5_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt14BinaryFunction13printLoopInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.anon.1949, align 8           ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::optional.476", align 8 ; 4 uses
  %5 = alloca %"class.std::optional.476", align 8 ; 7 uses
  %6 = alloca %"class.std::stack.1240", align 8   ; 19 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::format_object.1273", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24, !nonnull !19, !align !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i8, ptr %i.d, align 8, !tbaa !153, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ne ptr %i.h, null
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond.i, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.k = load i8, ptr %i.j, align 1, !tbaa !396, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread161, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9PrintOnlyB5cxx11E, i64 120), align 8, !tbaa !397 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9PrintOnlyB5cxx11E, i64 128), align 8, !tbaa !397 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.n
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %.sroa.011.018.i = phi ptr [ %i.m, %.preheader.i ], [ %i.q, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.r = load ptr, ptr %.sroa.011.018.i, align 8, !tbaa !399
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !400
  call void @_ZNK4llvm4bolt14BinaryFunction12hasNameRegexENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.476") align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(1360) %0, ptr %i.r, i64 %i.t)
  %i.u = load i8, ptr %i.p, align 8, !tbaa !401, !range !18, !noundef !19
  %i.v = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.v, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread, label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !406, !noalias !2360 ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread163, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit

_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread163: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread161

_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !399, !noalias !2360
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !400, !noalias !2360
  store ptr %i.z, ptr %5, align 8, !tbaa !407, !alias.scope !2360
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !408, !alias.scope !2360
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.ac, align 8, !tbaa !401, !alias.scope !2360
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9PrintOnlyB5cxx11E, i64 120), align 8, !tbaa !397
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9PrintOnlyB5cxx11E, i64 128), align 8, !tbaa !397
  %i.af = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKN4llvm9StringRefEEEET_SJ_SJ_T0_St26random_access_iterator_tag(ptr %i.ad, ptr %i.ae, ptr nonnull align 8 dereferenceable(16) %5)
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9PrintOnlyB5cxx11E, i64 128), align 8, !tbaa !397
  %.not184 = icmp eq ptr %i.af, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.not184, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread161, label %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread

_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread: ; preds = %bb.e, %bb.a, %bb.c, %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 17 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !538
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 51 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !542 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 24
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread
  %i.ap = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.252, i64 noundef 24) #30
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %_ZN4opts11shouldPrintERKN4llvm4bolt14BinaryFunctionE.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ak, ptr noundef nonnull align 1 dereferenceable(24) @.str.252, i64 24, i1 false)
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !542
end_hunk_0
