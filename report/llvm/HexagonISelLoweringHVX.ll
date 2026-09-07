Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering14getByteShuffleERKNS_5SDLocENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE:bb.a

bb.q:                                             ; preds = %bb.o
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %9, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bx
  store i32 %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.w, align 8, !tbaa !190
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.w, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit80

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit80: ; preds = %bb.p, %bb.q
  %i.cc = add nuw i32 %.066138, 1                 ; 2 uses
  %.not68 = icmp eq i32 %i.cc, %i.u
  br i1 %.not68, label %..loopexit_crit_edge, label %bb.o, !llvm.loop !633

..loopexit_crit_edge:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit80, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.0143, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph144.split.split

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %bb.b
  %.pn = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.bg, %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit ]
  ret { ptr, i32 } %.pn
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::ArrayRef.312") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.322", align 8 ; 19 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SmallVector.325", align 8 ; 10 uses
  %11 = alloca %"class.llvm::MutableArrayRef", align 8 ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %14 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %15 = alloca %"class.llvm::SmallVector.317", align 8 ; 12 uses
  %16 = alloca %"class.llvm::SmallVector.317", align 8 ; 12 uses
  %17 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::ArrayRef.312", align 8 ; 3 uses
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %20 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %21 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %22 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %23 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %24 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %25 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %26 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %27 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %28 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %29 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %30 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
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
  %i.bq = icmp slt i32 %i.bp, 0
  %.0.v.i = select i1 %i.bq, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.bp, %.0.v.i
  br i1 %.0.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %4, ptr null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bo

bb.o:                                             ; preds = %bb.m
  %i.bs = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0645.2.ph, i32 %.sroa.9.2.ph) #20
  br i1 %i.bs, label %bb.p, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) #20
  br label %bb.bo

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.o
  %spec.select899 = select i1 %i.u, i16 82, i16 84
  store ptr %.sroa.0645.2.ph, ptr %9, align 8, !tbaa !202
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.9.2.ph, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !152
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %spec.select899, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #20 ; 2 uses
  %.fca.0.extract321 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract322 = extractvalue { ptr, i32 } %i.bu, 1
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract321, i32 %.fca.1.extract322) #20
  br label %bb.bo

.critedge504:                                     ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bw = and i64 %2, 4294967295                  ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bx, ptr %10, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.by, align 8, !tbaa !190
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 128, ptr %i.bz, align 4, !tbaa !191
  %i.ca = icmp eq i64 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit, label %bb.q

bb.q:                                             ; preds = %.critedge504
  %i.cb = icmp samesign ugt i64 %i.bw, 128
  br i1 %i.cb, label %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i: ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1040) %10, ptr noundef nonnull %i.bx, i64 noundef %i.bw, i64 noundef 8) #20
  %.pre.i.i.i = load i32, ptr %i.by, align 8, !tbaa !190
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.bw, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !24 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, %bb.q
  %i.cc = phi ptr [ %i.bx, %bb.q ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.q ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %.pre-phi.i.i3.i
  %i.ce = sub nsw i64 %i.bw, %.pre-phi.i.i3.i
  %i.cf = shl nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false), !tbaa !640
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.cc, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ]
  store i32 %i.b, ptr %i.by, align 8, !tbaa !190
  %i.cg = and i64 %2, 4294967295
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit: ; preds = %.critedge504, %.sink.split.i.i.i
  %i.ch = phi i64 [ 0, %.critedge504 ], [ %i.cg, %.sink.split.i.i.i ]
  %i.ci = phi ptr [ %i.bx, %.critedge504 ], [ %.pre, %.sink.split.i.i.i ]
  store ptr %i.ci, ptr %11, align 8, !tbaa !643
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !644
  %i.ck = call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering23getBuildVectorConstIntsENS_8ArrayRefINS_7SDValueEEENS_3MVTERNS_12SelectionDAGENS_15MutableArrayRefIPNS_11ConstantIntEEE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i64 %2, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %11) #20
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit
  %i.cl = load ptr, ptr %10, align 8, !tbaa !24
  %i.cm = load i32, ptr %i.by, align 8, !tbaa !190
  %i.cn = zext i32 %i.cm to i64
  %i.co = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr %i.cl, i64 %i.cn) #20
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !389
  %i.cq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.cp) #20
  %i.cr = load ptr, ptr %0, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call i16 %i.ct(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.cq, i32 noundef 0) #20
  %.sroa.0629.0.insert.insert = select i1 %i.u, i16 262, i16 263 ; 2 uses
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG15getConstantPoolEPKNS_8ConstantENS_3EVTENS_10MaybeAlignEibj(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef %i.co, i16 %i.cu, ptr null, i16 %.sroa.0629.0.insert.insert, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #20 ; 2 uses
  %.fca.0.extract295 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract296 = extractvalue { ptr, i32 } %i.cv, 1
  %i.cw = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17LowerConstantPoolENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract295, i32 %.fca.1.extract296, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract291 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract292 = extractvalue { ptr, i32 } %i.cw, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 288
  store ptr %.fca.0.extract291, ptr %12, align 8, !tbaa !202
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract292, ptr %.sroa.4304.0..sroa_idx, align 8, !tbaa !152
  call void @_ZN4llvm18MachinePointerInfo15getConstantPoolERNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %13, ptr noundef nonnull align 8 dereferenceable(1065) %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nonnull %i.cx, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %13, i16 %.sroa.0629.0.insert.insert, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bm

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj128EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.cz, ptr %15, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i32 0, ptr %i.da, align 8, !tbaa !190
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  store i32 128, ptr %i.db, align 4, !tbaa !191
  %.idx.i = shl nuw nsw i64 %2, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not20.i = icmp ne i64 %2, 0
  call void @llvm.assume(i1 %.not20.i)
  br label %.lr.ph.i517

.lr.ph.i517:                                      ; preds = %bb.s, %bb.ad
  %.01723.i = phi ptr [ %i.ep, %bb.ad ], [ %1, %bb.s ] ; 2 uses
  %.sroa.07.022.i = phi ptr [ %.sroa.07.2.ph.i, %bb.ad ], [ null, %bb.s ] ; 4 uses
  %.sroa.79.021.i = phi i32 [ %.sroa.79.2.ph.i, %bb.ad ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %.01723.i, align 8, !tbaa !202 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !189 ; 3 uses
  %i.df = icmp slt i32 %i.de, 0
  %.0.v.i.i = select i1 %i.df, i32 -11, i32 53
  %.0.i.i = icmp eq i32 %i.de, %.0.v.i.i
  br i1 %.0.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.lr.ph.i517
  %i.dg = load i32, ptr %i.da, align 8, !tbaa !190 ; 2 uses
  %i.dh = load i32, ptr %i.db, align 4, !tbaa !191
  %.not.i.i = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i.i, label %bb.v, label %bb.u, !prof !168

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef -1)
  br label %bb.ad

end_hunk_0
begin_hunk_1_@_ZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE:bb.a

bb.an:                                            ; preds = %bb.al
  %i.gz = load ptr, ptr %16, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gn
  store i32 %.0478804, ptr %i.ha, align 1
  %i.hb = load i32, ptr %i.fe, align 8, !tbaa !190
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.fe, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522: ; preds = %bb.an, %bb.am, %bb.ak
  %i.hd = add nuw nsw i32 %.0478804, 1            ; 2 uses
  %.not497 = icmp eq i32 %i.hd, %i.ez
  br i1 %.not497, label %._crit_edge806, label %.lr.ph805, !llvm.loop !636

._crit_edge806:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit522, %.lr.ph805, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.he = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.extract246 = extractvalue { ptr, i32 } %i.he, 0
  %.fca.1.extract247 = extractvalue { ptr, i32 } %i.he, 1
  store ptr %.fca.0.extract246, ptr %18, align 8
  %.sroa.2249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract247, ptr %.sroa.2249.0..sroa_idx, align 8
  %i.hf = load ptr, ptr %16, align 8, !tbaa !24
  store ptr %i.hf, ptr %19, align 8, !tbaa !321
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hh = load i32, ptr %i.fe, align 8, !tbaa !190
  %i.hi = zext i32 %i.hh to i64
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !322
  %i.hj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.07.2.ph.i, i32 %.sroa.79.2.ph.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %19) #20 ; 2 uses
  %.fca.0.extract242 = extractvalue { ptr, i32 } %i.hj, 0 ; 2 uses
  %.fca.1.extract243 = extractvalue { ptr, i32 } %i.hj, 1 ; 2 uses
  br i1 %i.fa, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge806
  %i.hk = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract242, i32 %.fca.1.extract243, ptr noundef nonnull align 8 dereferenceable(920) %5) ; 2 uses
  %.fca.0.extract235 = extractvalue { ptr, i32 } %i.hk, 0
  %.fca.1.extract236 = extractvalue { ptr, i32 } %i.hk, 1
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge806, %bb.ao
  %.sroa.0473.0 = phi ptr [ %.fca.0.extract235, %bb.ao ], [ %.fca.0.extract242, %._crit_edge806 ]
  %.sroa.8474.0 = phi i32 [ %.fca.1.extract236, %bb.ao ], [ %.fca.1.extract243, %._crit_edge806 ]
  %i.hl = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.fj
  br i1 %i.hm, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef %i.hl) #20
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.hn = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.fd
  br i1 %i.ho, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.hn) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN4llvm9BitVectorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.bk

"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread": ; preds = %bb.y, %bb.w, %bb.x, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.hp = load ptr, ptr %8, align 8, !tbaa !24    ; 4 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.bb
  %i.hq = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) #20 ; 2 uses
  %.fca.0.extract207 = extractvalue { ptr, i32 } %i.hq, 0 ; 2 uses
  %.fca.1.extract208 = extractvalue { ptr, i32 } %i.hq, 1 ; 2 uses
  %i.hr = sext i32 %.1 to i64                     ; 4 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !152 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %_ZN4llvm3MVT11getVectorVTES0_j.exit527, label %bb.bc

bb.au:                                            ; preds = %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread", %bb.bb
  %indvars.iv = phi i64 [ 0, %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread" ], [ %indvars.iv.next, %bb.bb ] ; 8 uses
  %.0479783 = phi i32 [ 0, %"_ZZNK4llvm21HexagonTargetLowering17buildHvxVectorRegENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEENK3$_1clERS2_RNS_15SmallVectorImplIiEE.exit.thread" ], [ %.1, %bb.bb ] ; 3 uses
  %i.hv = trunc i64 %indvars.iv to i32
  %i.hw = sub i32 %i.bc, %i.hv                    ; 3 uses
  %i.hx = trunc i64 %indvars.iv to i32
  %.neg = add i32 %i.hx, 1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store i32 0, ptr %i.hy, align 4, !tbaa !152
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %indvars.iv ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !199 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !189
  %i.id = add i32 %i.ic, -53
  %spec.select.i.i523 = icmp ult i32 %i.id, 2
  br i1 %spec.select.i.i523, label %bb.bb, label %.preheader772

.preheader772:                                    ; preds = %bb.au
  %.not500779 = icmp eq i64 %indvars.iv, %i.bd
  br i1 %.not500779, label %.preheader772.._crit_edge_crit_edge, label %.lr.ph781

.preheader772.._crit_edge_crit_edge:              ; preds = %.preheader772
  %.pre823 = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

.lr.ph781:                                        ; preds = %.preheader772
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.if = load i32, ptr %i.ie, align 8            ; 3 uses
  %i.ig = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %xtraiter = and i32 %i.hw, 1
  %i.ih = icmp eq i32 %i.bc, %.neg
  br i1 %i.ih, label %.epil.preheader, label %.lr.ph781.new

.lr.ph781.new:                                    ; preds = %.lr.ph781
  %unroll_iter = and i32 %i.hw, -2
  br label %bb.aw

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ba
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph781
  %.epil.init = phi i32 [ 0, %.lr.ph781 ], [ %i.jr, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0481780.epil.init = phi i32 [ %i.ig, %.lr.ph781 ], [ %i.js, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod909 = trunc i32 %i.hw to i1
  call void @llvm.assume(i1 %lcmp.mod909)
  %i.ii = zext i32 %.0481780.epil.init to i64
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.ii ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !199
  %i.il = icmp eq ptr %i.ia, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.in = load i32, ptr %i.im, align 8
  %i.io = icmp eq i32 %i.if, %i.in
  %i.ip = select i1 %i.il, i1 %i.io, i1 false
  br i1 %i.ip, label %bb.av, label %._crit_edge

bb.av:                                            ; preds = %.epil.preheader
  %i.iq = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.iq, ptr %i.hy, align 4, !tbaa !152
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.av, %.epil.preheader, %.preheader772.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre823, %.preheader772.._crit_edge_crit_edge ], [ %i.ig, %.epil.preheader ], [ %i.ig, %bb.av ], [ %i.ig, %._crit_edge.loopexit.unr-lcssa ]
  %i.ir = phi i32 [ 0, %.preheader772.._crit_edge_crit_edge ], [ %i.jr, %._crit_edge.loopexit.unr-lcssa ], [ %.epil.init, %.epil.preheader ], [ %i.iq, %bb.av ]
  %i.is = sext i32 %.0479783 to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !152
  %i.iv = icmp sgt i32 %i.ir, %i.iu
  %spec.select = select i1 %i.iv, i32 %.pre-phi, i32 %.0479783
  br label %bb.bb

bb.aw:                                            ; preds = %bb.ba, %.lr.ph781.new
  %i.iw = phi i32 [ 0, %.lr.ph781.new ], [ %i.jr, %bb.ba ] ; 2 uses
  %.0481780 = phi i32 [ %i.ig, %.lr.ph781.new ], [ %i.js, %bb.ba ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph781.new ], [ %niter.next.1, %bb.ba ]
  %i.ix = zext i32 %.0481780 to i64
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.ix ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !199
  %i.ja = icmp eq ptr %i.ia, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = icmp eq i32 %i.if, %i.jc
  %i.je = select i1 %i.ja, i1 %i.jd, i1 false
  br i1 %i.je, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jf = add nsw i32 %i.iw, 1                    ; 2 uses
  store i32 %i.jf, ptr %i.hy, align 4, !tbaa !152
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.jg = phi i32 [ %i.iw, %bb.aw ], [ %i.jf, %bb.ax ] ; 2 uses
  %i.jh = add i32 %.0481780, 1
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.ji ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !199
  %i.jl = icmp eq ptr %i.ia, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jn = load i32, ptr %i.jm, align 8
  %i.jo = icmp eq i32 %i.if, %i.jn
  %i.jp = select i1 %i.jl, i1 %i.jo, i1 false
  br i1 %i.jp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jq = add nsw i32 %i.jg, 1                    ; 2 uses
  store i32 %i.jq, ptr %i.hy, align 4, !tbaa !152
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jr = phi i32 [ %i.jg, %bb.ay ], [ %i.jq, %bb.az ] ; 3 uses
  %i.js = add i32 %.0481780, 2                    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !637

bb.bb:                                            ; preds = %._crit_edge, %bb.au
  %.1 = phi i32 [ %.0479783, %bb.au ], [ %spec.select, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %i.bd
  br i1 %exitcond, label %bb.at, label %bb.au, !llvm.loop !638

_ZN4llvm3MVT11getVectorVTES0_j.exit527:           ; preds = %bb.at
  %spec.select900 = select i1 %i.u, i16 82, i16 84
  %i.jt = load ptr, ptr %8, align 8, !tbaa !24
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.hr
  %i.jv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %spec.select900, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ju) #20 ; 2 uses
  %.fca.0.extract198 = extractvalue { ptr, i32 } %i.jv, 0
  %.fca.1.extract199 = extractvalue { ptr, i32 } %i.jv, 1
  %i.jw = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract198, i32 %.fca.1.extract199) #20 ; 2 uses
  %.fca.0.extract187 = extractvalue { ptr, i32 } %i.jw, 0
  %.fca.1.extract188 = extractvalue { ptr, i32 } %i.jw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store ptr %.fca.0.extract207, ptr %21, align 8, !tbaa !202
  %.sroa.7213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract208, ptr %.sroa.7213.0..sroa_idx, align 8, !tbaa !152
  %i.jx = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.fca.0.extract187, ptr %i.jx, align 8, !tbaa !202
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 %.fca.1.extract188, ptr %.sroa.4196.0..sroa_idx, align 8, !tbaa !152
  %i.jy = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.jz = lshr exact i32 %spec.select.i, 1
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract177 = extractvalue { ptr, i32 } %i.kb, 0
  %.fca.1.extract178 = extractvalue { ptr, i32 } %i.kb, 1
  store ptr %.fca.0.extract177, ptr %i.jy, align 8
  %.sroa.2180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i32 %.fca.1.extract178, ptr %.sroa.2180.0..sroa_idx, align 8
  store ptr %21, ptr %20, align 8, !tbaa !194
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 3, ptr %i.kc, align 8, !tbaa !195
  %i.kd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 571, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %20) #20 ; 2 uses
  %.fca.0.extract173 = extractvalue { ptr, i32 } %i.kd, 0
  %.fca.1.extract174 = extractvalue { ptr, i32 } %i.kd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit527, %bb.at
  %.sroa.0212.0 = phi ptr [ %.fca.0.extract173, %_ZN4llvm3MVT11getVectorVTES0_j.exit527 ], [ %.fca.0.extract207, %bb.at ] ; 4 uses
  %.sroa.7213.0 = phi i32 [ %.fca.1.extract174, %_ZN4llvm3MVT11getVectorVTES0_j.exit527 ], [ %.fca.1.extract208, %bb.at ] ; 4 uses
  %i.ke = lshr i32 %i.bc, 1                       ; 2 uses
  %.not499784 = icmp eq i32 %i.ke, 0
  br i1 %.not499784, label %._crit_edge794, label %.lr.ph793

.lr.ph793:                                        ; preds = %bb.bc
  %i.kf = icmp slt i32 %i.ht, 2                   ; 2 uses
  %.sroa.6148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.7601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.kh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.8168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.6.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.8162.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ko = zext nneg i32 %i.ke to i64              ; 2 uses
  %.pre817 = load ptr, ptr %8, align 8, !tbaa !24
  br label %bb.bf

._crit_edge794.loopexit:                          ; preds = %bb.bj
  %i.kp = sext i32 %i.nr to i64
  br label %._crit_edge794

._crit_edge794:                                   ; preds = %._crit_edge794.loopexit, %bb.bc
  %.sroa.0137.0.lcssa = phi ptr [ %.sroa.0212.0, %bb.bc ], [ %.sroa.0137.1, %._crit_edge794.loopexit ]
  %.sroa.6.0.lcssa = phi i32 [ %.sroa.7213.0, %bb.bc ], [ %.sroa.6.1, %._crit_edge794.loopexit ]
  %.sroa.0145.0.lcssa = phi ptr [ %.sroa.0212.0, %bb.bc ], [ %.sroa.0145.1, %._crit_edge794.loopexit ]
  %.sroa.6148.0.lcssa = phi i32 [ %.sroa.7213.0, %bb.bc ], [ %.sroa.6148.1, %._crit_edge794.loopexit ]
  %.0484.lcssa = phi i64 [ 0, %bb.bc ], [ %i.kp, %._crit_edge794.loopexit ]
  %.0482.lcssa = phi i32 [ 0, %bb.bc ], [ %i.nq, %._crit_edge794.loopexit ]
  %i.kq = lshr exact i32 %spec.select.i, 1
  %i.kr = add i32 %.0482.lcssa, %i.kq
  %i.ks = zext i32 %i.kr to i64
  %i.kt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %i.ks, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.kt, 0
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.kt, 1
  %i.ku = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %.0484.lcssa, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract64 = extractvalue { ptr, i32 } %i.ku, 0
  %.fca.1.extract65 = extractvalue { ptr, i32 } %i.ku, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  store ptr %.sroa.0145.0.lcssa, ptr %31, align 8, !tbaa !202
  %.sroa.6148.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.sroa.6148.0.lcssa, ptr %.sroa.6148.0..sroa_idx151, align 8, !tbaa !152
  %i.kv = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %.fca.0.extract71, ptr %i.kv, align 8, !tbaa !202
  %.sroa.7601.0..sroa_idx602 = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i32 %.fca.1.extract72, ptr %.sroa.7601.0..sroa_idx602, align 8, !tbaa !152
  store ptr %31, ptr %30, align 8, !tbaa !194
  %i.kw = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 2, ptr %i.kw, align 8, !tbaa !195
  %i.kx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 579, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %30) #20 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.kx, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.kx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  store ptr %.sroa.0137.0.lcssa, ptr %33, align 8, !tbaa !202
  %.sroa.6.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.sroa.6.0.lcssa, ptr %.sroa.6.0..sroa_idx142, align 8, !tbaa !152
  %i.ky = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %.fca.0.extract64, ptr %i.ky, align 8, !tbaa !202
  %.sroa.7.0..sroa_idx597 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i32 %.fca.1.extract65, ptr %.sroa.7.0..sroa_idx597, align 8, !tbaa !152
  store ptr %33, ptr %32, align 8, !tbaa !194
  %i.kz = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 2, ptr %i.kz, align 8, !tbaa !195
  %i.la = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 579, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %32) #20 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.la, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.la, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.lb = add i16 %4, -19
  %spec.select.i.i.i531 = icmp ult i16 %i.lb, 197
  %or.cond719 = and i1 %spec.select.i.i.i531, %.not766
  br i1 %or.cond719, label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540, label %_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i

_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i:      ; preds = %._crit_edge794
  %i.lc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.lc, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ld = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ld, label %bb.bd, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.bd:                                            ; preds = %_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3MVT10isVectorOfES0_.exit.thread.i
  %i.le = getelementptr i8, ptr %i.lc, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.le, align 16
  %i.lf = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.lg = lshr i32 %i.lf, 5
  switch i32 %i.lg, label %_ZNK4llvm8TypeSizecvmEv.exit.i536 [
    i32 1, label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540
    i32 2, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread852
    i32 3, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread854
    i32 4, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread856
    i32 5, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread858
    i32 6, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread860
    i32 7, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread862
    i32 8, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread864
    i32 9, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread866
    i32 10, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread868
    i32 11, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread870
    i32 12, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread872
    i32 16, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread874
    i32 24, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread876
    i32 32, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread878
    i32 48, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread880
    i32 64, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread882
    i32 128, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread884
    i32 256, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread886
    i32 512, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread888
    i32 1024, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread890
    i32 2048, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread892
    i32 4096, label %_ZNK4llvm8TypeSizecvmEv.exit.i536.thread894
  ]

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread852:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread854:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread856:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread858:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread860:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread862:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread864:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread866:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread868:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread870:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread872:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread874:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540

_ZNK4llvm8TypeSizecvmEv.exit.i536.thread876:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  br label %_ZNK4llvm21HexagonTargetLowering8tyVectorENS_3MVTES1_.exit540
end_hunk_1
