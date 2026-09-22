Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExprConstant?download=true
inline.NumInlined: 5733
inline.NumDeleted: 2819
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 32 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 33 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !458  ; 2 uses
  %.not.i40 = icmp eq i32 %i.f, 0
  br i1 %.not.i40, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph: ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = load i32, ptr %i.r, align 8, !tbaa !458
  %i.t = zext i32 %i.s to i64
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit
  %i.u = phi i32 [ %i.f, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph ], [ %i.akj, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !457  ; 4 uses
  %i.w = zext i32 %i.u to i64
  br label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.w, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.v, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.x = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !456
  %i.aa = icmp slt i64 %1, %i.z                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = xor i64 %i.x, -1
  %i.ad = add nsw i64 %.017.i.i.i, %i.ac
  %.112.i.i.i = select i1 %i.aa, ptr %.01116.i.i.i, ptr %i.ab ; 3 uses
  %.1.i.i.i = select i1 %i.aa, i64 %i.x, i64 %i.ad ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit, !llvm.loop !923

_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.af = icmp eq ptr %.112.i.i.i, %i.v
  br i1 %i.af, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit
  %i.ag = ptrtoint ptr %.112.i.i.i to i64
  %i.ah = ptrtoint ptr %i.v to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 33 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 18 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !456
  %i.an = icmp eq i64 %i.am, %1
  br i1 %i.an, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !457
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !472
  %.val = load ptr, ptr %0, align 8, !tbaa !561
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val4 = load ptr, ptr %i.ar, align 8, !tbaa !476
  %i.as = getelementptr i8, ptr %.val, i64 200
  %.val.val = load ptr, ptr %i.as, align 8, !tbaa !453
  %i.at = getelementptr inbounds nuw i8, ptr %.val.val, i64 296
  %i.au = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.at, ptr noundef %.val4) #22 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.au, 1
  %i.av = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.av, label %bb.e, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit: ; preds = %bb.d
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.au, 0
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !456
  %i.ax = add nsw i64 %i.aw, %.fca.0.extract.i.i
  %.not28 = icmp sgt i64 %i.ax, %1
  br i1 %.not28, label %bb.f, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit
  store i8 0, ptr %i.h, align 8, !tbaa !497
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !457 ; 9 uses
  %.idx.i = shl nuw nsw i64 %i.ak, 3              ; 14 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i ; 8 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !472 ; 27 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !457 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ak
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !432 ; 47 uses
  %i.be = load i8, ptr %i.ba, align 8, !tbaa !564 ; 4 uses
  %i.bf = add i8 %i.be, -14
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bf, -3
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 16 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 268435455                ; 4 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ai ; 2 uses
  %i.bl = icmp eq i32 %i.bi, 0
  br i1 %i.bl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.g
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !535
  store ptr %i.bo, ptr %i.az, align 8, !tbaa !472
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bq = icmp eq i32 %i.bi, 1
  br i1 %i.bq, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.1.i

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %.lr.ph.i.i.i.preheader.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.az, %bb.g ], [ %i.bp, %.lr.ph.i.i.i.preheader.i ], [ %i.in, %bb.z ] ; 3 uses
  %i.br = load i32, ptr %i.i, align 8, !tbaa !458
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nsw i64 %i.bs, %i.aj                ; 3 uses
  %gepdiff.i.i = shl nsw i64 %i.bt, 3             ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.h, label %bb.i, !prof !506

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.lcssa.i.i.i.i, ptr nonnull align 8 %i.bk, i64 %gepdiff.i.i, i1 false)
  %.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = icmp eq i64 %i.bt, 1
  br i1 %i.bv, label %bb.j, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !472
  store ptr %i.bw, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bx = phi ptr [ %.pre.i.i.i.i.i, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.j ]
  %i.by = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i, i64 %gepdiff.i.i
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.k:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !458 ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = icmp samesign eq i64 %i.aj, %i.cf
  %i.ch = add nsw i64 %i.bj, -1                   ; 11 uses
  %i.ci = add nuw nsw i64 %i.ch, %i.cf            ; 3 uses
  %i.cj = load i32, ptr %i.j, align 4, !tbaa !482
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ugt i64 %i.ci, %i.ck      ; 2 uses
  br i1 %i.cg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.cl, label %bb.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.ci, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre96.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre500.i = zext i32 %.pre.i.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.m, %bb.l
  %.pre-phi.i = phi i64 [ %i.aj, %bb.l ], [ %.pre500.i, %bb.m ]
  %.pre96.i.i.i.i.i = phi ptr [ %i.ay, %bb.l ], [ %.pre96.pre.i.i.i.i.i, %bb.m ]
  %i.cm = phi i32 [ %i.ce, %bb.l ], [ %.pre.i.i.i.i.i.i, %bb.m ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre96.i.i.i.i.i, i64 %.pre-phi.i ; 2 uses
  %i.co = icmp ne i64 %i.ch, 0
  %umin224 = zext i1 %i.co to i64                 ; 2 uses
  %i.cp = sub nsw i64 %i.bj, %umin224             ; 3 uses
  %xtraiter225 = and i64 %i.cp, 1
  %i.cq = add nsw i64 %i.bj, -1
  %i.cr = icmp eq i64 %i.cq, %umin224
  br i1 %i.cr, label %.epil.preheader223, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %unroll_iter228 = and i64 %i.cp, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.dh, %bb.n ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.dg, %bb.n ] ; 3 uses
  %niter229 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %niter229.next.1, %bb.n ]
  %i.cs = load i32, ptr %i.bg, align 4
  %i.ct = and i32 %i.cs, 268435455
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !535
  store ptr %i.cy, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.cz = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.da = load i32, ptr %i.bg, align 4
  %i.db = and i32 %i.da, 268435455
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.dd
  %3 = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = load ptr, ptr %4, align 8, !tbaa !535
  store ptr %i.df, ptr %i.cz, align 8, !tbaa !472
  %i.dg = add nuw nsw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %niter229.next.1 = add nuw i64 %niter229, 2     ; 2 uses
  %niter229.ncmp.1.not = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1.not, label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.unr-lcssa", label %bb.n, !llvm.loop !924

"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.unr-lcssa": ; preds = %bb.n
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i", label %.epil.preheader223

.epil.preheader223:                               ; preds = %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dh, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.unr-lcssa" ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dg, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod227 = trunc i64 %i.cp to i1
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.di = load i32, ptr %i.bg, align 4
  %i.dj = and i32 %i.di, 268435455
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = sub nsw i64 0, %i.dk
  %i.dm = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !535
  store ptr %i.do, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, align 8, !tbaa !472
  br label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i"

"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.unr-lcssa", %.epil.preheader223
  %i.dp = trunc nuw nsw i64 %i.ch to i32
  %i.dq = add i32 %i.cm, %i.dp
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.o:                                             ; preds = %bb.k
  br i1 %i.cl, label %bb.p, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.ci, i64 noundef 8) #22
  %.pre.i12.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre94.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre98.i.i.i.i.i = zext i32 %.pre94.i.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.cf, %bb.o ], [ %.pre98.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.dr = phi i32 [ %i.ce, %bb.o ], [ %.pre94.i.i.i.i.i, %bb.p ] ; 2 uses
  %i.ds = phi ptr [ %i.ay, %bb.o ], [ %.pre.i12.i.i.i.i, %bb.p ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ai ; 7 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i.i.i.i.i, 3 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i.i.i.i ; 6 uses
  %gepdiff.i.i.i.i.i = sub nsw i64 %.idx.i.i.i.i.i, %i.ai ; 4 uses
  %i.dv = ashr exact i64 %gepdiff.i.i.i.i.i, 3    ; 4 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dv, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i
  %.neg.i.i.i.i.i = mul nsw i64 %i.ch, -8         ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %.neg.i.i.i.i.i ; 2 uses
  %.idx83.neg.i.i.i.i.i = shl nuw nsw i64 %i.ch, 3
  %i.dx = add nuw nsw i64 %.pre-phi.i.i.i.i.i, %i.ch ; 2 uses
  %i.dy = load i32, ptr %i.j, align 4, !tbaa !482
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ugt i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.r, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.dx, i64 noundef 8) #22
  %.pre.i37.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre12.i.i.i.i.i.i = zext i32 %.pre.i37.i.i.i.i.i to i64
  %.pre95.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.eb = phi ptr [ %i.ds, %bb.q ], [ %.pre95.i.i.i.i.i, %bb.r ]
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i.i, %bb.q ], [ %.pre12.i.i.i.i.i.i, %bb.r ]
  %i.ec = phi i32 [ %i.dr, %bb.q ], [ %.pre.i37.i.i.i.i.i, %bb.r ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.pre-phi.i.i.i.i.i.i ; 2 uses
  %i.ee = icmp samesign ugt i32 %i.bi, 2
  br i1 %i.ee, label %bb.s, label %bb.t, !prof !506

bb.s:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ed, ptr nonnull align 8 %i.dw, i64 %.idx83.neg.i.i.i.i.i, i1 false)
  %.pre11.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !472
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.eg = phi i32 [ %.pre11.i.i.i.i.i.i, %bb.s ], [ %i.ec, %bb.t ]
  %i.eh = trunc nuw nsw i64 %i.ch to i32
  %i.ei = add i32 %i.eg, %i.eh
  store i32 %i.ei, ptr %i.i, align 8, !tbaa !458
  %i.ej = sub i64 %.neg.i.i.i.i.i, %i.ai
  %gepdiff86.i.i.i.i.i = add i64 %.idx.i.i.i.i.i, %i.ej ; 3 uses
  %i.ek = ashr exact i64 %gepdiff86.i.i.i.i.i, 3  ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 1
  br i1 %i.el, label %bb.u, label %bb.v, !prof !506

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i
  %i.em = sub nsw i64 0, %i.ek
  %i.en = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.em
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr nonnull align 8 %i.dt, i64 %gepdiff86.i.i.i.i.i, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

bb.v:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i
  %i.eo = icmp eq i64 %gepdiff86.i.i.i.i.i, 8
  br i1 %i.eo, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

bb.w:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds i8, ptr %i.du, i64 -8
  %i.eq = load ptr, ptr %i.dt, align 8, !tbaa !472
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !472
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.w, %bb.v, %bb.u
  %i.er = icmp ne i64 %i.ch, 0
  %umin = zext i1 %i.er to i64                    ; 2 uses
  %i.es = sub nsw i64 %i.bj, %umin                ; 3 uses
  %xtraiter = and i64 %i.es, 1
  %i.et = add nsw i64 %i.bj, -1
  %i.eu = icmp eq i64 %i.et, %umin
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.es, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.044.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ev = load i32, ptr %i.bg, align 4
  %i.ew = and i32 %i.ev, 268435455
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !535
  store ptr %i.fb, ptr %.044.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.fc = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fd = load i32, ptr %i.bg, align 4
  %i.fe = and i32 %i.fd, 268435455
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.fg
  %5 = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fi = load ptr, ptr %6, align 8, !tbaa !535
  store ptr %i.fi, ptr %i.fc, align 8, !tbaa !472
  %i.fj = add nuw nsw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !924

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i
  %i.fl = trunc nuw nsw i64 %i.ch to i32
  %i.fm = add i32 %i.dr, %i.fl                    ; 2 uses
  store i32 %i.fm, ptr %i.i, align 8, !tbaa !458
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %.idx.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fn
  %i.fp = sub nsw i64 0, %i.dv
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fq, ptr nonnull align 8 %i.dt, i64 %gepdiff.i.i.i.i.i, i1 false)
  %i.fr = icmp eq i64 %gepdiff.i.i.i.i.i, 8
  br i1 %i.fr, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter219 = and i64 %i.dv, -2
  br label %bb.y

._crit_edge.i.i.i.i.i.unr-lcssa:                  ; preds = %bb.y
  %i.fs = and i64 %gepdiff.i.i.i.i.i, 8
  %lcmp.mod216.not = icmp eq i64 %i.fs, 0
  br i1 %lcmp.mod216.not, label %._crit_edge.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.091.i.i.i.i.i.epil.init = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %i.ic, %._crit_edge.i.i.i.i.i.unr-lcssa ]
  %.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.id, %._crit_edge.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod218 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.ft = load i32, ptr %i.bg, align 4
  %i.fu = and i32 %i.ft, 268435455
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = sub nsw i64 0, %i.fv
  %i.fx = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.fw
  %i.fy = and i64 %.epil.init, 4294967295
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !535
  store ptr %i.ga, ptr %.091.i.i.i.i.i.epil.init, align 8, !tbaa !472
  %i.gb = add i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.id, %._crit_edge.i.i.i.i.i.unr-lcssa ], [ %i.gb, %.epil.preheader ] ; 2 uses
  %.pre99.i.i.i.i.i = sub i64 %i.bj, %.lcssa      ; 2 uses
  %i.gc = icmp sgt i64 %.pre99.i.i.i.i.i, 0
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i, %bb.x
  %.lcssa.i.i.i.i585.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i.i.i ], [ 1, %bb.x ] ; 4 uses
  %.pre-phi100.i.i.i.i584.i = phi i64 [ %.pre99.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ch, %bb.x ] ; 3 uses
  %i.gd = add i64 %.pre-phi100.i.i.i.i584.i, %.lcssa.i.i.i.i585.i
  %xtraiter221 = and i64 %.pre-phi100.i.i.i.i584.i, 1
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = load i32, ptr %i.bg, align 4
  %i.gf = and i32 %i.ge, 268435455
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.gh
  %i.gj = and i64 %.lcssa.i.i.i.i585.i, 4294967295
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !535
  store ptr %i.gl, ptr %i.du, align 8, !tbaa !472
  %i.gm = add i64 %.lcssa.i.i.i.i585.i, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %.prol.loopexit.unr-lcssa ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.lcssa.i.i.i.i585.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  %i.go = icmp eq i64 %.pre-phi100.i.i.i.i584.i, 1
  br i1 %i.go, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new:             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.gp = load i32, ptr %i.bg, align 4
  %i.gq = and i32 %i.gp, 268435455
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.gs
  %i.gu = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !535
  store ptr %i.gw, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.gx = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gz = load i32, ptr %i.bg, align 4
  %i.ha = and i32 %i.gz, 268435455
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hc
  %i.he = and i64 %i.gx, 4294967295
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !535
  store ptr %i.hg, ptr %i.gy, align 8, !tbaa !472
  %i.hh = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %exitcond.not.i.1 = icmp eq i64 %i.hh, %i.gd
  br i1 %exitcond.not.i.1, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new, !llvm.loop !924

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.new
  %.091.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.new ], [ %i.ic, %bb.y ] ; 3 uses
  %i.hj = phi i64 [ 1, %.lr.ph.i.i.i.i.i.new ], [ %i.id, %bb.y ] ; 3 uses
  %niter220 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter220.next.1, %bb.y ]
  %i.hk = load i32, ptr %i.bg, align 4
  %i.hl = and i32 %i.hk, 268435455
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hn
  %i.hp = and i64 %i.hj, 4294967295
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !535
  store ptr %i.hr, ptr %.091.i.i.i.i.i, align 8, !tbaa !472
  %i.hs = getelementptr inbounds nuw i8, ptr %.091.i.i.i.i.i, i64 8
  %i.ht = add i64 %i.hj, 1
  %i.hu = load i32, ptr %i.bg, align 4
  %i.hv = and i32 %i.hu, 268435455
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = sub nsw i64 0, %i.hw
  %i.hy = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hx
  %i.hz = and i64 %i.ht, 4294967295
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !535
  store ptr %i.ib, ptr %i.hs, align 8, !tbaa !472
  %i.ic = getelementptr inbounds nuw i8, ptr %.091.i.i.i.i.i, i64 16 ; 2 uses
  %i.id = add i64 %i.hj, 2                        ; 3 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %._crit_edge.i.i.i.i.i.unr-lcssa, label %bb.y, !llvm.loop !925

.lr.ph.i.i.i.1.i:                                 ; preds = %.lr.ph.i.i.i.preheader.i
  %i.ie = add nuw nsw i64 %.idx.i, 8
  %i.if = icmp samesign eq i64 %i.ie, %i.ai
  br i1 %i.if, label %bb.k, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.ig = load i32, ptr %i.bg, align 4
  %i.ih = and i32 %i.ig, 268435455
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !535
  store ptr %i.im, ptr %i.bp, align 8, !tbaa !472
  %i.in = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %._crit_edge.i.i.i.i

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split": ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i"
  %.sink = phi i32 [ %i.dq, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i" ], [ %i.cd, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa", %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.044.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fk, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa" ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fj, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa" ]
  %lcmp.mod214 = trunc i64 %i.es to i1
  call void @llvm.assume(i1 %lcmp.mod214)
  %i.io = load i32, ptr %i.bg, align 4
  %i.ip = and i32 %i.io, 268435455
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = sub nsw i64 0, %i.iq
  %i.is = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ir
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !535
  store ptr %i.iu, ptr %.044.i.i.i.i.i.i.i.i.i.i.epil.init, align 8, !tbaa !472
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa", %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split", %._crit_edge.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !476 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i32, ptr %i.ix, align 8            ; 2 uses
  %i.iz = and i32 %i.iy, 255
  %i.ja = icmp eq i32 %i.iz, 17
  %i.jb = and i32 %i.iy, 254
  %spec.select.i.i.i.i.i.i.i.i60.i = icmp eq i32 %i.jb, 18
  %or.cond.i = or i1 %i.ja, %spec.select.i.i.i.i.i.i.i.i60.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.aq

.critedge.i:                                      ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"
  %i.jc = call noundef ptr @_ZN4llvm17GetElementPtrInst14getTypeAtIndexEPNS_4TypeEm(ptr noundef nonnull %i.iw, i64 noundef 0) #22
  %.val45.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.jd = getelementptr i8, ptr %.val45.i, i64 200
  %.val45.val.i = load ptr, ptr %i.jd, align 8, !tbaa !453
  %i.je = getelementptr inbounds nuw i8, ptr %.val45.val.i, i64 296
  %i.jf = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.je, ptr noundef %i.jc) #22 ; 2 uses
  %.fca.1.extract.i.i5 = extractvalue { i64, i8 } %i.jf, 1
  %i.jg = trunc nuw i8 %.fca.1.extract.i.i5 to i1
  br i1 %i.jg, label %bb.aa, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i

bb.aa:                                            ; preds = %.critedge.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i: ; preds = %.critedge.i
  %.fca.0.extract.i.i6 = extractvalue { i64, i8 } %i.jf, 0 ; 15 uses
  %i.jh = load i32, ptr %i.bg, align 4
  %i.ji = and i32 %i.jh, 268435455                ; 4 uses
  %i.jj = zext nneg i32 %i.ji to i64              ; 9 uses
  %i.jk = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.idx.i ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.ai ; 2 uses
  %i.jn = icmp eq i32 %i.ji, 0
  br i1 %i.jn, label %._crit_edge.i.i.i67.i, label %.lr.ph.i.i.i66.preheader.i

.lr.ph.i.i.i66.preheader.i:                       ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i
  store i64 %i.bd, ptr %i.jl, align 8, !tbaa !432
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jp = icmp eq i32 %i.ji, 1
  br i1 %i.jp, label %._crit_edge.i.i.i67.i, label %.lr.ph.i.i.i66.1.i

._crit_edge.i.i.i67.i:                            ; preds = %bb.ap, %.lr.ph.i.i.i66.preheader.i, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i
  %.0.lcssa.i.i.i68.i = phi ptr [ %i.jl, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i ], [ %i.jo, %.lr.ph.i.i.i66.preheader.i ], [ %i.qs, %bb.ap ] ; 3 uses
  %i.jq = load i32, ptr %i.e, align 8, !tbaa !458
  %i.jr = zext i32 %i.jq to i64
  %i.js = sub nsw i64 %i.jr, %i.aj                ; 3 uses
  %gepdiff.i69.i = shl nsw i64 %i.js, 3           ; 2 uses
  %i.jt = icmp sgt i64 %i.js, 1
  br i1 %i.jt, label %bb.ab, label %bb.ac, !prof !506

bb.ab:                                            ; preds = %._crit_edge.i.i.i67.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i68.i, ptr nonnull align 8 %i.jm, i64 %gepdiff.i69.i, i1 false)
  %.pre.i.i.i.i70.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i67.i
  %i.ju = icmp eq i64 %i.js, 1
  br i1 %i.ju, label %bb.ad, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.jv = load i64, ptr %i.jm, align 8, !tbaa !432
  store i64 %i.jv, ptr %.0.lcssa.i.i.i68.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.jw = phi ptr [ %.pre.i.i.i.i70.i, %bb.ab ], [ %i.jk, %bb.ac ], [ %i.jk, %bb.ad ]
  %i.jx = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i68.i, i64 %gepdiff.i69.i
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = lshr exact i64 %i.ka, 3
  %i.kc = trunc i64 %i.kb to i32                  ; 2 uses
  store i32 %i.kc, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.ae:                                            ; preds = %.lr.ph.i.i.i66.1.i
  %i.kd = load i32, ptr %i.e, align 8, !tbaa !458 ; 3 uses
  %i.ke = zext i32 %i.kd to i64                   ; 3 uses
  %i.kf = icmp samesign eq i64 %i.aj, %i.ke
  %i.kg = add nsw i64 %i.jj, -1                   ; 10 uses
  %i.kh = add nuw nsw i64 %i.kg, %i.ke            ; 3 uses
  %i.ki = load i32, ptr %i.l, align 4, !tbaa !482
  %i.kj = zext i32 %i.ki to i64
  %i.kk = icmp samesign ugt i64 %i.kh, %i.kj      ; 2 uses
  br i1 %i.kf, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %i.kk, label %bb.ag, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.kh, i64 noundef 8) #22
  %.pre.i.i.i.i.i83.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre25.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i83.i to i64
  %.pre107.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.ag, %bb.af
  %.pre107.i.i.i.i.i = phi ptr [ %i.jk, %bb.af ], [ %.pre107.pre.i.i.i.i.i, %bb.ag ]
  %.pre-phi.i.i.i.i.i81.i = phi i64 [ %i.aj, %bb.af ], [ %.pre25.i.i.i.i.i.i, %bb.ag ]
  %i.kl = phi i32 [ %i.kd, %bb.af ], [ %.pre.i.i.i.i.i83.i, %bb.ag ]
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.pre107.i.i.i.i.i, i64 %.pre-phi.i.i.i.i.i81.i ; 2 uses
  %i.kn = add nsw i64 %i.jj, -1                   ; 2 uses
  %xtraiter238 = and i64 %i.kn, 3                 ; 3 uses
  %i.ko = add nsw i32 %i.ji, -2
  %i.kp = icmp ult i32 %i.ko, 3
  br i1 %i.kp, label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new:         ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %unroll_iter241 = and i64 %i.kn, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i

.lr.ph.i.i.i.i.i.i.i.i.i82.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new
  %.04.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %i.lj, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %i.li, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ] ; 5 uses
  %niter242 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %niter242.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ]
  %i.kq = and i64 %.val13.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.kr = mul nsw i64 %i.kq, %.fca.0.extract.i.i6
  %i.ks = add nsw i64 %i.kr, %i.bd
  store i64 %i.ks, ptr %.04.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.kt = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i.i, 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.kv = and i64 %i.kt, 4294967295
  %i.kw = mul nsw i64 %i.kv, %.fca.0.extract.i.i6
  %i.kx = add nsw i64 %i.kw, %i.bd
  store i64 %i.kx, ptr %i.ku, align 8, !tbaa !432
  %i.ky = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i.i, 2
  %i.kz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.la = and i64 %i.ky, 4294967295
  %i.lb = mul nsw i64 %i.la, %.fca.0.extract.i.i6
  %i.lc = add nsw i64 %i.lb, %i.bd
  store i64 %i.lc, ptr %i.kz, align 8, !tbaa !432
  %i.ld = add i64 %.val13.i.i.i.i.i.i.i.i.i.i, 3
  %i.le = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.lf = and i64 %i.ld, 4294967295
  %i.lg = mul nsw i64 %i.lf, %.fca.0.extract.i.i6
  %i.lh = add nsw i64 %i.lg, %i.bd
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !432
  %i.li = add i64 %.val13.i.i.i.i.i.i.i.i.i.i, 4  ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter242.next.3 = add i64 %niter242, 4         ; 2 uses
  %niter242.ncmp.3 = icmp eq i64 %niter242.next.3, %unroll_iter241
  br i1 %niter242.ncmp.3, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i, !llvm.loop !926

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader:      ; preds = %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.km, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.lj, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %.val13.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.li, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod240 = icmp ne i64 %xtraiter238, 0
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader
  %.04.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ %.04.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ln, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ %.val13.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ]
  %i.lk = and i64 %.val13.i.i.i.i.i.i.i.i.i.i.epil, 4294967295
  %i.ll = mul nsw i64 %i.lk, %.fca.0.extract.i.i6
  %i.lm = add nsw i64 %i.ll, %i.bd
  store i64 %i.lm, ptr %.04.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !432
  %i.ln = add i64 %.val13.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.lo = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter238
  br i1 %epil.iter.cmp.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, !llvm.loop !927

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa"
  %i.lp = trunc nuw nsw i64 %i.kg to i32
  %i.lq = add i32 %i.kl, %i.lp                    ; 2 uses
  store i32 %i.lq, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.kk, label %bb.ai, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.kh, i64 noundef 8) #22
  %.pre.i10.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre105.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre109.i.i.i.i.i = zext i32 %.pre105.i.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.pre-phi.i.i.i.i71.i = phi i64 [ %i.ke, %bb.ah ], [ %.pre109.i.i.i.i.i, %bb.ai ] ; 3 uses
  %i.lr = phi i32 [ %i.kd, %bb.ah ], [ %.pre105.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.ls = phi ptr [ %i.jk, %bb.ah ], [ %.pre.i10.i.i.i.i, %bb.ai ] ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.ai ; 9 uses
  %.idx.i.i.i.i72.i = shl nuw nsw i64 %.pre-phi.i.i.i.i71.i, 3 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx.i.i.i.i72.i ; 6 uses
  %gepdiff.i.i.i.i73.i = sub nsw i64 %.idx.i.i.i.i72.i, %i.ai ; 2 uses
  %i.lv = ashr exact i64 %gepdiff.i.i.i.i73.i, 3  ; 7 uses
  %.not.i.i.i.i74.i = icmp ult i64 %i.lv, %i.kg
  br i1 %.not.i.i.i.i74.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i
  %.neg.i.i.i.i75.i = mul nsw i64 %i.kg, -8       ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lu, i64 %.neg.i.i.i.i75.i ; 2 uses
  %i.lx = add nuw nsw i64 %.pre-phi.i.i.i.i71.i, %i.kg ; 2 uses
  %i.ly = load i32, ptr %i.l, align 4, !tbaa !482
  %i.lz = zext i32 %i.ly to i64
  %i.ma = icmp samesign ugt i64 %i.lx, %i.lz
  br i1 %i.ma, label %bb.ak, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.lx, i64 noundef 8) #22
  %.pre.i38.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre11.i.i.i.i.i76.i = zext i32 %.pre.i38.i.i.i.i.i to i64
  %.pre63 = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.mb = phi ptr [ %i.ls, %bb.aj ], [ %.pre63, %bb.ak ]
  %.pre-phi.i34.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i71.i, %bb.aj ], [ %.pre11.i.i.i.i.i76.i, %bb.ak ]
  %i.mc = phi i32 [ %i.lr, %bb.aj ], [ %.pre.i38.i.i.i.i.i, %bb.ak ]
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.pre-phi.i34.i.i.i.i.i ; 2 uses
  %i.me = add nuw nsw i64 %i.jj, 2305843009213693950
  %i.mf = and i64 %i.me, 2305843009213693951
  %i.mg = add nuw nsw i64 %i.jj, 7
  %xtraiter232 = and i64 %i.mg, 7                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol:                ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ %i.md, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ %i.lw, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ] ; 2 uses
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ]
  %i.mh = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  store i64 %i.mh, ptr %.09.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol, !llvm.loop !928

.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.md, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ], [ %i.mj, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.lw, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ], [ %i.mi, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ]
  %i.mk = icmp samesign ult i64 %i.mf, 7
  br i1 %i.mk, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i

.lr.ph.i.i.i.i.i36.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i36.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i36.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ml = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  store i64 %i.ml, ptr %.09.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !432
  store i64 %i.mo, ptr %i.mn, align 8, !tbaa !432
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.mq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !432
  store i64 %i.mr, ptr %i.mq, align 8, !tbaa !432
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !432
  store i64 %i.mu, ptr %i.mt, align 8, !tbaa !432
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !432
  store i64 %i.mx, ptr %i.mw, align 8, !tbaa !432
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.mz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.na = load i64, ptr %i.my, align 8, !tbaa !432
  store i64 %i.na, ptr %i.mz, align 8, !tbaa !432
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.nc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !432
  store i64 %i.nd, ptr %i.nc, align 8, !tbaa !432
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.nf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !432
  store i64 %i.ng, ptr %i.nf, align 8, !tbaa !432
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i37.i.i.i.i.i.7 = icmp eq ptr %i.nh, %i.lu
  br i1 %.not.i.i.i.i.i37.i.i.i.i.i.7, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit
  %i.nj = trunc nuw nsw i64 %i.kg to i32
  %i.nk = add i32 %i.mc, %i.nj
  store i32 %i.nk, ptr %i.e, align 8, !tbaa !458
  %i.nl = sub i64 %.neg.i.i.i.i75.i, %i.ai
  %gepdiff97.i.i.i.i.i = add i64 %.idx.i.i.i.i72.i, %i.nl ; 3 uses
  %i.nm = ashr exact i64 %gepdiff97.i.i.i.i.i, 3  ; 2 uses
  %i.nn = icmp sgt i64 %i.nm, 1
  br i1 %i.nn, label %bb.al, label %bb.am, !prof !506

bb.al:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit
  %i.no = sub nsw i64 0, %i.nm
  %i.np = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.no
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.np, ptr nonnull align 8 %i.lt, i64 %gepdiff97.i.i.i.i.i, i1 false)
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i

bb.am:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit
  %i.nq = icmp eq i64 %gepdiff97.i.i.i.i.i, 8
  br i1 %i.nq, label %bb.an, label %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i

bb.an:                                            ; preds = %bb.am
  %i.nr = getelementptr inbounds i8, ptr %i.lu, i64 -8
  %i.ns = load i64, ptr %i.lt, align 8, !tbaa !432
  store i64 %i.ns, ptr %i.nr, align 8, !tbaa !432
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i:           ; preds = %bb.an, %bb.am, %bb.al
  %i.nt = icmp ne i64 %i.kg, 0
  %.neg = sext i1 %i.nt to i64
  %i.nu = add nsw i64 %.neg, %i.jj                ; 3 uses
  %min.iters.check182 = icmp ult i64 %i.nu, 4
  br i1 %min.iters.check182, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i
  %n.vec184 = and i64 %i.nu, -4                   ; 5 uses
  %i.nv = shl nsw i64 %n.vec184, 3
  %i.nw = getelementptr i8, ptr %i.lt, i64 %i.nv
  %i.nx = sub nsw i64 %i.kg, %n.vec184
  %i.ny = or disjoint i64 %n.vec184, 1
  %broadcast.splatinsert185 = insertelement <2 x i64> poison, i64 %.fca.0.extract.i.i6, i64 0
  %broadcast.splat186 = shufflevector <2 x i64> %broadcast.splatinsert185, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph183
  %index190 = phi i64 [ 0, %vector.ph183 ], [ %index.next194, %vector.body189 ] ; 2 uses
  %vec.ind191 = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph183 ], [ %vec.ind.next195, %vector.body189 ] ; 3 uses
  %step.add192 = add nuw nsw <2 x i64> %vec.ind191, splat (i64 2)
  %i.nz = shl i64 %index190, 3
  %next.gep193 = getelementptr i8, ptr %i.lt, i64 %i.nz ; 2 uses
  %i.oa = mul nsw <2 x i64> %vec.ind191, %broadcast.splat186
  %i.ob = mul nsw <2 x i64> %step.add192, %broadcast.splat186
  %i.oc = add nsw <2 x i64> %i.oa, %broadcast.splat188
  %i.od = add nsw <2 x i64> %i.ob, %broadcast.splat188
  %i.oe = getelementptr i8, ptr %next.gep193, i64 16
  store <2 x i64> %i.oc, ptr %next.gep193, align 8, !tbaa !432
  store <2 x i64> %i.od, ptr %i.oe, align 8, !tbaa !432
  %index.next194 = add nuw i64 %index190, 4       ; 2 uses
  %vec.ind.next195 = add nuw nsw <2 x i64> %vec.ind191, splat (i64 4)
  %i.of = icmp eq i64 %index.next194, %n.vec184
  br i1 %i.of, label %middle.block196, label %vector.body189, !llvm.loop !929

middle.block196:                                  ; preds = %vector.body189
  %cmp.n197 = icmp eq i64 %i.nu, %n.vec184
  br i1 %cmp.n197, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i, %middle.block196
  %.02.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i ], [ %i.nw, %middle.block196 ]
  %.041.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.kg, %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i ], [ %i.nx, %middle.block196 ]
  %.ph205 = phi i64 [ 1, %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i ], [ %i.ny, %middle.block196 ]
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.i

.lr.ph.i.i.i.i.i40.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i40.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i40.i.i.i.i.i ], [ %.02.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader ] ; 2 uses
  %.041.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ol, %.lr.ph.i.i.i.i.i40.i.i.i.i.i ], [ %.041.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader ] ; 2 uses
  %i.og = phi i64 [ %i.oj, %.lr.ph.i.i.i.i.i40.i.i.i.i.i ], [ %.ph205, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader ] ; 2 uses
  %i.oh = mul nsw i64 %i.og, %.fca.0.extract.i.i6
  %i.oi = add nsw i64 %i.oh, %i.bd
  store i64 %i.oi, ptr %.02.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.oj = add nuw nsw i64 %i.og, 1
  %i.ok = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ol = add nsw i64 %.041.i.i.i.i.i.i.i.i.i.i, -1
  %i.om = icmp samesign ugt i64 %.041.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.om, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, !llvm.loop !930

bb.ao:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i
  %i.on = trunc nuw nsw i64 %i.kg to i32
  %i.oo = add i32 %i.lr, %i.on                    ; 2 uses
  store i32 %i.oo, ptr %i.e, align 8, !tbaa !458
  %.not.i.i.i.i.i.i77.i = icmp eq i64 %i.ai, %.idx.i.i.i.i72.i
  br i1 %.not.i.i.i.i.i.i77.i, label %._crit_edge.i.i.i.i79.i, label %.lr.ph.i.i.i.i78.i

.lr.ph.i.i.i.i78.i:                               ; preds = %bb.ao
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.op
  %i.or = sub nsw i64 0, %i.lv
  %i.os = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.os, ptr nonnull align 8 %i.lt, i64 %gepdiff.i.i.i.i73.i, i1 false)
  %min.iters.check162 = icmp ult i64 %i.lv, 4
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i.i.i.i78.i
  %n.vec164 = and i64 %i.lv, -4                   ; 4 uses
  %i.ot = shl nsw i64 %n.vec164, 3
  %i.ou = getelementptr i8, ptr %i.lt, i64 %i.ot
  %i.ov = and i64 %i.lv, 3
  %i.ow = or disjoint i64 %n.vec164, 1            ; 2 uses
  %broadcast.splatinsert165 = insertelement <2 x i64> poison, i64 %.fca.0.extract.i.i6, i64 0
  %broadcast.splat166 = shufflevector <2 x i64> %broadcast.splatinsert165, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert167 = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat168 = shufflevector <2 x i64> %broadcast.splatinsert167, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph163
  %index170 = phi i64 [ 0, %vector.ph163 ], [ %index.next174, %vector.body169 ] ; 2 uses
  %vec.ind171 = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph163 ], [ %vec.ind.next175, %vector.body169 ] ; 3 uses
  %step.add172 = add <2 x i64> %vec.ind171, splat (i64 2)
  %i.ox = shl i64 %index170, 3
  %next.gep173 = getelementptr i8, ptr %i.lt, i64 %i.ox ; 2 uses
  %i.oy = and <2 x i64> %vec.ind171, splat (i64 4294967295)
  %i.oz = and <2 x i64> %step.add172, splat (i64 4294967295)
  %i.pa = mul nsw <2 x i64> %i.oy, %broadcast.splat166
  %i.pb = mul nsw <2 x i64> %i.oz, %broadcast.splat166
  %i.pc = add nsw <2 x i64> %i.pa, %broadcast.splat168
  %i.pd = add nsw <2 x i64> %i.pb, %broadcast.splat168
  %i.pe = getelementptr i8, ptr %next.gep173, i64 16
  store <2 x i64> %i.pc, ptr %next.gep173, align 8, !tbaa !432
  store <2 x i64> %i.pd, ptr %i.pe, align 8, !tbaa !432
  %index.next174 = add nuw i64 %index170, 4       ; 2 uses
  %vec.ind.next175 = add <2 x i64> %vec.ind171, splat (i64 4)
  %i.pf = icmp eq i64 %index.next174, %n.vec164
  br i1 %i.pf, label %middle.block176, label %vector.body169, !llvm.loop !931

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.lv, %n.vec164
  br i1 %cmp.n177, label %._crit_edge.i.i.i.i79.i, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %.lr.ph.i.i.i.i78.i, %middle.block176
  %.028102.i.i.i.i.i.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i78.i ], [ %i.ou, %middle.block176 ]
  %.029101.i.i.i.i.i.ph = phi i64 [ %i.lv, %.lr.ph.i.i.i.i78.i ], [ %i.ov, %middle.block176 ]
  %.ph204 = phi i64 [ 1, %.lr.ph.i.i.i.i78.i ], [ %i.ow, %middle.block176 ]
  br label %scalar.ph161

._crit_edge.i.i.i.i79.i:                          ; preds = %scalar.ph161, %middle.block176, %bb.ao
  %.lcssa.i.i.i.i80.i = phi i64 [ 1, %bb.ao ], [ %i.ow, %middle.block176 ], [ %i.qn, %scalar.ph161 ] ; 5 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa.i.i.i.i80.i, %i.jj
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i79.i
  %i.pg = sub i64 %i.jj, %.lcssa.i.i.i.i80.i
  %xtraiter235 = and i64 %i.pg, 3                 ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.04.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.pl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.pk, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.lcssa.i.i.i.i80.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter237 = phi i64 [ %prol.iter237.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ph = and i64 %.val13.i.i.i.i.i.i.i.i.i.prol, 4294967295
  %i.pi = mul nsw i64 %i.ph, %.fca.0.extract.i.i6
  %i.pj = add nsw i64 %i.pi, %i.bd
  store i64 %i.pj, ptr %.04.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  %i.pk = add i64 %.val13.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !932

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.04.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.pl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.val13.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.lcssa.i.i.i.i80.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.pk, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.pm = sub i64 %.lcssa.i.i.i.i80.i, %i.jj
  %i.pn = icmp ugt i64 %i.pm, -4
  br i1 %i.pn, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.04.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.val13.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.po = and i64 %.val13.i.i.i.i.i.i.i.i.i, 4294967295
  %i.pp = mul nsw i64 %i.po, %.fca.0.extract.i.i6
  %i.pq = add nsw i64 %i.pp, %i.bd
  store i64 %i.pq, ptr %.04.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.pr = add i64 %.val13.i.i.i.i.i.i.i.i.i, 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 8
  %i.pt = and i64 %i.pr, 4294967295
  %i.pu = mul nsw i64 %i.pt, %.fca.0.extract.i.i6
  %i.pv = add nsw i64 %i.pu, %i.bd
  store i64 %i.pv, ptr %i.ps, align 8, !tbaa !432
  %i.pw = add i64 %.val13.i.i.i.i.i.i.i.i.i, 2
  %i.px = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 16
  %i.py = and i64 %i.pw, 4294967295
  %i.pz = mul nsw i64 %i.py, %.fca.0.extract.i.i6
  %i.qa = add nsw i64 %i.pz, %i.bd
  store i64 %i.qa, ptr %i.px, align 8, !tbaa !432
  %i.qb = add i64 %.val13.i.i.i.i.i.i.i.i.i, 3
  %i.qc = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 24
  %i.qd = and i64 %i.qb, 4294967295
  %i.qe = mul nsw i64 %i.qd, %.fca.0.extract.i.i6
  %i.qf = add nsw i64 %i.qe, %i.bd
  store i64 %i.qf, ptr %i.qc, align 8, !tbaa !432
  %i.qg = add i64 %.val13.i.i.i.i.i.i.i.i.i, 4    ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.qg, %i.jj
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !926

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %.028102.i.i.i.i.i = phi ptr [ %i.qm, %scalar.ph161 ], [ %.028102.i.i.i.i.i.ph, %scalar.ph161.preheader ] ; 2 uses
  %.029101.i.i.i.i.i = phi i64 [ %i.qo, %scalar.ph161 ], [ %.029101.i.i.i.i.i.ph, %scalar.ph161.preheader ]
  %i.qi = phi i64 [ %i.qn, %scalar.ph161 ], [ %.ph204, %scalar.ph161.preheader ] ; 2 uses
  %i.qj = and i64 %i.qi, 4294967295
  %i.qk = mul nsw i64 %i.qj, %.fca.0.extract.i.i6
  %i.ql = add nsw i64 %i.qk, %i.bd
  store i64 %i.ql, ptr %.028102.i.i.i.i.i, align 8, !tbaa !432
  %i.qm = getelementptr inbounds nuw i8, ptr %.028102.i.i.i.i.i, i64 8
  %i.qn = add i64 %i.qi, 1                        ; 2 uses
  %i.qo = add i64 %.029101.i.i.i.i.i, -1          ; 2 uses
  %.not31.i.i.i.i.i = icmp eq i64 %i.qo, 0
  br i1 %.not31.i.i.i.i.i, label %._crit_edge.i.i.i.i79.i, label %scalar.ph161, !llvm.loop !933

.lr.ph.i.i.i66.1.i:                               ; preds = %.lr.ph.i.i.i66.preheader.i
  %i.qp = add nuw nsw i64 %.idx.i, 8
  %i.qq = icmp samesign eq i64 %i.qp, %i.ai
  br i1 %i.qq, label %bb.ae, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i66.1.i
  %i.qr = add nsw i64 %.fca.0.extract.i.i6, %i.bd
  store i64 %i.qr, ptr %i.jo, align 8, !tbaa !432
  %i.qs = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  br label %._crit_edge.i.i.i67.i

bb.aq:                                            ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"
  %i.qt = load ptr, ptr %0, align 8, !tbaa !561, !nonnull !43, !align !45
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 200
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !453, !nonnull !43, !align !45
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 296
  %i.qx = call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.qw, ptr noundef nonnull %i.iw) #22 ; 4 uses
  %i.qy = load i32, ptr %i.bg, align 4
  %i.qz = and i32 %i.qy, 268435455                ; 3 uses
  %i.ra = zext nneg i32 %i.qz to i64              ; 6 uses
  %i.rb = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.idx.i ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.ai ; 2 uses
  %i.re = icmp eq i32 %i.qz, 0
  br i1 %i.re, label %._crit_edge.i.i.i100.i, label %.lr.ph.i.i.i98.preheader.i

.lr.ph.i.i.i98.preheader.i:                       ; preds = %bb.aq
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qx, i64 24 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.rg = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.rg, label %bb.bl, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i"

._crit_edge.i.i.i100.i:                           ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.1.i", %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i", %bb.aq
  %.0.lcssa.i.i.i101.i = phi ptr [ %i.rc, %bb.aq ], [ %i.vr, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i" ], [ %i.vy, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.1.i" ] ; 3 uses
  %i.rh = load i32, ptr %i.e, align 8, !tbaa !458
  %i.ri = zext i32 %i.rh to i64
  %i.rj = sub nsw i64 %i.ri, %i.aj                ; 3 uses
  %gepdiff.i102.i = shl nsw i64 %i.rj, 3          ; 2 uses
  %i.rk = icmp sgt i64 %i.rj, 1
  br i1 %i.rk, label %bb.ar, label %bb.as, !prof !506

bb.ar:                                            ; preds = %._crit_edge.i.i.i100.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i101.i, ptr nonnull align 8 %i.rd, i64 %gepdiff.i102.i, i1 false)
  %.pre.i.i.i.i104.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i

bb.as:                                            ; preds = %._crit_edge.i.i.i100.i
  %i.rl = icmp eq i64 %i.rj, 1
  br i1 %i.rl, label %bb.at, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i

bb.at:                                            ; preds = %bb.as
  %i.rm = load i64, ptr %i.rd, align 8, !tbaa !432
  store i64 %i.rm, ptr %.0.lcssa.i.i.i101.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.rn = phi ptr [ %.pre.i.i.i.i104.i, %bb.ar ], [ %i.rb, %bb.as ], [ %i.rb, %bb.at ]
  %i.ro = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i101.i, i64 %gepdiff.i102.i
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = ptrtoint ptr %i.rn to i64
end_hunk_0
