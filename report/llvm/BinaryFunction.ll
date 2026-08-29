Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4llvm4bolt14BinaryFunction10releaseCFGEv:bb.a
bb.a:
  %1 = alloca %"class.std::map", align 8          ; 8 uses
  %2 = alloca %"class.llvm::SmallVector.87", align 8 ; 8 uses
  %3 = alloca %"class.llvm::SmallVector.87", align 8 ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.82", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !427  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.j = load i32, ptr %i.i, align 8, !tbaa !427  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx26 = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx26
  %.not1621 = icmp eq i32 %i.j, 0
  br i1 %.not1621, label %._crit_edge25, label %.lr.ph24

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01520 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %.01520, align 8, !tbaa !556
  tail call void @_ZN4llvm4bolt16BinaryBasicBlock10releaseCFGEv(ptr noundef nonnull align 8 dereferenceable(192) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.01520, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge25:                                    ; preds = %.lr.ph24, %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !427
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !589
  call void @_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.s = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairINS0_11FragmentNumENS1_8CallSiteEELj0EEEEERS1_RT_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge25
  call void @free(ptr noundef %i.s) #30
  br label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairINS0_11FragmentNumENS1_8CallSiteEELj0EEEEERS1_RT_.exit

_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairINS0_11FragmentNumENS1_8CallSiteEELj0EEEEERS1_RT_.exit: ; preds = %._crit_edge25, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !427
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !589
  call void @_ZN4llvm15SmallVectorImplImE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  %i.y = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.v
  br i1 %i.z, label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairINS0_11FragmentNumENS1_8CallSiteEELj0EEEEERS1_RT_.exit
  call void @free(ptr noundef %i.y) #30
  br label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit

_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit: ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairINS0_11FragmentNumENS1_8CallSiteEELj0EEEEERS1_RT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1008
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !427
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !589
  call void @_ZN4llvm15SmallVectorImplImE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ab
  br i1 %i.af, label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit17, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit
  call void @free(ptr noundef %i.ae) #30
  br label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit17

_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit17: ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1825
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 20, i1 false)
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !573 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !573
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIPKNS_8MCSymbolEPNS0_16BinaryBasicBlockENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEEEERS1_RT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit17
  %i.al = zext i32 %i.aj to i64                   ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ah, i64 noundef %i.aq, i64 noundef 8) #30
  br label %_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIPKNS_8MCSymbolEPNS0_16BinaryBasicBlockENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEEEERS1_RT_.exit

_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIPKNS_8MCSymbolEPNS0_16BinaryBasicBlockENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEEEERS1_RT_.exit: ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorImLj0EEEEERS1_RT_.exit17, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !698
  %.not18 = icmp eq i32 %i.as, 0
  br i1 %.not18, label %bb.f, label %bb.h

.lr.ph24:                                         ; preds = %._crit_edge, %.lr.ph24
  %.022 = phi ptr [ %i.au, %.lr.ph24 ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.at = load ptr, ptr %.022, align 8, !tbaa !556
  tail call void @_ZN4llvm4bolt16BinaryBasicBlock10releaseCFGEv(ptr noundef nonnull align 8 dereferenceable(192) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.au, %i.l
  br i1 %.not16, label %._crit_edge25, label %.lr.ph24

bb.f:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIPKNS_8MCSymbolEPNS0_16BinaryBasicBlockENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEEEERS1_RT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.av, align 8, !tbaa !1187
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !745
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !750
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !1188
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !505
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !760 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZN4llvm4bolt14BinaryFunction9clearListISt3mapIjPNS_8MCSymbolESt4lessIjESaISt4pairIKjS5_EEEEERS1_RT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1187
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !1187
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !745
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bg = load <2 x ptr>, ptr %i.be, align 8, !tbaa !760
  store <2 x ptr> %i.bg, ptr %i.ax, align 8, !tbaa !760
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.av, ptr %i.bh, align 8, !tbaa !1288
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !505
  store i64 %i.bj, ptr %i.az, align 8, !tbaa !505
  store ptr null, ptr %i.ba, align 8, !tbaa !745
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !750
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !1188
  store i64 0, ptr %i.bi, align 8, !tbaa !505
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !745
  br label %_ZN4llvm4bolt14BinaryFunction9clearListISt3mapIjPNS_8MCSymbolESt4lessIjESaISt4pairIKjS5_EEEEERS1_RT_.exit

_ZN4llvm4bolt14BinaryFunction9clearListISt3mapIjPNS_8MCSymbolESt4lessIjESaISt4pairIKjS5_EEEEERS1_RT_.exit: ; preds = %bb.f, %bb.g
  %i.bk = phi ptr [ null, %bb.f ], [ %.pre.i, %bb.g ]
  call void @_ZNSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListISt3mapIjPNS_8MCSymbolESt4lessIjESaISt4pairIKjS5_EEEEERS1_RT_.exit, %_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIPKNS_8MCSymbolEPNS0_16BinaryBasicBlockENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEEEERS1_RT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bm = call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorINS_16MCCFIInstructionELj0EEEEERS1_RT_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bl) ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1826 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !1826
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1618
  store ptr null, ptr %i.bp, align 8, !tbaa !1618
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 0, ptr %i.br, align 8, !tbaa !573
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 940 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !573 ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !573
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEEERS1_RT_.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.h
  %i.bv = zext i32 %i.bt to i64                   ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 31               ; 2 uses
  %i.bx = lshr i64 %i.bw, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !573 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ca = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.i

bb.i:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bz, %.lr.ph.i.i.i ], [ %i.ck, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.cb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.cc = or disjoint i32 %i.cb, %i.ca
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !21 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.cg) #30
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.cj = add i32 %.0.i3.i.i.i, -1
  %i.ck = and i32 %i.cj, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.i, !llvm.loop !1827

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bx
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !1828

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %i.cl = mul nuw nsw i64 %i.bv, 40
  %i.cm = lshr i64 %i.bw, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.cl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.co, i64 noundef 8) #30
  br label %_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEEERS1_RT_.exit

_ZN4llvm4bolt14BinaryFunction9clearListINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEEERS1_RT_.exit: ; preds = %bb.h, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16BinaryBasicBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1829 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1830 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EEEclEPS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1833
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #31
  br label %_ZNKSt14default_deleteISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EEEclEPS8_.exit.i

_ZNKSt14default_deleteISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EEEclEPS8_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #31
  br label %_ZNSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EEEclEPS8_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EED2Ev.exit
  tail call void @free(ptr noundef %i.j) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.i
  br i1 %i.o, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit1, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit1

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit1: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit1
  tail call void @free(ptr noundef %i.q) #30
  br label %_ZN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EED2Ev.exit

_ZN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit1, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.p
  br i1 %i.u, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit2, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.t) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit2

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit2: ; preds = %_ZN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EED2Ev.exit, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit2
  tail call void @free(ptr noundef %i.w) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit2, %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !774    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !773 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i ], [ %i.y, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.ac) #30
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i:     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1363

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !774
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i:      ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i ], [ %i.y, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1364
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i, %bb.j
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZN4llvm4bolt14FunctionLayout5clearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm4bolt14BinaryFunction17forEachEntryPointENS_12function_refIFbmPKNS_8MCSymbolEEEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1360) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !428
  %i.d = tail call noundef zeroext i1 %1(i64 noundef %2, i64 noundef 0, ptr noundef %i.c) #30, !inline_history !1834 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load i32, ptr %i.e, align 8, !tbaa !698
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !750  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %.not2729 = icmp eq ptr %i.h, %i.i
  br i1 %.not2729, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = zext i1 %i.d to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 300
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4llvm4bolt14BinaryFunction28getSecondaryEntryPointSymbolEPKNS_8MCSymbolE.exit.thread
  %.01231 = phi i8 [ %i.j, %.lr.ph ], [ %.2.ph, %_ZNK4llvm4bolt14BinaryFunction28getSecondaryEntryPointSymbolEPKNS_8MCSymbolE.exit.thread ]
  %.sroa.016.030 = phi ptr [ %i.h, %.lr.ph ], [ %i.bc, %_ZNK4llvm4bolt14BinaryFunction28getSecondaryEntryPointSymbolEPKNS_8MCSymbolE.exit.thread ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.030, i64 32
  %i.o = trunc nuw i8 %.01231 to i1
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt14BinaryFunctionD2Ev:bb.a
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit20, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ac) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit20

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit20: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !504 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit20
  tail call void @_ZN4llvm4bolt14BinaryFunction10IslandInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %i.af) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 472) #31
  br label %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EED2Ev.exit20, %_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ag
  br i1 %i.al, label %_ZN4llvm11SmallVectorISt4pairImmELj0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit
  tail call void @free(ptr noundef %i.ak) #30
  br label %_ZN4llvm11SmallVectorISt4pairImmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairImmELj0EED2Ev.exit:  ; preds = %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !427 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm11SmallVectorISt4pairImmELj0EED2Ev.exit
  %i.at = zext i32 %i.as to i64
  %.idx.i = mul nuw nsw i64 %i.at, 88
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.av, %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i ], [ %i.au, %.lr.ph.i.preheader.i ] ; 6 uses
  %i.av = getelementptr inbounds i8, ptr %.05.i.i, i64 -88 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i.i, i64 -80 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.05.i.i, i64 -24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !885
  switch i8 %i.ay, label %bb.l [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
    i8 1, label %bb.j
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
    i8 4, label %bb.k
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
  ], !prof !895

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.az = getelementptr inbounds i8, ptr %.05.i.i, i64 -56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !399 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !414
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !896 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i, i64 -72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !898 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i.i, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink26.i.i.i.i.i.i = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 24, %bb.k ]
  %.sink23.i.i.i.i.i.i = phi ptr [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.k ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink26.i.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !703
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %.sink23.i.i.i.i.i.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i.i, i64 noundef %i.bm) #31
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i

_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i:          ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.aq, %i.av
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2180

_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %_ZN4llvm11SmallVectorISt4pairImmELj0EED2Ev.exit
  %i.bn = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.aq, %_ZN4llvm11SmallVectorISt4pairImmELj0EED2Ev.exit ] ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.am
  br i1 %i.bo, label %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i
  tail call void @free(ptr noundef %i.bn) #30
  br label %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit

_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bp
  br i1 %i.bu, label %_ZN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.bt) #30
  br label %_ZN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit, %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bs
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIPNS_8MCSymbolELj0EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.bw) #30
  br label %_ZN4llvm11SmallVectorIPNS_8MCSymbolELj0EED2Ev.exit21

_ZN4llvm11SmallVectorIPNS_8MCSymbolELj0EED2Ev.exit21: ; preds = %_ZN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EED2Ev.exit, %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bv
  br i1 %i.ca, label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_8MCSymbolELj0EED2Ev.exit21
  tail call void @free(ptr noundef %i.bz) #30
  br label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit

_ZN4llvm11SmallVectorImLj0EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_8MCSymbolELj0EED2Ev.exit21, %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.by
  br i1 %i.cd, label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit22, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorImLj0EED2Ev.exit
  tail call void @free(ptr noundef %i.cc) #30
  br label %_ZN4llvm11SmallVectorImLj0EED2Ev.exit22

_ZN4llvm11SmallVectorImLj0EED2Ev.exit22:          ; preds = %_ZN4llvm11SmallVectorImLj0EED2Ev.exit, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorImLj0EED2Ev.exit22
  tail call void @free(ptr noundef %i.cf) #30
  br label %_ZN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorImLj0EED2Ev.exit22, %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 940 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1660 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EED2Ev.exit
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !1653
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1659
  %i.cp = zext i32 %i.ck to i64
  %i.cq = add nuw nsw i64 %i.cp, 31
  %i.cr = lshr i64 %i.cq, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !573 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cu = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.s

bb.s:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i23
  %.0.i3.i.i = phi i32 [ %i.ct, %.lr.ph.i.i23 ], [ %i.de, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.cv = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cw = or disjoint i32 %i.cv, %i.cu
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cm, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef %i.da) #30
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.t, %bb.s
  %i.dd = add i32 %.0.i3.i.i, -1
  %i.de = and i32 %i.dd, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !1827

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cr
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1828

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.cj, align 4, !tbaa !1660 ; 2 uses
  %i.df = icmp eq i32 %.pr.i, 0
  br i1 %i.df, label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i
  %i.dg = load ptr, ptr %i.ci, align 8, !tbaa !1653
  %i.dh = zext i32 %.pr.i to i64                  ; 2 uses
  %i.di = mul nuw nsw i64 %i.dh, 40
  %i.dj = add nuw nsw i64 %i.dh, 31
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = and i64 %i.dk, 1073741820
  %i.dm = add nuw nsw i64 %i.dl, %i.di
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dg, i64 noundef %i.dm, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit

_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !21 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !427 ; 2 uses
  %.not4.i.i24 = icmp eq i32 %i.dq, 0
  br i1 %.not4.i.i24, label %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i33, label %.lr.ph.i.preheader.i25

.lr.ph.i.preheader.i25:                           ; preds = %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit
  %i.dr = zext i32 %i.dq to i64
  %.idx.i26 = mul nuw nsw i64 %i.dr, 88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i26
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29, %.lr.ph.i.preheader.i25
  %.05.i.i28 = phi ptr [ %i.dt, %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29 ], [ %i.ds, %.lr.ph.i.preheader.i25 ] ; 6 uses
  %i.dt = getelementptr inbounds i8, ptr %.05.i.i28, i64 -88 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.05.i.i28, i64 -80 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.05.i.i28, i64 -24
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !885
  switch i8 %i.dw, label %bb.x [
    i8 -1, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
    i8 0, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
    i8 1, label %bb.v
    i8 2, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
    i8 3, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
    i8 4, label %bb.w
    i8 5, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
    i8 6, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
  ], !prof !895

bb.v:                                             ; preds = %.lr.ph.i.i27
  %i.dx = getelementptr inbounds i8, ptr %.05.i.i28, i64 -56
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !399 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.05.i.i28, i64 -40 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i38: ; preds = %bb.v
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !414
  %i.ec = add i64 %i.eb, 1
  tail call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i38
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !896 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i40 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i40, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i35

bb.w:                                             ; preds = %.lr.ph.i.i27
  %i.ee = getelementptr inbounds i8, ptr %.05.i.i28, i64 -72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !898 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i.i34 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i.i34, label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i35

bb.x:                                             ; preds = %.lr.ph.i.i27
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i35: ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39
  %.sink26.i.i.i.i.i.i36 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39 ], [ 24, %bb.w ]
  %.sink23.i.i.i.i.i.i37 = phi ptr [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39 ], [ %i.ef, %bb.w ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink26.i.i.i.i.i.i36
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !703
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %.sink23.i.i.i.i.i.i37 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i.i37, i64 noundef %i.ek) #31
  br label %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29

_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29:        ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i.i35, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i39, %.lr.ph.i.i27, %.lr.ph.i.i27, %.lr.ph.i.i27, %.lr.ph.i.i27, %.lr.ph.i.i27, %.lr.ph.i.i27
  %.not.i.i30 = icmp eq ptr %i.do, %i.dt
  br i1 %.not.i.i30, label %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i31, label %.lr.ph.i.i27, !llvm.loop !2180

_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i31: ; preds = %_ZN4llvm16MCCFIInstructionD2Ev.exit.i.i29
  %.pre.i32 = load ptr, ptr %i.dn, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i33

_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i33: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i31, %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit
  %i.el = phi ptr [ %.pre.i32, %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i31 ], [ %i.do, %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit ] ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ci
  br i1 %i.em, label %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit42, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i33
  tail call void @free(ptr noundef %i.el) #30
  br label %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit42

_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit42: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE13destroy_rangeEPS1_S3_.exit.i33, %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.en, ptr noundef %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !21 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.eq
  br i1 %i.ev, label %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit42
  tail call void @free(ptr noundef %i.eu) #30
  br label %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit:  ; preds = %_ZN4llvm11SmallVectorINS_16MCCFIInstructionELj0EED2Ev.exit42, %bb.z
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !21 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.et
  br i1 %i.ey, label %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit43, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ex) #30
  br label %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit43

_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit43: ; preds = %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit, %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !636 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit43
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !629
  %i.fe = zext i32 %i.fa to i64                   ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 4
  %i.fg = add nuw nsw i64 %i.fe, 31
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = and i64 %i.fh, 1073741820
  %i.fj = add nuw nsw i64 %i.fi, %i.ff
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fd, i64 noundef %i.fj, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIjjELj0EED2Ev.exit43, %bb.ab
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1240 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1235
  %i.fp = zext i32 %i.fl to i64                   ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fp, 4
  %i.fr = add nuw nsw i64 %i.fp, 31
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = and i64 %i.fs, 1073741820
  %i.fu = add nuw nsw i64 %i.ft, %i.fq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fo, i64 noundef %i.fu, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit

_ZN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !21 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fy = icmp eq ptr %i.fw, %i.fx
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit, label %bb.d, !prof !575

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1825
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !635
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !629
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !573
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !573
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2456
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !428
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !428
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !556
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !629, !noalias !2457 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !635, !noalias !2457 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !636, !noalias !2457 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !428    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !573
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !574

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !428
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !575

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !576, !llvm.loop !2455

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1825
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.58", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !636
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !629
  store ptr %i.y, ptr %i.q, align 8, !tbaa !635
  store i32 0, ptr %i.p, align 16, !tbaa !2456
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !703
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1825
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !703
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !573 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !573
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !573
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !573
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !629    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !635
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !636  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !629
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !636
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !428  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !573 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !2462

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !428
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !556
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !556
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !573
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2463

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2464

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !636
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2456
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2456
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #30
  store i32 0, ptr %i.d, align 4, !tbaa !636
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

declare noundef i32 @_ZNK4llvm4bolt16BinaryBasicBlock13getNumPseudosEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm4bolt12_GLOBAL__N_111CFISnapshot6updateERKNS_16MCCFIInstructionEi(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !875
  switch i8 %i.d, label %bb.q [
    i8 0, label %bb.b
    i8 8, label %bb.b
    i8 3, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 5, label %bb.d
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 10, label %bb.k
    i8 9, label %bb.o
    i8 14, label %bb.o
    i8 16, label %bb.o
    i8 4, label %bb.o
    i8 18, label %bb.o
    i8 19, label %bb.o
    i8 15, label %bb.o
    i8 20, label %bb.p
    i8 21, label %bb.p
    i8 22, label %bb.p
    i8 23, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !885
  %.not.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #34
  unreachable

_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit:  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !948
  store i32 %i.i, ptr %i.a, align 4, !tbaa !573
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24lookupOrInsertIntoBucketIiJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 4
  store i32 %2, ptr %i.k, align 4, !tbaa !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i8, ptr %i.l, align 8, !tbaa !885
  %.not.i.i.i10 = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i10, label %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #34
  unreachable

_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit11: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !948
  store i32 %i.o, ptr %0, align 8, !tbaa !1723
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2147483648, ptr %i.p, align 8, !tbaa !1728
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1727
  %i.s = icmp eq i32 %i.r, -2147483648
  br i1 %i.s, label %bb.f, label %bb.q

bb.f:                                             ; preds = %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit11
  store i32 0, ptr %i.q, align 4, !tbaa !1727
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !885
  %.not.i.i.i12 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i12, label %_ZNK4llvm16MCCFIInstruction9getOffsetEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #34
  unreachable

_ZNK4llvm16MCCFIInstruction9getOffsetEv.exit:     ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !886
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !1727
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2147483648, ptr %i.z, align 8, !tbaa !1728
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !885
  %.not.i.i.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i13, label %_ZNK4llvm16MCCFIInstruction9getOffsetEv.exit16, label %bb.j
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24lookupOrInsertIntoBucketIiJEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2471
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2472
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit, label %bb.d, !prof !575

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E15LookupBucketForIiEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2471
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1770
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1764
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !573
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !573
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !2472
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !2472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !573
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !573
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !573
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E15LookupBucketForIiEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E15LookupBucketForIiEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E15LookupBucketForIiEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1764, !noalias !2473 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1770, !noalias !2473 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1762, !noalias !2473 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !573    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !573
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !574

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !573
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !576, !llvm.loop !2470

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !573
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !575

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2471
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1069", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1762
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1764
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1770
  store i32 0, ptr %i.p, align 16, !tbaa !2472
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !703
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2471
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !703
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !573 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !573
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !573
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !573
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #30
  br label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit

_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1764   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1770
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1762 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1770 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1764
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1762
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !573  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !573
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !2478

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !573
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !573
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !573
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !573
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !573
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2479

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2480

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1762
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2472
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !2472
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #30
  store i32 0, ptr %i.d, align 4, !tbaa !1762
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit

_ZN4llvm8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare noundef zeroext i1 @_ZN4llvmeqERKNS_16MCCFIInstructionES2_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E24lookupOrInsertIntoBucketIiJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1761, !noalias !2481 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2486, !noalias !2481 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1760, !noalias !2481 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !573    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !573
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !574

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !573
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !576, !llvm.loop !2487

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !573
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E15LookupBucketForIiEEbRKT_RPS6_.exit, label %bb.c, !prof !575

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2488
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2489
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit, label %bb.d, !prof !575

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E15LookupBucketForIiEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2488
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2486
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1761
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !573
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !573
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !2489
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !2489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !573
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !573
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 0, ptr %i.bc, align 4, !tbaa !1107
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E15LookupBucketForIiEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E15LookupBucketForIiEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E22findBucketForInsertionIiEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E15LookupBucketForIiEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1761, !noalias !2490 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2486, !noalias !2490 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1760, !noalias !2490 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !573    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !573
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !574

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !573
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !576, !llvm.loop !2487

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !573
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !575

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2488
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1071", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1760
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1761
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2486
  store i32 0, ptr %i.p, align 16, !tbaa !2489
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !703
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2488
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !703
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !573 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !573
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !573
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !573
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #30
  br label %_ZN4llvm8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEED2Ev.exit

_ZN4llvm8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1761   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2486
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1760 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1761
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1760
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !573  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !573
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !2495

_ZZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !573
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !1107, !range !18, !noundef !19
  store i8 %i.aj, ptr %i.ah, align 4, !tbaa !1107
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !573
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !573
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2496

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2497

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1760
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2489
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !2489
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #30
  store i32 0, ptr %i.d, align 4, !tbaa !1760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEE4killEv.exit

_ZN4llvm8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIibNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIibEEEEibS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::vector<llvm::MCInst>::_Temporary_value", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !578    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !773  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1364
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !427
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 6, ptr %i.n, align 4, !tbaa !589
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !427  ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %i.q = icmp eq ptr %1, %2
  %or.cond.i.i = or i1 %i.q, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i32 %i.p, 6
  br i1 %i.r, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.d
  %i.s = zext i32 %i.p to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull %i.l, i64 noundef %i.s, i64 noundef 16) #30
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.d
  %i.t = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.l, %bb.d ]
  %i.u = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.p, %bb.d ]
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !21
  %gepdiff.i.i.i = shl nuw nsw i64 %i.v, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 8 %i.w, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i
  store i32 %i.p, ptr %i.m, align 8, !tbaa !427
  br label %_ZN4llvm6MCInstC2ERKS0_.exit

_ZN4llvm6MCInstC2ERKS0_.exit:                     ; preds = %bb.c, %.sink.split.i.i.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !773
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store ptr %i.y, ptr %i.e, align 8, !tbaa !773
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %0, ptr %3, align 8, !tbaa !2498
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !427
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 6, ptr %i.af, align 4, !tbaa !589
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !427 ; 5 uses
  %.not.i.i.i.i6 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp ugt i32 %i.ah, 6
  br i1 %i.ai, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i: ; preds = %bb.f
  %i.aj = zext i32 %i.ah to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.aj, i64 noundef 16) #30
  %.pre.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  %.pre.i.i7 = load ptr, ptr %i.ab, align 8, !tbaa !21
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i, %bb.f
  %i.ak = phi ptr [ %.pre.i.i7, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ad, %bb.f ]
  %i.al = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ah, %bb.f ]
  %i.am = zext i32 %i.al to i64
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !21
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.am, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 8 %i.an, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !427
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !773
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

_ZNSt6vectorIN4llvm6MCInstESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit: ; preds = %bb.e, %.sink.split.i.i.i.i
  %i.ao = phi ptr [ %i.f, %bb.e ], [ %.pre, %.sink.split.i.i.i.i ] ; 8 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ao, ptr noundef nonnull align 8 dereferenceable(128) %i.ap, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit, label %bb.d, !prof !575

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2572
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1846
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1840
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !573
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !573
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2573
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !428
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !428
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1138
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1840, !noalias !2574 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1846, !noalias !2574 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1847, !noalias !2574 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !428    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !573
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !574

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !428
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !575

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !576, !llvm.loop !1877

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2572
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.293", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1847
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1840
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1846
  store i32 0, ptr %i.p, align 16, !tbaa !2573
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !703
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2572
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !703
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !573 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !573
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !573
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !573
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1840   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1846
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1847 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1846 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1840
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1847
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !428  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !573 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !2579

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !428
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1138
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1138
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !573
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2580

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2581

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1847
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2573
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2573
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #30
  store i32 0, ptr %i.d, align 4, !tbaa !1847
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt14BinaryFunction10IslandInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorIPNS_4bolt14BinaryFunctionELj1EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt14BinaryFunctionELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_4bolt14BinaryFunctionELj1EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.g = load i8, ptr %i.f, align 8, !tbaa !14, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm9SetVectorIPNS_4bolt14BinaryFunctionENS_11SmallVectorIS3_Lj1EEENS_11SmallPtrSetIS3_Lj1EEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt14BinaryFunctionELj1EED2Ev.exit.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #30
  br label %_ZN4llvm9SetVectorIPNS_4bolt14BinaryFunctionENS_11SmallVectorIS3_Lj1EEENS_11SmallPtrSetIS3_Lj1EEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPNS_4bolt14BinaryFunctionENS_11SmallVectorIS3_Lj1EEENS_11SmallPtrSetIS3_Lj1EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt14BinaryFunctionELj1EED2Ev.exit.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeIPN4llvm4bolt14BinaryFunctionESt4pairIKS3_St3mapIPKNS0_8MCSymbolEPS7_St4lessIS9_ESaIS4_IKS9_SA_EEEESt10_Select1stISH_ESB_IS3_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeIPN4llvm4bolt14BinaryFunctionESt4pairIKS3_St3mapIPKNS0_8MCSymbolEPS7_St4lessIS9_ESaIS4_IKS9_SA_EEEESt10_Select1stISH_ESB_IS3_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.q = load i32, ptr %i.p, align 4, !tbaa !572  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9SetVectorIPNS_4bolt14BinaryFunctionENS_11SmallVectorIS3_Lj1EEENS_11SmallPtrSetIS3_Lj1EEELj0EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !565
  %i.u = zext i32 %i.q to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %_ZN4llvm9SetVectorIPNS_4bolt14BinaryFunctionENS_11SmallVectorIS3_Lj1EEENS_11SmallPtrSetIS3_Lj1EEELj0EED2Ev.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1847 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1840
  %i.af = zext i32 %i.ab to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load i8, ptr %i.al, align 8, !tbaa !14, !range !18, !noundef !19
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.ap) #30
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt14BinaryFunctionENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt10RelocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !745
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ba)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4llvm4bolt14BinaryFunctionESt4pairIKS3_St3mapIPKNS0_8MCSymbolEPS7_St4lessIS9_ESaIS4_IKS9_SA_EEEESt10_Select1stISH_ESB_IS3_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2411
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !575

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2602
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !611
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !588
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !573
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !573
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2411
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !556
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !556
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !588, !noalias !2603 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !611, !noalias !2603 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !585, !noalias !2603 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !556    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !573
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !574

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !556
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !575

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !576, !llvm.loop !2601

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2602
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.577", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !585
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !588
  store ptr %i.y, ptr %i.q, align 8, !tbaa !611
  store i32 0, ptr %i.p, align 16, !tbaa !2411
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !703
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2602
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !703
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !573 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !573
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !573
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !573
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !588    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !611
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !585  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !611  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !588
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !585
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !556  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !573 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !2608

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !556
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !573
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2609

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2610

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !585
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2411
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !2411
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #30
  store i32 0, ptr %i.d, align 4, !tbaa !585
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !427
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #30
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !427
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !427
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !427
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9MCOperandEEE11callback_fnIZNKS_4bolt14BinaryFunction11computeHashEbNSD_12HashFunctionESB_Ed_UlS9_E_EES6_lS9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !473, !alias.scope !2611
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !400, !alias.scope !2611
  store i8 0, ptr %i.a, align 8, !tbaa !414, !alias.scope !2611
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJfEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2614, !nonnull !19, !align !152 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !726
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !2616
  %i.g = fpext float %i.f to double
  %i.h = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, double noundef %i.g) #30
  ret i32 %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS9_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EEEvT_SM_T0_"(ptr %0, ptr %1, ptr %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.0.019.i, %1
  %or.cond = select i1 %i.f, i1 true, i1 %.not20.i
  br i1 %or.cond, label %common.ret29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.0.022.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.0.019.i, %bb.b ] ; 5 uses
  %.pn21.i = phi ptr [ %.sroa.0.022.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %0, %bb.b ] ; 2 uses
  %.val.val.i = load ptr, ptr %2, align 8, !tbaa !556
  %i.g = getelementptr i8, ptr %.val.val.i, i64 56
  %.val.val.val.i = load ptr, ptr %i.g, align 8, !tbaa !21 ; 3 uses
  %i.h = load i64, ptr %.sroa.0.022.i, align 8, !tbaa !408 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !408    ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i, i64 %i.h ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !408  ; 2 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !408  ; 3 uses
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = icmp ult i64 %i.o, %i.n
  br i1 %i.q, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread18.i.preheader", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread18.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.i", %bb.c
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread18.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.i": ; preds = %bb.c
  %i.r = load i64, ptr %i.l, align 8, !tbaa !408
  %i.s = load i64, ptr %i.m, align 8, !tbaa !408
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread18.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.i", %.lr.ph.i
  %i.u = ptrtoint ptr %.sroa.0.022.i to i64
  %i.v = sub i64 %i.u, %i.b                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.d, label %bb.e, !prof !575

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread.i"
  %i.y = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 16
  %i.z = sub nsw i64 0, %i.w
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm4bolt14BinaryFunction5printERNS2_11raw_ostreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESL_EEbT_T0_.exit.thread.i"
  %i.ab = icmp eq i64 %i.v, 8
end_hunk_5
begin_hunk_6_@_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb:bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !1639
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !575

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !1618
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !1618
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !575

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !1618
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !1618
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !582

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !1645 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1646
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !575

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !1618
  store ptr %i.be, ptr %i.av, align 8, !tbaa !1618
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !1639
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !1636
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #31
  store ptr %i.aq, ptr %0, align 8, !tbaa !1639
  store i64 %i.am, ptr %i.k, align 8, !tbaa !1636
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !1640
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !1618 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1641
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1642
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !1640
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1618 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !1641
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !1642
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.80", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1660
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1653
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1659
  store i32 0, ptr %i.p, align 16, !tbaa !1662
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1826   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1618 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store ptr %i.z, ptr %2, align 16, !tbaa !1826
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !703
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1618
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !573
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !573
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !573 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #30
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1827

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1828

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1660 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !1653
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit

_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1653
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1659
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1660 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1659 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1653
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1660
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bi, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !573  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !573
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !2794

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.x ; 6 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !573
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !427
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  store i32 4, ptr %i.ak, align 4, !tbaa !589
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !427 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ao = icmp eq ptr %i.ag, %i.u
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4llvm15SmallVectorImplIiE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIiE12assignRemoteEOS1_.exit.i: ; preds = %bb.f
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !21
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !427
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !589
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !589
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !21
  store i32 0, ptr %i.as, align 4, !tbaa !589
  br label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ugt i32 %i.am, 4
  br i1 %i.au, label %bb.h, label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext i32 %i.am to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.av, i64 noundef 4) #30
  br label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i

_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.g, %bb.h
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %i.ay, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i: ; preds = %bb.i, %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !427
  br label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIiE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.al, align 8, !tbaa !427
  br label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split, %bb.e, %bb.d
  %i.ba = shl nuw i32 1, %i.ab
  %i.bb = load i32, ptr %i.af, align 4, !tbaa !573
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.af, align 4, !tbaa !573
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.be) #30
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i, %bb.j
  %i.bh = add i32 %.0.i18, -1
  %i.bi = and i32 %i.bh, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2795

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2796

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1660
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bj = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1662
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !1662
  %i.bn = icmp eq i32 %i.bj, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bo = load ptr, ptr %1, align 8, !tbaa !1653
  %i.bp = zext i32 %i.bj to i64                   ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bp, 40
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #30
  store i32 0, ptr %i.d, align 4, !tbaa !1660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE4killEv.exit

_ZN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbmPKNS_8MCSymbolEEE11callback_fnIZNS_4bolt14BinaryFunction14setTrapOnEntryEvE3$_0EEblmS3_"(i64 noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::MCInst", align 8      ; 9 uses
  %i.b = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.b, align 8, !tbaa !1195 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !427
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 6, ptr %i.f, align 4, !tbaa !589
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24, !nonnull !19, !align !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1568
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !579  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1408
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(536) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %3) #30, !inline_history !2797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !408
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 856
  %i.o = trunc i64 %1 to i32                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 872
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !745  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 864 ; 3 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !573
  %i.u = icmp ult i32 %i.t, %i.o                  ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.u, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !760 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !989

_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = icmp eq ptr %.19.i.i.i.i.i.i, %i.r
  br i1 %i.v, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i.i
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !575

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2803
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !571
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !565
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !573
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !573
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !698
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !428
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !428
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !428
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !565, !noalias !2804 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571, !noalias !2804 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !572, !noalias !2804 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !428    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !573
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !574

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !428
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !575

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !576, !llvm.loop !1866

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2803
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.43", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !572
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !565
  store ptr %i.y, ptr %i.q, align 8, !tbaa !571
  store i32 0, ptr %i.p, align 16, !tbaa !698
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !703
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2803
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !703
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !703
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !573 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !573
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !573
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !573
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !573
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #30
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !565    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !572  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !571  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !565
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !572
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !573  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !428  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !573 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !573 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2809

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !428
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !428
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !428
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !573
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2810

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2811

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !572
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !698
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !698
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #30
  store i32 0, ptr %i.d, align 4, !tbaa !572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1901 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1958   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.273) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !473
  %i.s = load ptr, ptr %2, align 8, !tbaa !399    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !400  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !399
  %i.z = load i64, ptr %i.t, align 8, !tbaa !414
  store i64 %i.z, ptr %i.r, align 8, !tbaa !414
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !400
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !400
  store ptr %i.t, ptr %2, align 8, !tbaa !399
  store i64 0, ptr %i.ab, align 8, !tbaa !400
  store i8 0, ptr %i.t, align 8, !tbaa !414
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !473, !alias.scope !2812, !noalias !2815
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !399, !alias.scope !2815, !noalias !2812 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !400, !alias.scope !2815, !noalias !2812 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !2817
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !399, !alias.scope !2812, !noalias !2815
  %i.al = load i64, ptr %i.af, align 8, !tbaa !414, !alias.scope !2815, !noalias !2812
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !414, !alias.scope !2812, !noalias !2815
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !400, !alias.scope !2815, !noalias !2812
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !400, !alias.scope !2812, !noalias !2815
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !399, !alias.scope !2815, !noalias !2812
  store i64 0, ptr %i.an, align 8, !tbaa !400, !alias.scope !2815, !noalias !2812
  store i8 0, ptr %i.af, align 8, !tbaa !414, !alias.scope !2815, !noalias !2812
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2818

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
end_hunk_7
begin_hunk_8_@_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE16attachNewSubtreeERS5_PNS_15DomTreeNodeBaseIS4_EE:bb.a
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1701
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1248
  %i.r = load i32, ptr %i.q, align 8, !tbaa !427
  %.fr.i = freeze i32 %i.r                        ; 2 uses
  %.not11.i = icmp eq i32 %.fr.i, 0
  %spec.select.i = select i1 %.not11.i, i32 %i.i, i32 %.fr.i
  %i.s = add i32 %spec.select.i, 1
  br label %.thread14.i

.thread14.i:                                      ; preds = %bb.c, %bb.b
  %i.t = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ]    ; 3 uses
  %i.u = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.w = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.x = phi i32 [ %i.s, %bb.c ], [ 1, %bb.b ]    ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 5 uses
  %i.z = icmp eq i64 %i.t, %i.y
  br i1 %i.z, label %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE11getNodeInfoEPS4_.exit, label %bb.d

bb.d:                                             ; preds = %.thread14.i
  %i.aa = icmp samesign ugt i64 %i.t, %i.y
  br i1 %i.aa, label %.sink.split.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !589
  %i.ad = icmp ugt i32 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ae, i64 noundef %i.y, i64 noundef 32) #30
  %.pre.i.i.i = load i32, ptr %i.u, align 8, !tbaa !427
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.t, %bb.e ], [ %.pre13.i.i.i, %bb.f ] ; 3 uses
  %.not11.i.i.i = icmp samesign eq i64 %.pre-phi.i.i.i, %i.y
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.ag = getelementptr [32 x i8], ptr %i.af, i64 %.pre-phi.i.i.i
  %i.ah = sub nsw i64 %i.y, %.pre-phi.i.i.i
  %i.ai = shl nsw i64 %i.ah, 5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ai, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i, %bb.d
  store i32 %i.x, ptr %i.u, align 8, !tbaa !427
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE11getNodeInfoEPS4_.exit

_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE11getNodeInfoEPS4_.exit: ; preds = %bb.b, %.thread.i, %.thread14.i, %.sink.split.i.i.i
  %i.aj = phi ptr [ %i.b, %.thread.i ], [ %i.b, %bb.b ], [ %i.b, %.thread14.i ], [ %.pre, %.sink.split.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.k, %.thread.i ], [ %i.d, %bb.b ], [ %i.v, %.thread14.i ], [ %i.v, %.sink.split.i.i.i ]
  %i.al = phi i64 [ %i.j, %.thread.i ], [ 0, %bb.b ], [ %i.w, %.thread14.i ], [ %i.w, %.sink.split.i.i.i ]
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !2922
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !427 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %.not18 = icmp eq i32 %i.aq, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE11getNodeInfoEPS4_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.g

._crit_edge:                                      ; preds = %bb.k, %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE11getNodeInfoEPS4_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.019 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ce, %bb.k ] ; 2 uses
  %i.az = load ptr, ptr %.019, align 8, !tbaa !556 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !614
  %i.bc = add i32 %i.bb, 1                        ; 4 uses
  %i.bd = load i32, ptr %i.at, align 8, !tbaa !427
  %i.be = icmp ugt i32 %i.bd, %i.bc
  %i.bf = zext i32 %i.bc to i64                   ; 2 uses
  br i1 %i.be, label %_ZNK4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EE7getNodeEPKS2_.exit, label %.thread.i.i

_ZNK4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %bb.g
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2259
  %.not16 = icmp eq ptr %i.bi, null
  br i1 %.not16, label %.thread.i.i, label %bb.k

.thread.i.i:                                      ; preds = %bb.g, %_ZNK4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EE7getNodeEPKS2_.exit
  %i.bj = load i32, ptr %i.aw, align 8, !tbaa !427 ; 4 uses
  %.not1012.i.i = icmp ugt i32 %i.bj, %i.bc
  br i1 %.not1012.i.i, label %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7getIDomEPS4_.exit, label %.thread14.i.i

.thread14.i.i:                                    ; preds = %.thread.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1701
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1248
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !427
  %.fr.i.i = freeze i32 %i.bn                     ; 2 uses
  %.not11.i.i = icmp eq i32 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.not11.i.i, i32 %i.bc, i32 %.fr.i.i
  %i.bo = add i32 %spec.select.i.i, 1             ; 6 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp eq i32 %i.bj, %i.bo
  br i1 %i.bq, label %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7getIDomEPS4_.exit, label %bb.h

bb.h:                                             ; preds = %.thread14.i.i
  %i.br = icmp ugt i32 %i.bj, %i.bo
  br i1 %i.br, label %.sink.split.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %i.ax, align 4, !tbaa !589
  %i.bt = icmp ugt i32 %i.bo, %i.bs
  br i1 %i.bt, label %bb.j, label %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull %i.ay, i64 noundef %i.bp, i64 noundef 32) #30
  %.pre.i.i.i.i = load i32, ptr %i.aw, align 8, !tbaa !427
  br label %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i.i.in = phi i32 [ %i.bj, %bb.i ], [ %.pre.i.i.i.i, %bb.j ] ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %.pre-phi.i.i.i.i.in, %i.bo
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i.i
  %.pre-phi.i.i.i.i = zext i32 %.pre-phi.i.i.i.i.in to i64 ; 2 uses
  %i.bu = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bv = getelementptr [32 x i8], ptr %i.bu, i64 %.pre-phi.i.i.i.i
  %i.bw = sub nsw i64 %i.bp, %.pre-phi.i.i.i.i
  %i.bx = shl nsw i64 %i.bw, 5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bx, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7InfoRecEE7reserveEm.exit.i.i.i.i, %bb.h
  store i32 %i.bo, ptr %i.aw, align 8, !tbaa !427
  br label %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7getIDomEPS4_.exit

_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7getIDomEPS4_.exit: ; preds = %.thread.i.i, %.thread14.i.i, %.sink.split.i.i.i.i
  %i.by = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bf
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2922
  %i.cc = tail call noundef ptr @_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE15getNodeForBlockEPS4_RS5_(ptr noundef nonnull align 8 dereferenceable(1592) %0, ptr noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(204) %1)
  %i.cd = tail call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EE10createNodeEPS2_PNS_15DomTreeNodeBaseIS2_EE(ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull %i.az, ptr noundef %i.cc) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EE7getNodeEPKS2_.exit, %_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEEE7getIDomEPS4_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.as
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !573  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.z) #30
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.ac) #30
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i5.i, -1
  %i.ag = and i32 %i.af, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !2925

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !2926

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ah = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ai = and i32 %i.ah, 1
  %.not.i9 = icmp eq i32 %i.ai, 0
  br i1 %.not.i9, label %bb.e, label %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !414 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !414
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 72
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #30
  store i32 0, ptr %i.c, align 8, !tbaa !414
  %.pre27 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre27, 1
  br label %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit, %bb.e, %bb.f
  %.pre-phi = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit ], [ 0, %bb.e ], [ %.pre33, %bb.f ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.at = load i32, ptr %1, align 8
  %i.au = and i32 %i.at, 1
  %.not.i10 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = select i1 %.not.i10, i32 %i.aw, i32 4   ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 5
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre29 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre30 = load i32, ptr %i.c, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre32 = load ptr, ptr %.phi.trans.insert31, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE15allocateBucketsEj.exit

bb.h:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.az = zext i32 %i.ax to i64                   ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 72               ; 2 uses
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  %i.bf = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.be, i64 noundef 8) #30 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !414
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ba ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !414
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !414
  %.pre28 = load i32, ptr %0, align 8
  %i.bj = and i32 %.pre28, 1
  br label %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE15allocateBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE15allocateBucketsEj.exit: ; preds = %bb.h, %bb.g
  %i.bk = phi ptr [ %i.bh, %bb.h ], [ %.pre32, %bb.g ]
  %i.bl = phi i32 [ %i.aw, %bb.h ], [ %.pre30, %bb.g ]
  %i.bm = phi ptr [ %i.bf, %bb.h ], [ %.pre29, %bb.g ]
  %i.bn = phi i32 [ %i.bj, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.bo = load i32, ptr %1, align 8
  %i.bp = and i32 %i.bo, -2
  %i.bq = or disjoint i32 %i.bn, %i.bp
  store i32 %i.bq, ptr %0, align 8
  %.not.i.i.i11 = icmp eq i32 %i.bn, 0            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = select i1 %.not.i.i.i11, ptr %i.bm, ptr %i.br ; 3 uses
  %i.bt = load i32, ptr %1, align 8
  %i.bu = and i32 %i.bt, 1
  %.not.i12 = icmp eq i32 %i.bu, 0                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %.not.i12, ptr %i.bw, ptr %i.bv ; 3 uses
  %i.by = select i1 %.not.i.i.i11, i32 %i.bl, i32 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ca = select i1 %.not.i.i.i11, ptr %i.bk, ptr %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = select i1 %.not.i12, ptr %i.cd, ptr %i.cb
  %i.cf = zext i32 %i.by to i64
  %i.cg = add nuw nsw i64 %i.cf, 31
  %i.ch = lshr i64 %i.cg, 5                       ; 4 uses
  %i.ci = shl nuw nsw i64 %i.ch, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.ce, i64 %i.ci, i1 false)
  %.not.i19 = icmp eq i64 %i.ch, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS7_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8copyFromERKSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE15allocateBucketsEj.exit
  %i.cj = icmp eq ptr %i.bs, %i.bx
  %.fr = freeze i1 %i.cj
  br i1 %.fr, label %.lr.ph21.split.us, label %.lr.ph21.split

.lr.ph21.split.us:                                ; preds = %.lr.ph21, %._crit_edge.split.us.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %._crit_edge.split.us.us ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv24
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !573 ; 2 uses
  %.not11.i17.us = icmp eq i32 %i.cl, 0
  br i1 %.not11.i17.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.us.preheader.i.i.us.us, %.lr.ph21.split.us
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.next25, %i.ch
  br i1 %.not.i.us, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS7_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8copyFromERKSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split.us, !llvm.loop !2927

.lr.ph.us:                                        ; preds = %.lr.ph21.split.us
  %indvars.iv24.tr = trunc nuw i64 %indvars.iv24 to i32
  %i.cm = shl nuw i32 %indvars.iv24.tr, 5
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.us.preheader.i.i.us.us

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.us.preheader.i.i.us.us: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.us.preheader.i.i.us.us, %.lr.ph.us
  %.0.i18.us.us = phi i32 [ %i.cl, %.lr.ph.us ], [ %i.dc, %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.us.preheader.i.i.us.us ] ; 3 uses
  %i.cn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18.us.us, i1 true)
  %i.co = or disjoint i32 %i.cn, %i.cm
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.cp ; 9 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !556
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !556
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 0, ptr %i.cv, align 8, !tbaa !427
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i32 2, ptr %i.cw, align 4, !tbaa !589
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i32 0, ptr %i.cz, align 8, !tbaa !427
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  store i32 2, ptr %i.da, align 4, !tbaa !589
  %i.db = add i32 %.0.i18.us.us, -1
  %i.dc = and i32 %i.db, %.0.i18.us.us            ; 2 uses
  %.not11.i.us.us = icmp eq i32 %i.dc, 0
  br i1 %.not11.i.us.us, label %._crit_edge.split.us.us, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.us.preheader.i.i.us.us, !llvm.loop !2928

.lr.ph21.split:                                   ; preds = %.lr.ph21, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !573 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.de, 0
  br i1 %.not11.i17, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21.split
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.df = shl nuw i32 %indvars.iv.tr, 5
  br label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.de, %.lr.ph ], [ %i.en, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.dg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.dh = or disjoint i32 %i.dg, %i.df
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.di ; 9 uses
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.di ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !556
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !556
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !427
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 2, ptr %i.dq, align 4, !tbaa !589
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !427 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.split.preheader.i.i
  %i.dt = icmp ugt i32 %i.ds, 2
  br i1 %i.dt, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i: ; preds = %bb.i
  %i.du = zext i32 %i.ds to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull %i.do, i64 noundef %i.du, i64 noundef 8) #30
  %.pre.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.dm, align 8, !tbaa !21
  br label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i, %bb.i
  %i.dv = phi ptr [ %.pre.i.i, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i ], [ %i.do, %bb.i ]
  %i.dw = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ds, %bb.i ]
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !21
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.dx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 8 %i.dy, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i
  store i32 %i.ds, ptr %i.dp, align 8, !tbaa !427
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.i.i

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.i.i: ; preds = %.sink.split.i.i.i.i, %.split.preheader.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 56 ; 3 uses
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !427
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  store i32 2, ptr %i.ed, align 4, !tbaa !589
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !427 ; 5 uses
  %.not.i.i.1.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.1.i.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.i.i
  %i.eg = icmp ugt i32 %i.ef, 2
  br i1 %i.eg, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1.i.i, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1.i.i: ; preds = %bb.j
  %i.eh = zext i32 %i.ef to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull %i.eb, i64 noundef %i.eh, i64 noundef 8) #30
  %.pre.i.1.i.i = load i32, ptr %i.ee, align 8, !tbaa !427 ; 2 uses
  %.not.i.i.i.1.i.i = icmp eq i32 %.pre.i.1.i.i, 0
  br i1 %.not.i.i.i.1.i.i, label %.sink.split.i.i.1.i.i, label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1_crit_edge.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1_crit_edge.i.i: ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1.i.i
  %.pre5.i.i = load ptr, ptr %i.dz, align 8, !tbaa !21
  br label %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1.i.i

_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1.i.i: ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1_crit_edge.i.i, %bb.j
  %i.ei = phi ptr [ %.pre5.i.i, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1_crit_edge.i.i ], [ %i.eb, %bb.j ]
  %i.ej = phi i32 [ %.pre.i.1.i.i, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1._ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1_crit_edge.i.i ], [ %i.ef, %bb.j ]
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !21
  %gepdiff.i.i.1.i.i = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 8 %i.el, i64 %gepdiff.i.i.1.i.i, i1 false)
  br label %.sink.split.i.i.1.i.i

.sink.split.i.i.1.i.i:                            ; preds = %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.1.i.i, %_ZSt4copyIPKPN4llvm4bolt16BinaryBasicBlockEPS3_ET0_T_S8_S7_.exit30.i.i.1.i.i
  store i32 %i.ef, ptr %i.ec, align 8, !tbaa !427
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj2EEC2ERKS4_.exit.i.i, %.sink.split.i.i.1.i.i
  %i.em = add i32 %.0.i18, -1
  %i.en = and i32 %i.em, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.en, 0
  br i1 %.not11.i, label %._crit_edge.split, label %.split.preheader.i.i, !llvm.loop !2928

._crit_edge.split:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS4_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8copyFromERKSD_ENKUljE_clEj.exit, %.lr.ph21.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS7_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8copyFromERKSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split, !llvm.loop !2927

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS7_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8copyFromERKSG_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %_ZN4llvm13SmallDenseMapIPNS_4bolt16BinaryBasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit

_ZN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEE12assignRemoteEOS4_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !573
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !573
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !589
  store i32 0, ptr %i.j, align 8, !tbaa !427
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !427  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !427  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit
    i32 1, label %bb.h
  ], !prof !1633

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !556
  store ptr %i.t, ptr %i.s, align 8, !tbaa !556
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit

_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !427
  store i32 0, ptr %i.m, align 8, !tbaa !427
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !589
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !427
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #30
  br label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !582

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
end_hunk_8
