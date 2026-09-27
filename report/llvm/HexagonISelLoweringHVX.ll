Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE:bb.a
  %31 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %32 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %33 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %34 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %35 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %i.b = trunc i64 %2 to i32                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389
  %i.e = zext i16 %4 to i64                       ; 2 uses
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !149  ; 6 uses
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.l, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57, !nonnull !21, !align !58 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !143
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.s = load i8, ptr %i.r, align 8, !range !20
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.q, i1 %i.t, i1 false        ; 4 uses
  %spec.select.i = select i1 %i.u, i32 64, i32 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  store i32 0, ptr %i.w, align 8, !tbaa !190
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 32, ptr %i.x, align 4, !tbaa !191
  %.not766 = icmp eq i16 %i.h, 7                  ; 2 uses
  br i1 %.not766, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 357
  %i.z = load i8, ptr %i.y, align 1, !tbaa !145, !range !20, !noundef !21
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = icmp eq i16 %i.h, 14
  %or.cond716.not = and i1 %i.ab, %i.aa
  br i1 %or.cond716.not, label %.critedge, label %.critedge502

.critedge502:                                     ; preds = %bb.c
  %.mask494 = and i64 %.sroa.0.0.copyload.i, 4294967288
  %i.ac = icmp eq i64 %.mask494, 8
  %i.ad = select i1 %i.ac, i32 4, i32 2           ; 3 uses
  %i.ae = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.h, i32 noundef %i.ad)
  %.not495774 = icmp eq i32 %i.b, 0
  br i1 %.not495774, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge502
  %i.af = zext nneg i32 %i.ad to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.0775 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.ag = zext i32 %.0775 to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ag
  %i.ai = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %i.ah, i64 %i.af, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.ae, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract381 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract382 = extractvalue { ptr, i32 } %i.ai, 1
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 7, ptr null, ptr %.fca.0.extract381, i32 %.fca.1.extract382) #20 ; 2 uses
  %.fca.0.extract372 = extractvalue { ptr, i32 } %i.aj, 0 ; 2 uses
  %.fca.1.extract373 = extractvalue { ptr, i32 } %i.aj, 1 ; 2 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !190 ; 2 uses
  %i.al = load i32, ptr %i.x, align 4, !tbaa !191
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !168

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract372, i32 %.fca.1.extract373)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %bb.d
  %i.am = zext i32 %i.ak to i64
  %i.an = load ptr, ptr %8, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.am ; 2 uses
  store ptr %.fca.0.extract372, ptr %i.ao, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %.fca.1.extract373, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !190
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.w, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.e, %bb.f
  %i.ar = add i32 %.0775, %i.ad                   ; 2 uses
  %.not495 = icmp eq i32 %i.ar, %i.b
  br i1 %.not495, label %.loopexit, label %bb.d, !llvm.loop !634

.critedge:                                        ; preds = %bb.c, %_ZNK4llvm8TypeSizecvmEv.exit
  %.idx = shl nuw nsw i64 %2, 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not776 = icmp eq i64 %2, 0
  br i1 %.not776, label %.loopexit, label %.lr.ph778

.lr.ph778:                                        ; preds = %.critedge, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit512
  %.0475777 = phi ptr [ %i.bb, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit512 ], [ %1, %.critedge ] ; 3 uses
  %.sroa.0363.0.copyload = load ptr, ptr %.0475777, align 8, !tbaa !202
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0475777, i64 8
  %.sroa.4364.0.copyload = load i32, ptr %.sroa.4364.0..sroa_idx, align 8, !tbaa !152
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 7, ptr null, ptr %.sroa.0363.0.copyload, i32 %.sroa.4364.0.copyload) #20 ; 2 uses
  %.fca.0.extract354 = extractvalue { ptr, i32 } %i.at, 0 ; 2 uses
  %.fca.1.extract355 = extractvalue { ptr, i32 } %i.at, 1 ; 2 uses
  %i.au = load i32, ptr %i.w, align 8, !tbaa !190 ; 2 uses
  %i.av = load i32, ptr %i.x, align 4, !tbaa !191
  %.not.i510 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i510, label %bb.h, label %bb.g, !prof !168

bb.g:                                             ; preds = %.lr.ph778
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract354, i32 %.fca.1.extract355)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit512

bb.h:                                             ; preds = %.lr.ph778
  %i.aw = zext i32 %i.au to i64
  %i.ax = load ptr, ptr %8, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  store ptr %.fca.0.extract354, ptr %i.ay, align 1
  %.sroa.32.0..sroa_idx.i511 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %.fca.1.extract355, ptr %.sroa.32.0..sroa_idx.i511, align 1
  %i.az = load i32, ptr %i.w, align 8, !tbaa !190
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.w, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit512

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit512: ; preds = %bb.g, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0475777, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.as
  br i1 %.not, label %.loopexit, label %.lr.ph778

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit512, %.critedge502, %.critedge
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !190 ; 5 uses
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !24    ; 3 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.l
  %.sroa.0645.0 = phi ptr [ %.sroa.0645.1, %bb.l ], [ null, %.loopexit ] ; 4 uses
  %.sroa.9.0 = phi i32 [ %.sroa.9.1, %bb.l ], [ 0, %.loopexit ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.loopexit ] ; 2 uses
  %.01312.i = phi i1 [ %.1.i, %bb.l ], [ true, %.loopexit ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !199 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !189
  %i.bj = add i32 %i.bi, -53
  %spec.select.i.i.i = icmp ult i32 %i.bj, 2
  br i1 %spec.select.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %.not16.i = icmp eq ptr %.sroa.0645.0, null
  br i1 %.not16.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.9.0..sroa_idx649 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.9.0.copyload650 = load i32, ptr %.sroa.9.0..sroa_idx649, align 8, !tbaa !152
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = icmp ne ptr %.sroa.0645.0, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp ne i32 %.sroa.9.0, %i.bm
  %.not3.i.i = select i1 %i.bk, i1 true, i1 %i.bn
  br i1 %.not3.i.i, label %.critedge504, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.sroa.0645.1 = phi ptr [ %.sroa.0645.0, %.lr.ph.i ], [ %i.bg, %bb.j ], [ %.sroa.0645.0, %bb.k ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %.lr.ph.i ], [ %.sroa.9.0.copyload650, %bb.j ], [ %.sroa.9.0, %bb.k ] ; 2 uses
  %.1.i = phi i1 [ %.01312.i, %.lr.ph.i ], [ false, %bb.j ], [ false, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i513 = icmp eq i64 %indvars.iv.next.i, %i.bd
  br i1 %.not.i513, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !635

._crit_edge.i:                                    ; preds = %bb.l
  br i1 %.1.i, label %._crit_edge.thread.i, label %bb.m

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.loopexit
  %.sroa.0645.0.copyload646 = load ptr, ptr %i.be, align 8, !tbaa !202
  %.sroa.9.0..sroa.0643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.9.0.copyload648 = load i32, ptr %.sroa.9.0..sroa.0643.0..sroa_idx, align 8, !tbaa !152
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.sroa.0645.2.ph = phi ptr [ %.sroa.0645.1, %._crit_edge.i ], [ %.sroa.0645.0.copyload646, %._crit_edge.thread.i ] ; 3 uses
  %.sroa.9.2.ph = phi i32 [ %.sroa.9.1, %._crit_edge.i ], [ %.sroa.9.0.copyload648, %._crit_edge.thread.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0645.2.ph, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !189 ; 2 uses
  %36 = icmp slt i32 %i.bp, 0
  %.0.v.i = select i1 %36, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.bp, %.0.v.i
  br i1 %.0.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %4, ptr null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bn

bb.o:                                             ; preds = %bb.m
  %i.br = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0645.2.ph, i32 %.sroa.9.2.ph) #20
  br i1 %i.br, label %bb.p, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

bb.p:                                             ; preds = %bb.o
  %i.bs = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) #20
  br label %bb.bn

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.o
  %spec.select899.a = select i1 %i.u, i16 82, i16 84
  store ptr %.sroa.0645.2.ph, ptr %9, align 8, !tbaa !202
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.9.2.ph, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !152
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %spec.select899.a, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #20 ; 2 uses
  %.fca.0.extract321 = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract322 = extractvalue { ptr, i32 } %i.bt, 1
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract321, i32 %.fca.1.extract322) #20
  br label %bb.bn

.critedge504:                                     ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bv = and i64 %2, 4294967295                  ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !190
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 128, ptr %i.by, align 4, !tbaa !191
  %i.bz = icmp eq i64 %i.bv, 0
  br i1 %i.bz, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit, label %bb.q

bb.q:                                             ; preds = %.critedge504
  %i.ca = icmp samesign ugt i64 %i.bv, 128
  br i1 %i.ca, label %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i: ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1040) %10, ptr noundef nonnull %i.bw, i64 noundef %i.bv, i64 noundef 8) #20
  %.pre.i.i.i = load i32, ptr %i.bx, align 8, !tbaa !190
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.bv, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !24 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, %bb.q
  %i.cb = phi ptr [ %i.bw, %bb.q ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.q ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %.pre-phi.i.i3.i
  %i.cd = sub nsw i64 %i.bv, %.pre-phi.i.i3.i
  %i.ce = shl nsw i64 %i.cd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cc, i8 0, i64 %i.ce, i1 false), !tbaa !640
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.cb, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ]
  store i32 %i.b, ptr %i.bx, align 8, !tbaa !190
  %i.cf = and i64 %2, 4294967295
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit: ; preds = %.critedge504, %.sink.split.i.i.i
  %i.cg = phi i64 [ 0, %.critedge504 ], [ %i.cf, %.sink.split.i.i.i ]
  %i.ch = phi ptr [ %i.bw, %.critedge504 ], [ %.pre, %.sink.split.i.i.i ]
  store ptr %i.ch, ptr %11, align 8, !tbaa !643
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !644
  %i.cj = call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering23getBuildVectorConstIntsENS_8ArrayRefINS_7SDValueEEENS_3MVTERNS_12SelectionDAGENS_15MutableArrayRefIPNS_11ConstantIntEEE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i64 %2, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %11) #20
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit
  %i.ck = load ptr, ptr %10, align 8, !tbaa !24
  %i.cl = load i32, ptr %i.bx, align 8, !tbaa !190
  %i.cm = zext i32 %i.cl to i64
  %i.cn = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.ck, i64 %i.cm) #20
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !389
  %i.cp = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.co) #20
  %i.cq = load ptr, ptr %0, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call i16 %i.cs(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.cp, i32 noundef 0) #20
  %.sroa.0629.0.insert.insert = select i1 %i.u, i16 262, i16 263 ; 2 uses
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getConstantPoolEPKNS_8ConstantENS_3EVTENS_10MaybeAlignEibj(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef %i.cn, i16 %i.ct, ptr null, i16 %.sroa.0629.0.insert.insert, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #20 ; 2 uses
  %.fca.0.extract295 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract296 = extractvalue { ptr, i32 } %i.cu, 1
  %i.cv = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17LowerConstantPoolENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract295, i32 %.fca.1.extract296, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract291 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract292 = extractvalue { ptr, i32 } %i.cv, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 288
  store ptr %.fca.0.extract291, ptr %12, align 8, !tbaa !202
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract292, ptr %.sroa.4304.0..sroa_idx, align 8, !tbaa !152
  call void @_ZN4llvm18MachinePointerInfo15getConstantPoolERNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %13, ptr noundef nonnull align 8 dereferenceable(1065) %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  %i.cx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nonnull %i.cw, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %13, i16 %.sroa.0629.0.insert.insert, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bl

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.cy, ptr %15, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !190
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  store i32 128, ptr %i.da, align 4, !tbaa !191
  %.idx.i = shl nuw nsw i64 %2, 4
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not20.i = icmp ne i64 %2, 0
  call void @llvm.assume(i1 %.not20.i)
  br label %.lr.ph.i517

.lr.ph.i517:                                      ; preds = %bb.s, %bb.ac
  %.01723.i = phi ptr [ %i.en, %bb.ac ], [ %1, %bb.s ] ; 2 uses
  %.sroa.07.022.i = phi ptr [ %.sroa.07.2.ph.i, %bb.ac ], [ null, %bb.s ] ; 4 uses
  %.sroa.79.021.i = phi i32 [ %.sroa.79.2.ph.i, %bb.ac ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %.01723.i, align 8, !tbaa !202 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !189 ; 3 uses
  %37 = icmp slt i32 %i.dd, 0
  %.0.v.i.i = select i1 %37, i32 -11, i32 53
  %.0.i.i = icmp eq i32 %i.dd, %.0.v.i.i
  br i1 %.0.i.i, label %bb.t, label %38

bb.t:                                             ; preds = %.lr.ph.i517
  %i.de = load i32, ptr %i.cz, align 8, !tbaa !190 ; 2 uses
  %i.df = load i32, ptr %i.da, align 4, !tbaa !191
  %.not.i.i = icmp ult i32 %i.de, %i.df
  br i1 %.not.i.i, label %bb.v, label %bb.u, !prof !168

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef -1)
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.dg = zext i32 %i.de to i64
  %i.dh = load ptr, ptr %15, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 -1, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.cz, align 8, !tbaa !190
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.cz, align 8, !tbaa !190
  br label %bb.ac

38:                                               ; preds = %.lr.ph.i517
  %.not23.i = icmp eq i32 %i.dd, 164
  br i1 %.not23.i, label %bb.w, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread"

bb.w:                                             ; preds = %38
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !201 ; 3 uses
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.dm, align 8, !tbaa !202 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.5.sroa.0.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !152 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.07.022.i, null
  %.not25.i = icmp eq ptr %.sroa.0.0.copyload1.i, %.sroa.07.022.i
  %or.cond.i = select i1 %.not24.i, i1 true, i1 %.not25.i
  br i1 %or.cond.i, label %bb.x, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread"

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !199 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !189
  switch i32 %i.dq, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread" [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.x, %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !392 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !394 ; 3 uses
  %i.dw = icmp ult i32 %i.dv, 65
  br i1 %i.dw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.dx = load i64, ptr %i.dt, align 8, !tbaa !153
  %i.dy = icmp eq i32 %i.dv, 0
  %i.dz = sub nuw nsw i32 64, %i.dv
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = shl i64 %i.dx, %i.ea
  %i.ec = ashr exact i64 %i.eb, %i.ea
  %.0.i.i.i.i.i = select i1 %i.dy, i64 0, i64 %i.ec
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

bb.z:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.ed = load ptr, ptr %i.dt, align 8, !tbaa !153
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !395
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i26.i = phi i64 [ %.0.i.i.i.i.i, %bb.y ], [ %i.ee, %bb.z ]
  %i.ef = trunc i64 %.0.i.i.i26.i to i32          ; 2 uses
  %i.eg = load i32, ptr %i.cz, align 8, !tbaa !190 ; 2 uses
  %i.eh = load i32, ptr %i.da, align 4, !tbaa !191
  %.not.i27.i = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i27.i, label %bb.ab, label %bb.aa, !prof !168

bb.aa:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.ef)
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %15, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ei
  store i32 %i.ef, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.cz, align 8, !tbaa !190
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.cz, align 8, !tbaa !190
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.v, %bb.u
  %.sroa.79.2.ph.i = phi i32 [ %.sroa.5.sroa.0.0.copyload.i, %bb.ab ], [ %.sroa.5.sroa.0.0.copyload.i, %bb.aa ], [ %.sroa.79.021.i, %bb.u ], [ %.sroa.79.021.i, %bb.v ] ; 3 uses
  %.sroa.07.2.ph.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.ab ], [ %.sroa.0.0.copyload1.i, %bb.aa ], [ %.sroa.07.022.i, %bb.u ], [ %.sroa.07.022.i, %bb.v ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01723.i, i64 16 ; 2 uses
  %.not.i518 = icmp eq ptr %i.en, %i.db
  br i1 %.not.i518, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit", label %.lr.ph.i517

"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit": ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.2.ph.i, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !196
  %i.eq = zext i32 %.sroa.79.2.ph.i to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.eq
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.er, align 8, !tbaa !149 ; 4 uses
  %i.es = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.es, 53
  br i1 %spec.select.i.i, label %bb.ad, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.ad:                                            ; preds = %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit"
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit"
  %i.et = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.eu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 -2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !151 ; 3 uses
  %i.ex = zext i16 %i.ew to i32                   ; 6 uses
  %i.ey = icmp eq i32 %i.ex, %i.b                 ; 2 uses
  %i.ez = shl i32 %i.b, 1
  %i.fa = icmp eq i32 %i.ez, %i.ex
  %or.cond = or i1 %i.ey, %i.fa
  br i1 %or.cond, label %bb.ae, label %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread"

bb.ae:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.fb, ptr %16, align 8, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  store i32 0, ptr %i.fc, align 8, !tbaa !190
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 128, ptr %i.fd, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.fe = add nuw nsw i32 %i.ex, 63
  %i.ff = lshr i32 %i.fe, 6                       ; 3 uses
  %i.fg = zext nneg i32 %i.ff to i64              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.fh, ptr %17, align 8, !tbaa !24
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.fj, align 4, !tbaa !191
  %i.fk = icmp ugt i16 %i.ew, 384
  br i1 %i.fk, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.ae
  store i32 0, ptr %i.fi, align 8, !tbaa !190
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %17, ptr noundef nonnull %i.fh, i64 noundef %i.fg, i64 noundef 8) #20
  %i.fl = load ptr, ptr %17, align 8, !tbaa !24
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.ae
  %.not.i.i519 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i519, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.fl, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.fh, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !395
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.ff, ptr %i.fi, align 8, !tbaa !190
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 %i.ex, ptr %i.fm, align 8, !tbaa !651
  %i.fn = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.fo = load i32, ptr %i.cz, align 8, !tbaa !190 ; 2 uses
  %i.fp = zext i32 %i.fo to i64
  %.idx808 = shl nuw nsw i64 %i.fp, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx808
  %.not496800 = icmp eq i32 %i.fo, 0
  br i1 %.not496800, label %.preheader.a, label %.lr.ph802

.preheader.a:                                     ; preds = %bb.ai, %_ZN4llvm9BitVectorC2Ejb.exit
  %.not497803 = icmp eq i16 %i.ew, 0
  br i1 %.not497803, label %._crit_edge806, label %.lr.ph805

.lr.ph802:                                        ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %bb.ai
  %.0477801 = phi ptr [ %i.gj, %bb.ai ], [ %i.fn, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 2 uses
  %i.fr = load i32, ptr %.0477801, align 4, !tbaa !152 ; 5 uses
  %i.fs = load i32, ptr %i.fc, align 8, !tbaa !190 ; 2 uses
  %i.ft = load i32, ptr %i.fd, align 4, !tbaa !191
  %.not.i520 = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i520, label %bb.ag, label %bb.af, !prof !168

bb.af:                                            ; preds = %.lr.ph802
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %i.fr)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.ag:                                            ; preds = %.lr.ph802
  %i.fu = zext i32 %i.fs to i64
  %i.fv = load ptr, ptr %16, align 8, !tbaa !24
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fu
  store i32 %i.fr, ptr %i.fw, align 1
  %i.fx = load i32, ptr %i.fc, align 8, !tbaa !190
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fc, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.af, %bb.ag
  %i.fz = icmp sgt i32 %i.fr, -1
  br i1 %i.fz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.ga = and i32 %i.fr, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = lshr i32 %i.fr, 6
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = load ptr, ptr %17, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !395
  %i.gi = or i64 %i.gh, %i.gc
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !395
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.0477801, i64 4 ; 2 uses
  %.not496 = icmp eq ptr %i.gj, %i.fq
  br i1 %.not496, label %.preheader.a, label %.lr.ph802

.lr.ph805:                                        ; preds = %.preheader.a, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522
  %.0478804 = phi i32 [ %i.hb, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522 ], [ 0, %.preheader.a ] ; 5 uses
  %i.gk = load i32, ptr %i.fc, align 8, !tbaa !190 ; 3 uses
  %i.gl = zext i32 %i.gk to i64
  %i.gm = icmp eq i32 %i.gk, %i.ex
  br i1 %i.gm, label %._crit_edge806, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph805
  %i.gn = and i32 %.0478804, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %i.gq = lshr i32 %.0478804, 6
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = load ptr, ptr %17, align 8, !tbaa !24
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !395
  %i.gv = and i64 %i.gu, %i.gp
  %.not769 = icmp eq i64 %i.gv, 0
  br i1 %.not769, label %bb.ak, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

bb.ak:                                            ; preds = %bb.aj
  %i.gw = load i32, ptr %i.fd, align 4, !tbaa !191
  %.not.i521 = icmp ult i32 %i.gk, %i.gw
  br i1 %.not.i521, label %bb.am, label %bb.al, !prof !168

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %.0478804)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

bb.am:                                            ; preds = %bb.ak
  %i.gx = load ptr, ptr %16, align 8, !tbaa !24
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gl
  store i32 %.0478804, ptr %i.gy, align 1
  %i.gz = load i32, ptr %i.fc, align 8, !tbaa !190
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.fc, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522: ; preds = %bb.am, %bb.al, %bb.aj
  %i.hb = add nuw nsw i32 %.0478804, 1            ; 2 uses
  %.not497 = icmp eq i32 %i.hb, %i.ex
  br i1 %.not497, label %._crit_edge806, label %.lr.ph805, !llvm.loop !636

._crit_edge806:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522, %.lr.ph805, %.preheader.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.hc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.extract246 = extractvalue { ptr, i32 } %i.hc, 0
  %.fca.1.extract247 = extractvalue { ptr, i32 } %i.hc, 1
  store ptr %.fca.0.extract246, ptr %18, align 8
  %.sroa.2249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract247, ptr %.sroa.2249.0..sroa_idx, align 8
  %i.hd = load ptr, ptr %16, align 8, !tbaa !24
  store ptr %i.hd, ptr %19, align 8, !tbaa !321
  %i.he = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hf = load i32, ptr %i.fc, align 8, !tbaa !190
  %i.hg = zext i32 %i.hf to i64
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !322
  %i.hh = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.07.2.ph.i, i32 %.sroa.79.2.ph.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %19) #20 ; 2 uses
  %.fca.0.extract242 = extractvalue { ptr, i32 } %i.hh, 0 ; 2 uses
  %.fca.1.extract243 = extractvalue { ptr, i32 } %i.hh, 1 ; 2 uses
  br i1 %i.ey, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge806
  %i.hi = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract242, i32 %.fca.1.extract243, ptr noundef nonnull align 8 dereferenceable(920) %5) ; 2 uses
  %.fca.0.extract235 = extractvalue { ptr, i32 } %i.hi, 0
  %.fca.1.extract236 = extractvalue { ptr, i32 } %i.hi, 1
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge806, %bb.an
  %.sroa.0473.0 = phi ptr [ %.fca.0.extract235, %bb.an ], [ %.fca.0.extract242, %._crit_edge806 ]
  %.sroa.8474.0 = phi i32 [ %.fca.1.extract236, %bb.an ], [ %.fca.1.extract243, %._crit_edge806 ]
  %i.hj = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.fh
  br i1 %i.hk, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.hj) #20
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.hl = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.fb
  br i1 %i.hm, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.hl) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN4llvm9BitVectorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.bj

"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread": ; preds = %bb.x, %38, %bb.w, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.hn = load ptr, ptr %8, align 8, !tbaa !24    ; 4 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.ba
  %i.ho = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract207 = extractvalue { ptr, i32 } %i.ho, 0 ; 2 uses
  %.fca.1.extract208 = extractvalue { ptr, i32 } %i.ho, 1 ; 2 uses
  %i.hp = sext i32 %.1 to i64                     ; 4 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !152 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, 1
  br i1 %i.hs, label %_ZN4llvm3MVT11getVectorVTES0_j.exit527, label %bb.bb

bb.at:                                            ; preds = %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread", %bb.ba
  %indvars.iv = phi i64 [ 0, %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread" ], [ %indvars.iv.next, %bb.ba ] ; 8 uses
  %.0479783 = phi i32 [ 0, %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread" ], [ %.1, %bb.ba ] ; 3 uses
  %i.ht = trunc i64 %indvars.iv to i32
  %i.hu = sub i32 %i.bc, %i.ht                    ; 3 uses
  %i.hv = trunc i64 %indvars.iv to i32
  %.neg = add i32 %i.hv, 1
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store i32 0, ptr %i.hw, align 4, !tbaa !152
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %indvars.iv ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !199 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !189
  %i.ib = add i32 %i.ia, -53
  %spec.select.i.i523 = icmp ult i32 %i.ib, 2
  br i1 %spec.select.i.i523, label %bb.ba, label %.preheader772

.preheader772:                                    ; preds = %bb.at
  %.not500779 = icmp eq i64 %indvars.iv, %i.bd
  br i1 %.not500779, label %.preheader772.._crit_edge_crit_edge, label %.lr.ph781

.preheader772.._crit_edge_crit_edge:              ; preds = %.preheader772
  %.pre823 = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

.lr.ph781:                                        ; preds = %.preheader772
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.id = load i32, ptr %i.ic, align 8            ; 3 uses
  %i.ie = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %xtraiter = and i32 %i.hu, 1
  %i.if = icmp eq i32 %i.bc, %.neg
  br i1 %i.if, label %.epil.preheader, label %.lr.ph781.new

.lr.ph781.new:                                    ; preds = %.lr.ph781
  %unroll_iter = and i32 %i.hu, -2
  br label %bb.av

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.az
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph781
  %.epil.init = phi i32 [ 0, %.lr.ph781 ], [ %i.jp, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0481780.epil.init = phi i32 [ %i.ie, %.lr.ph781 ], [ %i.jq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod909 = trunc i32 %i.hu to i1
  call void @llvm.assume(i1 %lcmp.mod909)
  %i.ig = zext i32 %.0481780.epil.init to i64
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.ig ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !199
  %i.ij = icmp eq ptr %i.hy, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.il = load i32, ptr %i.ik, align 8
  %i.im = icmp eq i32 %i.id, %i.il
  %i.in = select i1 %i.ij, i1 %i.im, i1 false
  br i1 %i.in, label %bb.au, label %._crit_edge

bb.au:                                            ; preds = %.epil.preheader
  %i.io = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.io, ptr %i.hw, align 4, !tbaa !152
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.au, %.epil.preheader, %.preheader772.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre823, %.preheader772.._crit_edge_crit_edge ], [ %i.ie, %.epil.preheader ], [ %i.ie, %bb.au ], [ %i.ie, %._crit_edge.loopexit.unr-lcssa ]
  %i.ip = phi i32 [ 0, %.preheader772.._crit_edge_crit_edge ], [ %i.jp, %._crit_edge.loopexit.unr-lcssa ], [ %.epil.init, %.epil.preheader ], [ %i.io, %bb.au ]
  %i.iq = sext i32 %.0479783 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !152
  %i.it = icmp sgt i32 %i.ip, %i.is
  %spec.select = select i1 %i.it, i32 %.pre-phi, i32 %.0479783
  br label %bb.ba

bb.av:                                            ; preds = %bb.az, %.lr.ph781.new
  %i.iu = phi i32 [ 0, %.lr.ph781.new ], [ %i.jp, %bb.az ] ; 2 uses
  %.0481780 = phi i32 [ %i.ie, %.lr.ph781.new ], [ %i.jq, %bb.az ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph781.new ], [ %niter.next.1, %bb.az ]
  %i.iv = zext i32 %.0481780 to i64
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.iv ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !199
  %i.iy = icmp eq ptr %i.hy, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = load i32, ptr %i.iz, align 8
  %i.jb = icmp eq i32 %i.id, %i.ja
  %i.jc = select i1 %i.iy, i1 %i.jb, i1 false
  br i1 %i.jc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jd = add nsw i32 %i.iu, 1                    ; 2 uses
  store i32 %i.jd, ptr %i.hw, align 4, !tbaa !152
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.je = phi i32 [ %i.iu, %bb.av ], [ %i.jd, %bb.aw ] ; 2 uses
  %i.jf = add i32 %.0481780, 1
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !199
  %i.jj = icmp eq ptr %i.hy, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jl = load i32, ptr %i.jk, align 8
  %i.jm = icmp eq i32 %i.id, %i.jl
  %i.jn = select i1 %i.jj, i1 %i.jm, i1 false
  br i1 %i.jn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jo = add nsw i32 %i.je, 1                    ; 2 uses
  store i32 %i.jo, ptr %i.hw, align 4, !tbaa !152
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jp = phi i32 [ %i.je, %bb.ax ], [ %i.jo, %bb.ay ] ; 3 uses
  %i.jq = add i32 %.0481780, 2                    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.av, !llvm.loop !637

bb.ba:                                            ; preds = %._crit_edge, %bb.at
  %.1 = phi i32 [ %.0479783, %bb.at ], [ %spec.select, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not498 = icmp eq i64 %indvars.iv.next, %i.bd
  br i1 %.not498, label %bb.as, label %bb.at, !llvm.loop !638

_ZN4llvm3MVT11getVectorVTES0_j.exit527:           ; preds = %bb.as
  %spec.select900 = select i1 %i.u, i16 82, i16 84
  %i.jr = load ptr, ptr %8, align 8, !tbaa !24
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.hp
  %i.jt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %spec.select900, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.js) #20 ; 2 uses
  %.fca.0.extract198 = extractvalue { ptr, i32 } %i.jt, 0
  %.fca.1.extract199 = extractvalue { ptr, i32 } %i.jt, 1
  %i.ju = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract198, i32 %.fca.1.extract199) #20 ; 2 uses
  %.fca.0.extract187 = extractvalue { ptr, i32 } %i.ju, 0
  %.fca.1.extract188 = extractvalue { ptr, i32 } %i.ju, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store ptr %.fca.0.extract207, ptr %21, align 8, !tbaa !202
  %.sroa.7213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract208, ptr %.sroa.7213.0..sroa_idx, align 8, !tbaa !152
  %i.jv = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.fca.0.extract187, ptr %i.jv, align 8, !tbaa !202
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 %.fca.1.extract188, ptr %.sroa.4196.0..sroa_idx, align 8, !tbaa !152
  %i.jw = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.jx = lshr exact i32 %spec.select.i, 1
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %i.jy, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract177 = extractvalue { ptr, i32 } %i.jz, 0
  %.fca.1.extract178 = extractvalue { ptr, i32 } %i.jz, 1
  store ptr %.fca.0.extract177, ptr %i.jw, align 8
  %.sroa.2180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i32 %.fca.1.extract178, ptr %.sroa.2180.0..sroa_idx, align 8
  store ptr %21, ptr %20, align 8, !tbaa !194
  %i.ka = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 3, ptr %i.ka, align 8, !tbaa !195
  %i.kb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 571, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %20) #20 ; 2 uses
  %.fca.0.extract173 = extractvalue { ptr, i32 } %i.kb, 0
  %.fca.1.extract174 = extractvalue { ptr, i32 } %i.kb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit527, %bb.as
  %.sroa.0212.0 = phi ptr [ %.fca.0.extract173, %_ZN4llvm3MVT11getVectorVTES0_j.exit527 ], [ %.fca.0.extract207, %bb.as ] ; 4 uses
  %.sroa.7213.0 = phi i32 [ %.fca.1.extract174, %_ZN4llvm3MVT11getVectorVTES0_j.exit527 ], [ %.fca.1.extract208, %bb.as ] ; 4 uses
  %i.kc = lshr i32 %i.bc, 1                       ; 2 uses
  %.not499784 = icmp eq i32 %i.kc, 0
  br i1 %.not499784, label %._crit_edge794, label %.lr.ph793

.lr.ph793:                                        ; preds = %bb.bb
  %i.kd = icmp slt i32 %i.hr, 2                   ; 2 uses
  %.sroa.6148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.7601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.8168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.6.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.kj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.8162.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.km = zext nneg i32 %i.kc to i64              ; 2 uses
  %.pre817 = load ptr, ptr %8, align 8, !tbaa !24
  br label %bb.be

._crit_edge794.loopexit:                          ; preds = %bb.bi
  %i.kn = sext i32 %i.np to i64
end_hunk_0
begin_hunk_1_@_ZNK4llvm21HexagonTargetLowering19createHvxPrefixPredENS_7SDValueERKNS_5SDLocEjbRNS_12SelectionDAGE
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering19createHvxPrefixPredENS_7SDValueERKNS_5SDLocEjbRNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(920) %6) local_unnamed_addr #3 align 2 {
_ZN4llvm3MVT11getVectorVTES0_j.exit:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %17 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SmallVector.317", align 8 ; 8 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef.312", align 8 ; 3 uses
  %23 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca [2 x %"class.llvm::SmallVector.52"], align 16 ; 21 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !149 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !21, !align !58 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.k = load i8, ptr %i.j, align 8, !range !20
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.i, i1 %i.l, i1 false        ; 3 uses
  %spec.select.i = select i1 %i.m, i32 64, i32 128 ; 5 uses
  %.sroa.0.0.i = select i1 %i.m, i16 50, i16 51   ; 9 uses
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.f, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.n, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  store ptr %1, ptr %19, align 8, !tbaa !202
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %2, ptr %.sroa.5254.0..sroa_idx, align 8, !tbaa !152
  %i.o = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 583, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #20 ; 2 uses
  %.fca.0.extract188 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract189 = extractvalue { ptr, i32 } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.p, ptr %20, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 128, ptr %i.r, align 4, !tbaa !191
  %i.s = shl nuw nsw i32 %spec.select.i, 2
  %i.t = zext nneg i32 %i.s to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, i8 0, i64 %i.t, i1 false), !tbaa !152
  store i32 %spec.select.i, ptr %i.q, align 8, !tbaa !190
  %i.u = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.u, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit284

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit284:    ; preds = %bb.a
  %i.v = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.w = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !151
  %i.z = zext i16 %i.y to i32
  %i.aa = mul i32 %4, %i.z                        ; 4 uses
  %i.ab = udiv i32 %spec.select.i, %i.aa          ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %.fca.0.extract160 = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract161 = extractvalue { ptr, i32 } %i.ac, 1
  store ptr %.fca.0.extract160, ptr %21, align 8
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract161, ptr %.sroa.2163.0..sroa_idx, align 8
  %i.ad = load ptr, ptr %20, align 8, !tbaa !24
  store ptr %i.ad, ptr %22, align 8, !tbaa !321
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.af = load i32, ptr %i.q, align 8, !tbaa !190
  %i.ag = zext i32 %i.af to i64
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !322
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.fca.0.extract188, i32 %.fca.1.extract189, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %22) #20 ; 3 uses
  br i1 %5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit287, label %bb.e

bb.d:                                             ; preds = %bb.d, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit284
  %.0365 = phi i32 [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit284 ], [ %i.av, %bb.d ] ; 5 uses
  %i.ai = urem i32 %.0365, %i.ab
  %i.aj = udiv i32 %.0365, %i.ab
  %i.ak = mul i32 %i.ai, %i.aa
  %i.al = add i32 %i.ak, %i.aj
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.am
  store i32 %.0365, ptr %i.an, align 4, !tbaa !152
  %i.ao = or disjoint i32 %.0365, 1               ; 3 uses
  %i.ap = urem i32 %i.ao, %i.ab
  %i.aq = udiv i32 %i.ao, %i.ab
  %i.ar = mul i32 %i.ap, %i.aa
  %i.as = add i32 %i.ar, %i.aq
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.at
  store i32 %i.ao, ptr %i.au, align 4, !tbaa !152
  %i.av = add i32 %.0365, 2                       ; 2 uses
  %.not281.1 = icmp eq i32 %i.av, %spec.select.i
  br i1 %.not281.1, label %bb.c, label %bb.d, !llvm.loop !652

_ZN4llvm3MVT11getVectorVTES0_j.exit287:           ; preds = %bb.c
  %.fca.1.extract157 = extractvalue { ptr, i32 } %i.ah, 1
  %.fca.0.extract156 = extractvalue { ptr, i32 } %i.ah, 0
  %.sroa.0.0.i286 = select i1 %i.m, i16 29, i16 30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.aw = zext i32 %i.aa to i64
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract145 = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract146 = extractvalue { ptr, i32 } %i.ax, 1
  store ptr %.fca.0.extract145, ptr %23, align 8
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract146, ptr %.sroa.2148.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr %23, ptr %17, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !395
  %i.ay = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 2668, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i286, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  store ptr %i.ay, ptr %24, align 8, !tbaa !202
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 0, ptr %.sroa.4153.0..sroa_idx, align 8, !tbaa !152
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 583, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #20 ; 2 uses
  %.fca.0.extract133 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract134 = extractvalue { ptr, i32 } %i.az, 1
  store ptr %.fca.0.extract156, ptr %25, align 8, !tbaa !202
  %.sroa.5171.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract157, ptr %.sroa.5171.0..sroa_idx172, align 8, !tbaa !152
  store ptr %.fca.0.extract133, ptr %26, align 8, !tbaa !202
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract134, ptr %.sroa.4139.0..sroa_idx, align 8, !tbaa !152
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN4llvm3MVT11getVectorVTES0_j.exit287
  %.merged = phi { ptr, i32 } [ %i.ba, %_ZN4llvm3MVT11getVectorVTES0_j.exit287 ], [ %i.ah, %bb.c ]
  %i.bb = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.bb) #20
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ap

bb.g:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.bd = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i289 = icmp ult i16 %i.bd, 53
  br i1 %spec.select.i.i289, label %bb.h, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit290

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit290:    ; preds = %bb.g
  %i.be = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.bf = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.bi, ptr %27, align 16, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 7 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !190
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 3 uses
  store i32 4, ptr %i.bk, align 4, !tbaa !191
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %27, i64 96
  store ptr %i.bl, ptr %.ptr.1, align 16, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %27, i64 88
  store i32 0, ptr %i.bm, align 8, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %27, i64 92
  store i32 4, ptr %i.bn, align 4, !tbaa !191
  %i.bo = udiv i16 8, %i.bh
  %.zext = zext nneg i16 %i.bo to i32             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !189 ; 2 uses
  %32 = icmp slt i32 %i.bq, 0
  %.0.v.i = select i1 %32, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.bq, %.0.v.i
  br i1 %.0.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit290
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 8, ptr null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit290
  store ptr %1, ptr %28, align 8, !tbaa !202
  %.sroa.5254.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %2, ptr %.sroa.5254.0..sroa_idx255, align 8, !tbaa !152
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 581, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.br, %bb.i ], [ %i.bs, %bb.j ] ; 2 uses
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn, 1  ; 2 uses
  %.sroa.0112.0 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.bt = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.0112.0, i32 %.sroa.6.0, ptr noundef nonnull align 8 dereferenceable(920) %6) ; 2 uses
  %.fca.0.extract92 = extractvalue { ptr, i32 } %i.bt, 0 ; 2 uses
  %.fca.1.extract93 = extractvalue { ptr, i32 } %i.bt, 1 ; 2 uses
  %i.bu = load i32, ptr %i.bj, align 8, !tbaa !190 ; 2 uses
  %i.bv = load i32, ptr %i.bk, align 4, !tbaa !191
  %.not.i = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !168

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr %.fca.0.extract92, i32 %.fca.1.extract93)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %27, align 16, !tbaa !24
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bw ; 2 uses
  store ptr %.fca.0.extract92, ptr %i.by, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %.fca.1.extract93, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.bz = load i32, ptr %i.bj, align 8, !tbaa !190
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bj, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.l, %bb.m
  %i.cb = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.0112.0, i32 %.sroa.6.0, ptr noundef nonnull align 8 dereferenceable(920) %6) ; 2 uses
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.cb, 0 ; 2 uses
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.cb, 1 ; 2 uses
  %i.cc = load i32, ptr %i.bj, align 8, !tbaa !190 ; 2 uses
  %i.cd = load i32, ptr %i.bk, align 4, !tbaa !191
  %.not.i291 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not.i291, label %bb.o, label %bb.n, !prof !168

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr %.fca.0.extract83, i32 %.fca.1.extract84)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit293

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.ce = zext i32 %i.cc to i64
  %i.cf = load ptr, ptr %27, align 16, !tbaa !24
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  store ptr %.fca.0.extract83, ptr %i.cg, align 1
  %.sroa.32.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %.fca.1.extract84, ptr %.sroa.32.0..sroa_idx.i292, align 1
  %i.ch = load i32, ptr %i.bj, align 8, !tbaa !190
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.bj, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit293

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit293: ; preds = %bb.n, %bb.o
  %i.cj = icmp ugt i32 %4, %.zext
  br i1 %i.cj, label %.lr.ph358, label %._crit_edge

.lr.ph358:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit293
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.526.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.527.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.4.0..sroa_idx.i305 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph358, %.loopexit
  %.0268357 = phi i32 [ %.zext, %.lr.ph358 ], [ %i.gb, %.loopexit ] ; 2 uses
  %.0269356 = phi i32 [ 0, %.lr.ph358 ], [ %i.cm, %.loopexit ] ; 2 uses
  %i.cm = xor i32 %.0269356, 1                    ; 3 uses
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [80 x i8], ptr %27, i64 %i.cn ; 11 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 13 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !190
  %i.cq = icmp ult i32 %.0268357, 4
  %i.cr = zext nneg i32 %.0269356 to i64
  %i.cs = getelementptr inbounds nuw [80 x i8], ptr %27, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !24 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !190 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %.idx367 = shl nuw nsw i64 %i.cw, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx367 ; 2 uses
  %.not280353 = icmp eq i32 %i.cv, 0              ; 2 uses
  br i1 %i.cq, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  br i1 %.not280353, label %.loopexit, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph355, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit308
  %.0270354 = phi ptr [ %i.ct, %.lr.ph355 ], [ %i.fk, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit308 ] ; 3 uses
  %.sroa.069.0.copyload = load ptr, ptr %.0270354, align 8, !tbaa !202
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0270354, i64 8
  %.sroa.270.0.copyload = load i32, ptr %.sroa.270.0..sroa_idx, align 8, !tbaa !152
  %i.cz = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.069.0.copyload, i32 %.sroa.270.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %6) #20 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.cz, 0 ; 7 uses
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.cz, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.da = getelementptr inbounds nuw i8, ptr %.fca.0.extract65, i64 48 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !196
  %i.dc = zext i32 %.fca.1.extract66 to i64       ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dc
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.dd, align 8, !tbaa !149 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.de = getelementptr inbounds nuw i8, ptr %.fca.0.extract65, i64 72 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !316
  store i64 %i.df, ptr %12, align 8, !tbaa !316
  %i.dg = getelementptr inbounds nuw i8, ptr %.fca.0.extract65, i64 68 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !317
  store i32 %i.dh, ptr %i.ck, align 8, !tbaa !319
  %i.di = add i16 %.sroa.0.0.copyload.i.i.i.i, -19
  %spec.select.i.i294 = icmp ult i16 %i.di, 197
  br i1 %spec.select.i.i294, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.fca.0.extract65, ptr %13, align 8, !tbaa !202
  store i32 %.fca.1.extract66, ptr %.sroa.526.0..sroa_idx.i, align 8, !tbaa !152
  %i.dj = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #20
  br label %_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = add nsw i16 %.sroa.0.0.copyload.i.i.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.dk, 53
  br i1 %spec.select.i.i.i.i, label %bb.u, label %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i: ; preds = %bb.t
  %i.dl = zext nneg i16 %.sroa.0.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.dm = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !151
  %i.dp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dl
  %i.dq = getelementptr i8, ptr %i.dp, i64 -2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !149
  %i.ds = lshr i16 %i.do, 1
  %i.dt = zext nneg i16 %i.ds to i32
  %i.du = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.dr, i32 noundef %i.dt) ; 3 uses
  %i.dv = add i16 %i.du, -163
  %spec.select.i.i.i = icmp ult i16 %i.dv, 53
  br i1 %spec.select.i.i.i, label %bb.v, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

bb.v:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i
  %i.dw = zext i16 %i.du to i64
  %i.dx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !151
  %i.ea = zext i16 %i.dz to i64
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract65, ptr %14, align 8, !tbaa !202
  store i32 %.fca.1.extract66, ptr %.sroa.526.0..sroa_idx27.i, align 8, !tbaa !152
  store ptr %.fca.0.extract2.i, ptr %15, align 8, !tbaa !202
  store i32 %.fca.1.extract3.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !152
  %i.ec = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %i.du, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #20
  br label %_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE.exit: ; preds = %bb.s, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i
  %.pn.i = phi { ptr, i32 } [ %i.ec, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.dj, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.fca.0.extract56 = extractvalue { ptr, i32 } %.pn.i, 0 ; 2 uses
  %.fca.1.extract57 = extractvalue { ptr, i32 } %.pn.i, 1 ; 2 uses
  %i.ed = load i32, ptr %i.cp, align 8, !tbaa !190 ; 2 uses
  %i.ee = load i32, ptr %i.cy, align 4, !tbaa !191
  %.not.i295 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i295, label %bb.x, label %bb.w, !prof !168

bb.w:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr %.fca.0.extract56, i32 %.fca.1.extract57)
end_hunk_1
begin_hunk_2_@_ZNK4llvm21HexagonTargetLowering17LowerHvxIntrinsicENS_7SDValueERNS_12SelectionDAGE:bb.a
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %6, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %7) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.bu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.thread

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !196
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !425
  %i.bz = zext i16 %i.by to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ca = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %i.cb, i64 12, i1 false), !tbaa.struct !203
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cc, ptr noundef nonnull align 8 dereferenceable(12) %i.cd, i64 12, i1 false), !tbaa.struct !203
  store ptr %12, ptr %11, align 8, !tbaa !194
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.ce, align 8, !tbaa !195
  %i.cf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 568, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %i.bw, i32 %i.bz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %11) #20
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.cf, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %.fca.0.extract15, ptr %5, align 8
  %.sroa.28.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %.sroa.28.0..sroa_idx.i84, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract15, ptr %i.cg, align 8
  %.sroa.24.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %.sroa.24.0..sroa_idx.i85, align 8
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %5, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %7) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ch, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %.thread

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !196
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !425
  %i.cm = zext i16 %i.cl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.cn = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %i.co, i64 12, i1 false), !tbaa.struct !203
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, ptr noundef nonnull align 8 dereferenceable(12) %i.cq, i64 12, i1 false), !tbaa.struct !203
  store ptr %14, ptr %13, align 8, !tbaa !194
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.cr, align 8, !tbaa !195
  %i.cs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 570, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %i.cj, i32 %i.cm, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %13) #20
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.cs, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %.fca.0.extract1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %.sroa.28.0..sroa_idx.i88, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.fca.0.extract1, ptr %i.ct, align 8
  %.sroa.24.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %.sroa.24.0..sroa_idx.i89, align 8
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %4, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %7) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %_ZNK4llvm21HexagonTargetLowering11isHvxBoolTyENS_3MVTE.exit, %_ZNK4llvm21HexagonTargetLowering11isHvxBoolTyENS_3MVTE.exit79, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit, %bb.e, %bb.f, %bb.i, %bb.h, %bb.g
  %.sroa.067.1 = phi ptr [ %.fca.0.extract39, %bb.f ], [ %.fca.0.extract, %bb.i ], [ %.fca.0.extract25, %bb.g ], [ %.fca.0.extract11, %bb.h ], [ %.sroa.067.0.copyload, %bb.e ], [ %1, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit ], [ %1, %_ZNK4llvm21HexagonTargetLowering11isHvxBoolTyENS_3MVTE.exit79 ], [ %1, %_ZNK4llvm21HexagonTargetLowering11isHvxBoolTyENS_3MVTE.exit ], [ %1, %bb.b ], [ %1, %bb.c ]
  %.sroa.7.1 = phi i32 [ %.fca.1.extract40, %bb.f ], [ %.fca.1.extract, %bb.i ], [ %.fca.1.extract26, %bb.g ], [ %.fca.1.extract12, %bb.h ], [ %.sroa.7.0.copyload, %bb.e ], [ %2, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit ], [ %2, %_ZNK4llvm21HexagonTargetLowering11isHvxBoolTyENS_3MVTE.exit79 ], [ %2, %_ZNK4llvm21HexagonTargetLowering11isHvxBoolTyENS_3MVTE.exit ], [ %2, %bb.b ], [ %2, %bb.c ]
  %i.cv = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.t
  br i1 %i.cw, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  call void @free(ptr noundef %i.cv) #20
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.067.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering16LowerHvxMaskedOpENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %8 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %9 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %10 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %11 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %12 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %13 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %14 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 22 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %21 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 12 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %25 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 13 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %26 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %27 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !316
  store i64 %i.e, ptr %15, align 8, !tbaa !316
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !317
  store i32 %i.h, ptr %i.f, align 8, !tbaa !319
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57, !nonnull !21, !align !58 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.l = load i32, ptr %i.k, align 8, !tbaa !143
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %i.o = load i8, ptr %i.n, align 8, !range !20
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.m, i1 %i.p, i1 false        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !389
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %i.v = icmp eq i32 %i.u, 384
  %i.w = select i1 %i.v, i64 3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !201  ; 4 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %.sroa.0148.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !202 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !152 ; 4 uses
  switch i32 %i.u, label %bb.c [
    i32 317, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 357, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 491, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 385, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 493, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 492, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 386, label %bb.b
    i32 387, label %bb.b
    i32 524, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit

_ZNK4llvm9MemSDNode10getBasePtrEv.exit:           ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.sink.i = phi i64 [ 40, %bb.c ], [ 120, %bb.b ], [ 80, %bb.a ], [ 80, %bb.a ], [ 80, %bb.a ], [ 80, %bb.a ], [ 80, %bb.a ], [ 80, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink.i ; 2 uses
  %.sroa.0131.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !202 ; 9 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ab = load <2 x i32>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !152 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = select i1 %i.q, i64 64, i64 128         ; 3 uses
  %i.ag = shl nuw nsw i64 %i.af, 31
  %i.ah = or disjoint i64 %i.ag, 1152921504606846976
  %i.ai = tail call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef %i.ae, i64 noundef 0, i64 %i.ah) #20 ; 4 uses
  %i.aj = load i32, ptr %i.t, align 8, !tbaa !189
  %i.ak = icmp eq i32 %i.aj, 384
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !196
  %i.an = zext i32 %2 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ao, align 8, !tbaa !149 ; 2 uses
  store ptr %.sroa.0131.0.copyload, ptr %17, align 8, !tbaa !202
  %.sroa.10.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x i32> %i.ab, ptr %.sroa.10.0..sroa_idx136, align 8
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %15, ptr %.sroa.0148.0.copyload, i32 %.sroa.7.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef %i.ai) #20 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !201 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  %.sroa.0106.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !202 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0106.0.copyload, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !189 ; 2 uses
  %28 = icmp slt i32 %i.at, 0
  %.0.v.i = select i1 %28, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.at, %.0.v.i
  br i1 %.0.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.fca.1.extract115 = extractvalue { ptr, i32 } %i.ap, 1
  %.fca.0.extract114 = extractvalue { ptr, i32 } %i.ap, 0 ; 2 uses
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  store ptr %.fca.0.extract114, ptr %18, align 8, !tbaa !202
  %.sroa.6314.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract115, ptr %.sroa.6314.0..sroa_idx315, align 8, !tbaa !152
  store ptr %.sroa.0106.0.copyload, ptr %19, align 8, !tbaa !202
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.au = load <2 x i32>, ptr %.sroa.5108.0..sroa_idx, align 8
  store <2 x i32> %i.au, ptr %.sroa.5108.0..sroa_idx109, align 8
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 220, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #20 ; 2 uses
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.av, 0
  %.fca.1.extract96 = extractvalue { ptr, i32 } %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store ptr %.fca.0.extract95, ptr %20, align 8, !tbaa !202
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract96, ptr %.sroa.4101.0..sroa_idx, align 8, !tbaa !152
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.fca.0.extract114, ptr %i.aw, align 8
  %.sroa.292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 1, ptr %.sroa.292.0..sroa_idx, align 8
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %20, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.h

bb.f:                                             ; preds = %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !201 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.077.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !202 ; 4 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.579.0.copyload = load i32, ptr %.sroa.579.0..sroa_idx, align 8, !tbaa !152 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !196
  %i.bc = zext i32 %.sroa.10.0.copyload to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %.sroa.0.0.copyload.i.i.i206 = load i16, ptr %i.bd, align 8, !tbaa !149
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i206, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.be, 0 ; 2 uses
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.be, 1 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bg) #20
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = add nsw i64 %i.af, -1
  %i.bl = and i64 %i.bj, %i.bk
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %_ZN4llvm3MVT11getVectorVTES0_j.exit214

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.0131.0.copyload, ptr %i.bn, align 8, !tbaa !202
  %.sroa.10.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx138, align 8, !tbaa !152
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %.fca.0.extract63, ptr %i.bo, align 8, !tbaa !202
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i32 %.fca.1.extract64, ptr %.sroa.573.0..sroa_idx, align 8, !tbaa !152
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %.sroa.077.0.copyload, ptr %i.bp, align 8, !tbaa !202
  %.sroa.579.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %21, i64 56
  store i32 %.sroa.579.0.copyload, ptr %.sroa.579.0..sroa_idx80, align 8, !tbaa !152
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr %.sroa.0148.0.copyload, ptr %i.bq, align 8, !tbaa !202
  %.sroa.7.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %21, i64 72
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx152, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %21, ptr %14, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !395
  %i.br = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2789, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %14) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !691
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.br, ptr nonnull %i.a, i64 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bs = insertvalue { ptr, i32 } poison, ptr %i.br, 0
  %i.bt = insertvalue { ptr, i32 } %i.bs, i32 0, 1
  br label %bb.h

_ZN4llvm3MVT11getVectorVTES0_j.exit214:           ; preds = %bb.f
  %.sroa.0.0.i327 = select i1 %i.q, i16 50, i16 51
  %.sroa.0.0.i213 = select i1 %i.q, i16 29, i16 30 ; 2 uses
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 583, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.i327, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #20 ; 2 uses
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.bu, 0 ; 3 uses
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.bu, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract45, i64 48 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !196, !noalias !692
  %i.bx = zext i32 %.fca.1.extract46 to i64       ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.by, align 8, !tbaa !149, !noalias !692
  %i.bz = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(920) %3) #20, !noalias !692 ; 2 uses
  %.fca.0.extract16.i = extractvalue { ptr, i32 } %i.bz, 0 ; 2 uses
  %.fca.1.extract17.i = extractvalue { ptr, i32 } %i.bz, 1 ; 2 uses
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !196, !noalias !692
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.bx
  %.sroa.0.0.copyload.i.i.i42.i = load i16, ptr %i.cb, align 8, !tbaa !149, !noalias !692
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !692
  store ptr %.fca.0.extract45, ptr %12, align 8, !tbaa !202, !noalias !692
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract46, ptr %.sroa.635.0..sroa_idx.i, align 8, !tbaa !152, !noalias !692
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.fca.0.extract16.i, ptr %i.cc, align 8, !tbaa !202, !noalias !692
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.fca.1.extract17.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !152, !noalias !692
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %.sroa.0131.0.copyload, ptr %i.cd, align 8, !tbaa !202, !noalias !692
  %.sroa.330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 %.sroa.10.0.copyload, ptr %.sroa.330.0..sroa_idx.i, align 8, !tbaa !152, !noalias !692
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !692
  store ptr %12, ptr %11, align 8, !tbaa !396, !noalias !692
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !395, !noalias !692
  %i.ce = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3060, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i42.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %11) #20, !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !692
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !196, !noalias !692
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.bx
  %.sroa.0.0.copyload.i.i.i43.i = load i16, ptr %i.cg, align 8, !tbaa !149, !noalias !692
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !692
  store ptr %.fca.0.extract16.i, ptr %13, align 8, !tbaa !202, !noalias !692
  %.sroa.5.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract17.i, ptr %.sroa.5.0..sroa_idx26.i, align 8, !tbaa !152, !noalias !692
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.fca.0.extract45, ptr %i.ch, align 8, !tbaa !202, !noalias !692
  %.sroa.635.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.fca.1.extract46, ptr %.sroa.635.0..sroa_idx36.i, align 8, !tbaa !152, !noalias !692
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %.sroa.0131.0.copyload, ptr %i.ci, align 8, !tbaa !202, !noalias !692
  %.sroa.330.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %.sroa.10.0.copyload, ptr %.sroa.330.0..sroa_idx31.i, align 8, !tbaa !152, !noalias !692
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !692
  store ptr %13, ptr %10, align 8, !tbaa !396, !noalias !692
  %.sroa.2.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i44.i, align 8, !tbaa !395, !noalias !692
  %i.cj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3060, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i43.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %10) #20, !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !692
  store ptr %i.ce, ptr %22, align 8, !tbaa !202
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 0, ptr %.sroa.4276.0..sroa_idx, align 8, !tbaa !152
  %i.ck = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 582, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.i213, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #20 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.ck, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.ck, 1
  store ptr %i.cj, ptr %23, align 8, !tbaa !202
  %.sroa.7279.16..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 0, ptr %.sroa.7279.16..sroa_idx, align 8, !tbaa !152
  %i.cl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 582, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.i213, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #20 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.cl, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.cl, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 48 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !196, !noalias !693
  %i.co = zext i32 %.sroa.579.0.copyload to i64   ; 3 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co
  %.sroa.0.0.copyload.i.i.i.i215 = load i16, ptr %i.cp, align 8, !tbaa !149, !noalias !693
  %i.cq = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i.i215, ptr noundef nonnull align 8 dereferenceable(920) %3) #20, !noalias !693 ; 2 uses
  %.fca.0.extract16.i216 = extractvalue { ptr, i32 } %i.cq, 0 ; 2 uses
  %.fca.1.extract17.i217 = extractvalue { ptr, i32 } %i.cq, 1 ; 2 uses
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !196, !noalias !693
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.co
  %.sroa.0.0.copyload.i.i.i42.i218 = load i16, ptr %i.cs, align 8, !tbaa !149, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !693
  store ptr %.sroa.077.0.copyload, ptr %8, align 8, !tbaa !202, !noalias !693
  %.sroa.635.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.579.0.copyload, ptr %.sroa.635.0..sroa_idx.i219, align 8, !tbaa !152, !noalias !693
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.fca.0.extract16.i216, ptr %i.ct, align 8, !tbaa !202, !noalias !693
  %.sroa.5.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.fca.1.extract17.i217, ptr %.sroa.5.0..sroa_idx.i220, align 8, !tbaa !152, !noalias !693
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %.sroa.0131.0.copyload, ptr %i.cu, align 8, !tbaa !202, !noalias !693
  %.sroa.330.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %.sroa.10.0.copyload, ptr %.sroa.330.0..sroa_idx.i221, align 8, !tbaa !152, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !693
  store ptr %8, ptr %7, align 8, !tbaa !396, !noalias !693
  %.sroa.2.0..sroa_idx.i.i222 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i222, align 8, !tbaa !395, !noalias !693
  %i.cv = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3060, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i42.i218, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %7) #20, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !693
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !196, !noalias !693
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.co
  %.sroa.0.0.copyload.i.i.i43.i223 = load i16, ptr %i.cx, align 8, !tbaa !149, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !693
  store ptr %.fca.0.extract16.i216, ptr %9, align 8, !tbaa !202, !noalias !693
  %.sroa.5.0..sroa_idx26.i224 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract17.i217, ptr %.sroa.5.0..sroa_idx26.i224, align 8, !tbaa !152, !noalias !693
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.077.0.copyload, ptr %i.cy, align 8, !tbaa !202, !noalias !693
  %.sroa.635.0..sroa_idx36.i225 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.579.0.copyload, ptr %.sroa.635.0..sroa_idx36.i225, align 8, !tbaa !152, !noalias !693
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.sroa.0131.0.copyload, ptr %i.cz, align 8, !tbaa !202, !noalias !693
  %.sroa.330.0..sroa_idx31.i226 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %.sroa.10.0.copyload, ptr %.sroa.330.0..sroa_idx31.i226, align 8, !tbaa !152, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !693
  store ptr %9, ptr %6, align 8, !tbaa !396, !noalias !693
  %.sroa.2.0..sroa_idx.i44.i227 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i44.i227, align 8, !tbaa !395, !noalias !693
  %i.da = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3060, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i43.i223, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %6) #20, !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !693
  %i.db = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.db, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.db, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store ptr %.fca.0.extract34, ptr %24, align 8, !tbaa !202
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.4271.0..sroa_idx, align 8, !tbaa !152
  %i.dc = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %.sroa.0131.0.copyload, ptr %i.dc, align 8, !tbaa !202
  %.sroa.10.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx140, align 8, !tbaa !152
  %i.dd = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %.fca.0.extract63, ptr %i.dd, align 8, !tbaa !202
  %.sroa.573.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i32 %.fca.1.extract64, ptr %.sroa.573.0..sroa_idx74, align 8, !tbaa !152
  %i.de = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.cv, ptr %i.de, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %24, i64 56
  store i32 0, ptr %.sroa.4.0..sroa_idx257, align 8, !tbaa !152
  %i.df = getelementptr inbounds nuw i8, ptr %24, i64 64
  store ptr %.sroa.0148.0.copyload, ptr %i.df, align 8, !tbaa !202
  %.sroa.7.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %24, i64 72
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx154, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %24, ptr %5, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i231, align 8, !tbaa !395
  %i.dg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2789, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %5) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  store ptr %.fca.0.extract29, ptr %25, align 8, !tbaa !202
  %.sroa.8274.16..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract30, ptr %.sroa.8274.16..sroa_idx, align 8, !tbaa !152
  %i.dh = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %.sroa.0131.0.copyload, ptr %i.dh, align 8, !tbaa !202
  %.sroa.10.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx142, align 8, !tbaa !152
  %i.di = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %.fca.0.extract19, ptr %i.di, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i32 %.fca.1.extract20, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.dj = getelementptr inbounds nuw i8, ptr %25, i64 48
  store ptr %i.da, ptr %i.dj, align 8, !tbaa !202
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 56
  store i32 0, ptr %.sroa.7.16..sroa_idx, align 8, !tbaa !152
  %i.dk = getelementptr inbounds nuw i8, ptr %25, i64 64
  store ptr %.sroa.0148.0.copyload, ptr %i.dk, align 8, !tbaa !202
  %.sroa.7.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %25, i64 72
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx156, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %25, ptr %4, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %.sroa.2.0..sroa_idx.i235, align 8, !tbaa !395
  %i.dl = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2789, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %4) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !691
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.dg, ptr nonnull %i.b, i64 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !691
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.dl, ptr nonnull %i.c, i64 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  store ptr %i.dg, ptr %27, align 8, !tbaa !202
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 0, ptr %.sroa.5253.0..sroa_idx, align 8, !tbaa !152
  %i.dm = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !202
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !152
  store ptr %27, ptr %26, align 8, !tbaa !194
  %i.dn = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 2, ptr %i.dn, align 8, !tbaa !195
  %i.do = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.g, %_ZN4llvm3MVT11getVectorVTES0_j.exit214
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.do, %_ZN4llvm3MVT11getVectorVTES0_j.exit214 ], [ %i.bt, %bb.g ], [ %i.ax, %bb.e ], [ %i.ap, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering16LowerHvxFpExtendENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %11 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %12 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %16 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %17 = alloca %"class.llvm::ArrayRef.51", align 8 ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 16 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %20 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %21 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %22 = alloca %"struct.std::pair.105", align 8   ; 7 uses
  %23 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %25 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %26 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %27 = alloca %"struct.std::pair.105", align 8   ; 7 uses
  %28 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 4 uses
  %29 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 4 uses
  %30 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !196
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.e, align 8, !tbaa !149 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 3 uses
  %.sroa.0100.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !202
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2101.0.copyload = load i32, ptr %.sroa.2101.0..sroa_idx, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.copyload, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.j = zext i32 %.sroa.2101.0.copyload to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  %.sroa.0.0.copyload.i.i.i128 = load i16, ptr %i.k, align 8, !tbaa !149 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !316
  store i64 %i.m, ptr %18, align 8, !tbaa !316
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !317
  store i32 %i.p, ptr %i.n, align 8, !tbaa !319
  %i.q = icmp eq i16 %.sroa.0.0.copyload.i.i.i128, 127
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.r = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.r, 53
  br i1 %spec.select.i.i.i, label %bb.c, label %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit: ; preds = %bb.b
  %i.s = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !151
  %i.w = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.s
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !149
  %i.z = lshr i16 %i.v, 1
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.y, i32 noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !201 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i64 12, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr %20, ptr %17, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !395
  %i.ae = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3342, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %i.ab, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %19, i64 12, i1 false), !tbaa.struct !203
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !202
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 0, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %21, ptr %16, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i129, align 8, !tbaa !395
  %i.ag = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3276, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %16) #20 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.ag, ptr %13, align 8, !noalias !698
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.ah, align 8, !noalias !698
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !196, !noalias !698
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.aj, align 8, !tbaa !149, !noalias !698 ; 2 uses
  %i.ak = add i16 %.sroa.0.0.copyload.i.i.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.ak, 53
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i

bb.d:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #21, !noalias !698
  unreachable

_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i: ; preds = %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit
  %i.al = zext i16 %.sroa.0.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !151, !noalias !698
  %i.ap = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !149, !noalias !698
  %i.as = lshr i16 %i.ao, 1
  %i.at = zext nneg i16 %i.as to i32
  %i.au = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.ar, i32 noundef %i.at), !noalias !698 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !189, !noalias !698
  %i.ax = icmp eq i32 %i.aw, 558
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !201, !noalias !698 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !203
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !203
  br label %_ZNK4llvm21HexagonTargetLowering7opSplitENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

bb.f:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !698
  store i16 %i.au, ptr %14, align 8, !tbaa !149, !noalias !698
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !206, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !698
  store i16 %i.au, ptr %15, align 8, !tbaa !149, !noalias !698
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !206, !noalias !698
  call void @_ZN4llvm12SelectionDAG11SplitVectorERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.105") align 8 %22, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !698
  br label %_ZNK4llvm21HexagonTargetLowering7opSplitENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering7opSplitENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %i.be, i64 12, i1 false), !tbaa.struct !203
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 8 dereferenceable(12) %22, i64 12, i1 false), !tbaa.struct !203
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef -4, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract53, ptr %i.bg, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i32 %.fca.1.extract54, ptr %.sroa.256.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %23, ptr %12, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i132, align 8, !tbaa !395
  %i.bi = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3274, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %11, float noundef 1.000000e+00) #20
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr nofree noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #20
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %11) #20
end_hunk_2
begin_hunk_3_@_ZNK4llvm21HexagonTargetLowering30splitExtendingPartialReduceMLAEPNS_6SDNodeERNS_12SelectionDAGE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering20PerformHvxDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 11 uses
  %4 = alloca %"class.llvm::SmallVector.52", align 8 ; 13 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %8 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %9 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %10 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !316
  store i64 %i.b, ptr %3, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !317
  store i32 %i.e, ptr %i.c, align 8, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !435, !nonnull !21, !align !58 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !189  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !201  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i16, ptr %i.l, align 8, !tbaa !405  ; 4 uses
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !190
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.q, align 4, !tbaa !191
  %.idx.i = mul nuw nsw i64 %i.n, 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %i.s = icmp ugt i16 %i.m, 4
  br i1 %i.s, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.o, i64 noundef %i.n, i64 noundef 16) #20
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !190
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !24
  br label %.lr.ph.i.i.i.i.preheader.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not9.i.i.i.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i
  %i.t = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i ], [ %i.o, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %.pre-phi.i4.i = phi i64 [ %.pre9.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.pre-phi.i4.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !203
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre8.i.i = load i32, ptr %i.p, align 8, !tbaa !190
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i
  %i.x = phi i32 [ %.pre8.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.y = zext i16 %i.m to i32
  %i.z = add i32 %i.x, %i.y
  store i32 %i.z, ptr %i.p, align 8, !tbaa !190
  switch i32 %i.i, label %bb.e [
    i32 230, label %bb.b
    i32 165, label %bb.c
  ]

bb.b:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit
  %i.aa = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering26combineTruncateBeforeLegalENS_7SDValueERNS_14TargetLowering15DAGCombinerInfoE(ptr nonnull align 8 poison, ptr nonnull %1, i32 0, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract70 = extractvalue { ptr, i32 } %i.aa, 1
  br label %.critedge

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ac, align 8, !tbaa !149
  %i.ad = zext i16 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ae = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !149
  %.not.i = icmp eq i16 %i.ag, 2
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !435, !nonnull !21, !align !58
  %i.ai = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering23combineConcatOfShufflesENS_7SDValueERNS_12SelectionDAGE(ptr nonnull readnone align 8 poison, ptr nonnull readonly %1, i32 poison, ptr noundef nonnull align 8 dereferenceable(920) %i.ah) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ai, 1
  br label %.critedge

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !799
  %i.al = icmp slt i32 %i.ak, 2
  br i1 %i.al, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.i, label %.critedge [
    i32 582, label %bb.g
    i32 583, label %bb.k
    i32 576, label %bb.n
    i32 579, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %4, align 8, !tbaa !24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !199 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !189
  %i.aq = icmp eq i32 %i.ap, 175
  br i1 %i.aq, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !201
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !199 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !189
  switch i32 %i.av, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.h, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !392
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp slt i8 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bc, align 8, !tbaa !149 ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 559, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #20 ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.bd, 1
  br label %.critedge

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 560, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #20 ; 2 uses
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.be, 0
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.be, 1
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %4, align 8, !tbaa !24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !199
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !189
  switch i32 %i.bi, label %.critedge [
    i32 560, label %bb.l
    i32 559, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i.i108 = load i16, ptr %i.bk, align 8, !tbaa !149
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract37, ptr %5, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract38, ptr %.sroa.240.0..sroa_idx, align 8
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i108, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #20 ; 2 uses
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.bm, 1
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i.i109 = load i16, ptr %i.bo, align 8, !tbaa !149
  %i.bp = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i109, ptr noundef nonnull align 8 dereferenceable(920) %i.g) #20 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.bp, 1
  br label %.critedge

bb.n:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %4, align 8, !tbaa !24    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.022.0.copyload = load ptr, ptr %i.br, align 8, !tbaa !202
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !189 ; 2 uses
  %11 = icmp slt i32 %i.bt, 0
  %.0.v.i = select i1 %11, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.bt, %.0.v.i
  br i1 %.0.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %.sroa.0129.0.copyload = load ptr, ptr %i.bq, align 8, !tbaa !202
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !152
  br label %.critedge

bb.p:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %4, align 8, !tbaa !24    ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !199 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !189
  %i.by = icmp eq i32 %i.bx, 579
  br i1 %i.by, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !201 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !203
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.017.0.copyload = load ptr, ptr %i.cb, align 8, !tbaa !202 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.519.0.copyload = load i32, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !152 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !196
  %i.cf = zext i32 %.sroa.519.0.copyload to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cf
  %.sroa.0.0.copyload.i.i.i110 = load i16, ptr %i.cg, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %.sroa.017.0.copyload, ptr %8, align 8, !tbaa !202
  %.sroa.519.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.519.0.copyload, ptr %.sroa.519.0..sroa_idx20, align 8, !tbaa !152
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 8 dereferenceable(12) %i.cc, i64 12, i1 false)
  store ptr %8, ptr %7, align 8, !tbaa !194
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.ci, align 8, !tbaa !195
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i110, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %7) #20 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.cj, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.cj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i.i111 = load i16, ptr %i.cl, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !203
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.fca.0.extract6, ptr %i.cm, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract7, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  store ptr %10, ptr %9, align 8, !tbaa !194
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.cn, align 8, !tbaa !195
  %i.co = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 579, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i.i111, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %9) #20 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.co, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.co, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.k, %bb.h, %bb.f, %bb.g, %bb.n, %bb.p, %bb.j, %bb.i, %bb.e, %bb.q, %bb.o, %bb.m, %bb.l, %bb.b
  %.sroa.13.1 = phi i32 [ 0, %bb.h ], [ %.fca.1.extract46, %bb.j ], [ 0, %bb.e ], [ %.fca.1.extract34, %bb.l ], [ %.fca.1.extract26, %bb.m ], [ %.sroa.13.0.copyload, %bb.o ], [ %.fca.1.extract, %bb.q ], [ %.fca.1.extract70, %bb.b ], [ %.fca.1.extract54, %bb.i ], [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.g ], [ %.fca.1.extract.i, %bb.d ], [ 0, %bb.c ]
  %.sroa.0129.1 = phi ptr [ null, %bb.h ], [ %.fca.0.extract45, %bb.j ], [ null, %bb.e ], [ %.fca.0.extract33, %bb.l ], [ %.fca.0.extract25, %bb.m ], [ %.sroa.0129.0.copyload, %bb.o ], [ %.fca.0.extract, %bb.q ], [ %.fca.0.extract69, %bb.b ], [ %.fca.0.extract53, %bb.i ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.n ], [ null, %bb.k ], [ null, %bb.g ], [ %.fca.0.extract.i, %bb.d ], [ null, %bb.c ]
  %i.cp = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.o
  br i1 %i.cq, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.cp) #20
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0129.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.13.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 31 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load i32, ptr %i.c, align 8, !tbaa !143
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !425
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = lshr i64 %i.j, 2                         ; 2 uses
  %.not73 = icmp eq i64 %i.m, 0
  br i1 %.not73, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i"
  %.070.i.i.i.i.i.i = phi i64 [ %i.z, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i" ], [ %i.m, %bb.b ] ; 2 uses
  %.02969.i.i.i.i.i.i = phi ptr [ %i.y, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i" ], [ %i.g, %bb.b ] ; 9 uses
  %.029.val45.i.i.i.i.i.i = load i16, ptr %.02969.i.i.i.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.029.val45.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.n, i16 %.029.val45.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.o, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 16
  %.val42.i.i.i.i.i.i = load i16, ptr %i.p, align 8, !tbaa !149 ; 2 uses
  %.not.i.i47.i.i.i.i.i.i = icmp eq i16 %.val42.i.i.i.i.i.i, 0
  br i1 %.not.i.i47.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.thread.i.i.i.i.i.i"
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.q, i16 %.val42.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.r, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.thread.i.i.i.i.i.i"
  %i.s = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 32
  %.val39.i.i.i.i.i.i = load i16, ptr %i.s, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49.i.i.i.i.i.i = icmp eq i16 %.val39.i.i.i.i.i.i, 0
  br i1 %.not.i.i49.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.thread.i.i.i.i.i.i"
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.u = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.t, i16 %.val39.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.u, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit125", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.thread.i.i.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 48
  %.val36.i.i.i.i.i.i = load i16, ptr %i.v, align 8, !tbaa !149 ; 2 uses
  %.not.i.i51.i.i.i.i.i.i = icmp eq i16 %.val36.i.i.i.i.i.i, 0
  br i1 %.not.i.i51.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.thread.i.i.i.i.i.i"
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.w, i16 %.val36.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.x, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit127", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.thread.i.i.i.i.i.i"
  %i.y = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 64 ; 3 uses
  %i.z = add nsw i64 %.070.i.i.i.i.i.i, -1
  %i.aa = icmp sgt i64 %.070.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !800

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.thread.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.y to i64
  %.pre75.i.i.i.i.i.i = sub i64 %i.l, %.pre.i.i.i.i.i.i
  %i.ab = ashr exact i64 %.pre75.i.i.i.i.i.i, 4
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi76.i.i.i.i.i.i = phi i64 [ %i.ab, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.j, %bb.b ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 5 uses
  switch i64 %.pre-phi76.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.c
    i64 2, label %bb.d
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i16, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i53.i.i.i.i.i.i = icmp eq i16 %.029.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i53.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.i.i.i.i.i.i": ; preds = %bb.c
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.ad = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.ac, i16 %.029.val.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.ad, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.i.i.i.i.i.i", %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ae, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i16, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i55.i.i.i.i.i.i = icmp eq i16 %.1.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i55.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.i.i.i.i.i.i": ; preds = %bb.d
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.af, i16 %.1.val.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.ag, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.i.i.i.i.i.i", %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ah, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i16, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i57.i.i.i.i.i.i = icmp eq i16 %.2.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i57.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit58.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit58.i.i.i.i.i.i": ; preds = %bb.e
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.ai, i16 %.2.val.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.aj, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit48.i.i.i.i.i.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit125": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit50.i.i.i.i.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit127": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit52.i.i.i.i.i.i"
  %i.am = getelementptr inbounds nuw i8, ptr %.02969.i.i.i.i.i.i, i64 48
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.i.i.i.i.i.i", %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit125", %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit127", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit58.i.i.i.i.i.i"
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit56.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit54.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit58.i.i.i.i.i.i" ], [ %i.am, %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit127" ], [ %i.al, %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit125" ], [ %i.ak, %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02969.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit.i.i.i.i.i.i" ]
  %.not74 = icmp eq ptr %i.k, %.028.i.i.i.i.i.i
  br i1 %.not74, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %.critedge

"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_0EclIPKNS2_3EVTEEEbT_.exit58.i.i.i.i.i.i", %bb.e, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !201 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !405
  %i.ar = zext i16 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.ar ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = lshr i64 %i.ar, 2                       ; 2 uses
  %.not75 = icmp eq i64 %i.au, 0
  br i1 %.not75, label %._crit_edge.i.i.i.i.i.i27, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit55.thread.i.i.i.i.i.i"
  %.076.i.i.i.i.i.i = phi i64 [ %i.bx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit55.thread.i.i.i.i.i.i" ], [ %i.au, %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" ] ; 2 uses
  %.02975.i.i.i.i.i.i = phi ptr [ %i.bw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit55.thread.i.i.i.i.i.i" ], [ %i.ao, %"_ZN4llvm6any_ofINS_14iterator_rangeIPKNS_3EVTEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" ] ; 13 uses
  %.029.val45.i.i.i.i.i.i37 = load ptr, ptr %.02975.i.i.i.i.i.i, align 8, !tbaa !202
  %i.av = getelementptr i8, ptr %.02975.i.i.i.i.i.i, i64 8
  %.029.val46.i.i.i.i.i.i = load i32, ptr %i.av, align 8, !tbaa !152
  %i.aw = getelementptr i8, ptr %.029.val45.i.i.i.i.i.i37, i64 48
  %.029.val45.val.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !196
  %i.ax = zext i32 %.029.val46.i.i.i.i.i.i to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.029.val45.val.i.i.i.i.i.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ay, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i.i.i.i.i38 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i38, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i36
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.ba = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.az, i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr null, i1 noundef zeroext true) #20
  br i1 %i.ba, label %"_ZN4llvm6any_ofINS_8ArrayRefINS_5SDUseEEEZNKS_21HexagonTargetLowering14isHvxOperationEPNS_6SDNodeERNS_12SelectionDAGEE3$_1EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm21HexagonTargetLowering14isHvxOperationEPNS2_6SDNodeERNS2_12SelectionDAGEE3$_1EclIPKNS2_5SDUseEEEbT_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i36
  %i.bb = getelementptr inbounds nuw i8, ptr %.02975.i.i.i.i.i.i, i64 40
  %.val42.i.i.i.i.i.i39 = load ptr, ptr %i.bb, align 8, !tbaa !202
  %i.bc = getelementptr i8, ptr %.02975.i.i.i.i.i.i, i64 48
  %.val43.i.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !152
  %i.bd = getelementptr i8, ptr %.val42.i.i.i.i.i.i39, i64 48
end_hunk_3
