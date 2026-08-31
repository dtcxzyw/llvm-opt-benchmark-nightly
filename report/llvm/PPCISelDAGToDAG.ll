Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelDAGToDAG?download=true
inline.NumInlined: 6481
inline.NumDeleted: 1616
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12_GLOBAL__N_115PPCDAGToDAGISelD0Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(980) initializes((960, 980)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i32 0, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159, !nonnull !19, !align !52 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !267
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(520296) %i.c) #32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr %i.h, ptr %i.i, align 8, !tbaa !268
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !267
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 518
  %i.l = load i8, ptr %i.k, align 2, !tbaa !269, !range !18, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !411
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !412
  %i.r = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.o, i64 noundef 8, i8 3, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !413
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4llvm16SelectionDAGISel20runOnMachineFunctionERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #32 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16SelectionDAGISel21emitFunctionEntryCodeEv(ptr noundef nonnull align 8 dereferenceable(952) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115PPCDAGToDAGISel17PreprocessISelDAGEv(ptr noundef nonnull align 8 dereferenceable(980) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %2 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %9 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %14 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %16 = alloca %class.anon.443, align 8           ; 8 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %19 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %21 = alloca %"class.llvm::SDLoc", align 8      ; 14 uses
  %i.a = alloca [8 x i8], align 8                 ; 12 uses
  %22 = alloca %"class.llvm::SmallVector.436", align 8 ; 11 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !432
  %.not66 = icmp eq ptr %i.d, %i.f
  br i1 %.not66, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.sroa.9261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.9275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.9275.0..sroa_idx276.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.9275.0..sroa_idx278.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel12foldBoolExtsERN4llvm7SDValueERPNS1_6SDNodeE.exit.thread.thread, %.lr.ph
  %.068.ph = phi i1 [ true, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel12foldBoolExtsERN4llvm7SDValueERPNS1_6SDNodeE.exit.thread.thread ], [ false, %.lr.ph ]
  %.sroa.026.067.ph = phi ptr [ %i.aa, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel12foldBoolExtsERN4llvm7SDValueERPNS1_6SDNodeE.exit.thread.thread ], [ %i.d, %.lr.ph ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel12foldBoolExtsERN4llvm7SDValueERPNS1_6SDNodeE.exit.thread
  %.sroa.026.067 = phi ptr [ %i.aa, %_ZN12_GLOBAL__N_115PPCDAGToDAGISel12foldBoolExtsERN4llvm7SDValueERPNS1_6SDNodeE.exit.thread ], [ %.sroa.026.067.ph, %.outer ]
  %i.aa = load ptr, ptr %.sroa.026.067, align 8, !tbaa !433 ; 14 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !434
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN12_GLOBAL__N_115PPCDAGToDAGISel12foldBoolExtsERN4llvm7SDValueERPNS1_6SDNodeE.exit.thread, label %bb.c, !llvm.loop !444

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !445
  %cond = icmp eq i32 %i.ag, 194
  %.pre75 = load ptr, ptr %i.h, align 8, !tbaa !267 ; 3 uses
  br i1 %cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !446
  store i64 %i.ai, ptr %21, align 8, !tbaa !446
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !447
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !448
  %i.al = getelementptr inbounds nuw i8, ptr %.pre75, i64 476
  %i.am = load i8, ptr %i.al, align 4, !tbaa !450, !range !18, !noundef !19
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.e, label %.thread40

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !451 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ap, align 8, !tbaa !452 ; 11 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !454
  %i.aq = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.ar = add i16 %.sroa.0.0.copyload.i.i, -9
  %i.as = icmp ult i16 %i.ar, -2
  %or.cond331.i = select i1 %i.as, i1 true, i1 %i.aq
  br i1 %or.cond331.i, label %.thread40, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  store ptr %i.i, ptr %22, align 8, !tbaa !21
  store i32 8, ptr %i.k, align 4, !tbaa !95
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !456
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !458
  br label %bb.f

thread-pre-split.loopexit.i:                      ; preds = %bb.bn
  %.pr.pre.i = load i32, ptr %i.j, align 8, !tbaa !54
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.f, %thread-pre-split.loopexit.i
  %.pr.i = phi i32 [ %i.cb, %bb.f ], [ %.pr.pre.i, %thread-pre-split.loopexit.i ] ; 2 uses
  %.sroa.9261.1.lcssa.i = phi i32 [ %.sroa.9261.0395.i, %bb.f ], [ %.sroa.9261.2.ph.i, %thread-pre-split.loopexit.i ] ; 3 uses
  %.sroa.0259.1.lcssa.i = phi ptr [ %.sroa.0259.0396.i, %bb.f ], [ %.sroa.0259.2.ph.i, %thread-pre-split.loopexit.i ] ; 3 uses
  %.sroa.11.1.lcssa.i = phi i32 [ %.sroa.11.0397.i, %bb.f ], [ %.sroa.11.2.ph.i, %thread-pre-split.loopexit.i ] ; 4 uses
  %.sroa.0253.1.lcssa.i = phi ptr [ %.sroa.0253.0398.i, %bb.f ], [ %.sroa.0253.2.ph.i, %thread-pre-split.loopexit.i ] ; 4 uses
  %.1150.lcssa.i = phi i64 [ %.0149399.i, %bb.f ], [ %.3152.ph.i, %thread-pre-split.loopexit.i ] ; 4 uses
  %.1148.lcssa.i = phi i64 [ %.0147400.i, %bb.f ], [ %.3.ph.i, %thread-pre-split.loopexit.i ] ; 4 uses
  %.not.i174.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i174.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %thread-pre-split.i
  %i.at = load i8, ptr %i.a, align 8, !tbaa !459, !range !18, !noundef !19 ; 3 uses
  %spec.select161.1.i = zext nneg i8 %i.at to i32
  %i.au = shl nuw nsw i8 %i.at, 1
  %i.av = zext nneg i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !459, !range !18, !noundef !19 ; 2 uses
  %i.ay = trunc nuw i8 %i.ax to i1
  %spec.select.2414.i = or disjoint i8 %i.au, %i.ax
  %spec.select161.2.i = select i1 %i.ay, i32 2, i32 %spec.select161.1.i ; 2 uses
  %i.az = zext nneg i32 %spec.select161.2.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !459, !range !18, !noundef !19 ; 2 uses
  %i.bc = trunc nuw i8 %i.bb to i1
  %narrow.i.a = add nuw nsw i8 %spec.select.2414.i, %i.bb
  %spec.select161.3.i = select i1 %i.bc, i32 3, i32 %spec.select161.2.i ; 2 uses
  %i.bd = zext nneg i32 %spec.select161.3.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !459, !range !18, !noundef !19 ; 2 uses
  %i.bg = trunc nuw i8 %i.bf to i1
  %narrow415.i = add nuw nsw i8 %narrow.i.a, %i.bf
  %spec.select161.4.i = select i1 %i.bg, i32 4, i32 %spec.select161.3.i ; 2 uses
  %i.bh = zext nneg i32 %spec.select161.4.i to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !459, !range !18, !noundef !19 ; 2 uses
  %i.bk = trunc nuw i8 %i.bj to i1
  %narrow416.i.a = add nuw nsw i8 %narrow415.i, %i.bj
  %spec.select161.5.i = select i1 %i.bk, i32 5, i32 %spec.select161.4.i ; 2 uses
  %i.bl = zext nneg i32 %spec.select161.5.i to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !459, !range !18, !noundef !19 ; 2 uses
  %i.bo = trunc nuw i8 %i.bn to i1
  %narrow417.i = add nuw nsw i8 %narrow416.i.a, %i.bn
  %spec.select161.6.i = select i1 %i.bo, i32 6, i32 %spec.select161.5.i ; 2 uses
  %i.bp = zext nneg i32 %spec.select161.6.i to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !459, !range !18, !noundef !19 ; 2 uses
  %i.bs = trunc nuw i8 %i.br to i1
  %narrow418.i.a = add nuw nsw i8 %narrow417.i, %i.br
  %i.bt = icmp eq i32 %spec.select161.6.i, 0
  %not..i = xor i1 %i.bs, true
  %i.bu = and i1 %i.bt, %not..i
  %i.bv = icmp samesign ult i8 %narrow418.i.a, 2
  %or.cond.i = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread324.i, label %bb.bo

bb.f:                                             ; preds = %thread-pre-split.i, %.critedge.i
  %.0147400.i = phi i64 [ 0, %.critedge.i ], [ %.1148.lcssa.i, %thread-pre-split.i ] ; 2 uses
  %.0149399.i = phi i64 [ 0, %.critedge.i ], [ %.1150.lcssa.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.0253.0398.i = phi ptr [ null, %.critedge.i ], [ %.sroa.0253.1.lcssa.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.11.0397.i = phi i32 [ 0, %.critedge.i ], [ %.sroa.11.1.lcssa.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.0259.0396.i = phi ptr [ null, %.critedge.i ], [ %.sroa.0259.1.lcssa.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.9261.0395.i = phi i32 [ 0, %.critedge.i ], [ %.sroa.9261.1.lcssa.i, %thread-pre-split.i ] ; 2 uses
  %i.bw = phi i32 [ 1, %.critedge.i ], [ %.pr.i, %thread-pre-split.i ] ; 2 uses
  %i.bx = load ptr, ptr %22, align 8, !tbaa !21
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %.sroa.0.0.copyload.i175.i = load ptr, ptr %i.ca, align 8, !tbaa !456 ; 2 uses
  %i.cb = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.j, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i175.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !460 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i175.i, i64 64
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !461 ; 2 uses
  %i.cg = zext i16 %i.cf to i64
  %.idx.i = mul nuw nsw i64 %i.cg, 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i
  %.not382.i = icmp eq i16 %i.cf, 0
  br i1 %.not382.i, label %thread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.bn
  %.1148389.i = phi i64 [ %.3.ph.i, %bb.bn ], [ %.0147400.i, %bb.f ] ; 4 uses
  %.1150388.i = phi i64 [ %.3152.ph.i, %bb.bn ], [ %.0149399.i, %bb.f ] ; 4 uses
  %.0154387.i = phi ptr [ %i.mh, %bb.bn ], [ %i.cd, %bb.f ] ; 3 uses
  %.sroa.0253.1386.i = phi ptr [ %.sroa.0253.2.ph.i, %bb.bn ], [ %.sroa.0253.0398.i, %bb.f ] ; 6 uses
  %.sroa.11.1385.i = phi i32 [ %.sroa.11.2.ph.i, %bb.bn ], [ %.sroa.11.0397.i, %bb.f ] ; 5 uses
  %.sroa.0259.1384.i = phi ptr [ %.sroa.0259.2.ph.i, %bb.bn ], [ %.sroa.0259.0396.i, %bb.f ] ; 5 uses
  %.sroa.9261.1383.i = phi i32 [ %.sroa.9261.2.ph.i, %bb.bn ], [ %.sroa.9261.0395.i, %bb.f ] ; 5 uses
  %i.ci = load ptr, ptr %.0154387.i, align 8, !tbaa !462 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !445
  switch i32 %i.ck, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread324.i [
    i32 194, label %bb.g
    i32 221, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %.sroa.2102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0154387.i, i64 8
  %.sroa.2102.0.copyload.i = load i32, ptr %.sroa.2102.0..sroa_idx.i, align 8, !tbaa !458 ; 2 uses
  %i.cl = load i32, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %i.cm = load i32, ptr %i.k, align 4, !tbaa !95
  %.not.i182.i = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i182.i, label %bb.i, label %bb.h, !prof !96

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr nonnull %i.ci, i32 %.sroa.2102.0.copyload.i)
  br label %bb.bn

bb.i:                                             ; preds = %bb.g
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %22, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  store ptr %i.ci, ptr %i.cp, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.sroa.2102.0.copyload.i, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.cq = load i32, ptr %i.j, align 8, !tbaa !54
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.j, align 8, !tbaa !54
  br label %bb.bn

bb.j:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !460 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !462
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !464 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !462 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !445
  switch i32 %i.db, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread324.i [
    i32 37, label %bb.k
    i32 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !462 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !445
  switch i32 %i.df, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread324.i [
    i32 37, label %bb.l
    i32 12, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !467 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !470
  %i.dl = icmp ult i32 %i.dk, 65
  %i.dm = load ptr, ptr %i.di, align 8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.dl, ptr %i.di, ptr %i.dm
  %.0.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i, align 8, !tbaa !64
  %.0.i.i.i.i.i.fr.i.i = freeze i64 %.0.i.i.i.i.i.i.i ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !467 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !470
  %i.ds = icmp ult i32 %i.dr, 65
  %i.dt = load ptr, ptr %i.dp, align 8
  %spec.select.i.i.i.i.i73.i.i = select i1 %i.ds, ptr %i.dp, ptr %i.dt
  %.0.i.i.i.i.i74.i.i = load i64, ptr %spec.select.i.i.i.i.i73.i.i, align 8, !tbaa !64 ; 10 uses
  %.not57.not.i.i = icmp eq i64 %.0.i.i.i.i.i.fr.i.i, 0
  br i1 %.not57.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread324.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.l
  %i.du = icmp ult i64 %.0.i.i.i.i.i.fr.i.i, 256
  %i.dv = icmp ult i64 %.0.i.i.i.i.i74.i.i, 256
  %or.cond71.i.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond71.i.i, label %.thread.i.i, label %.split.1.i.i

.split.1.i.i:                                     ; preds = %.split.preheader.i.i
  %i.dw = and i64 %.0.i.i.i.i.i.fr.i.i, -65281
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = and i64 %.0.i.i.i.i.i74.i.i, -65281
  %i.dz = icmp eq i64 %i.dy, 0
  %or.cond71.1.i.i = select i1 %i.dx, i1 %i.dz, i1 false
  br i1 %or.cond71.1.i.i, label %.thread.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %.split.1.i.i
  %i.ea = and i64 %.0.i.i.i.i.i.fr.i.i, -16711681
  %i.eb = icmp eq i64 %i.ea, 0
  %i.ec = and i64 %.0.i.i.i.i.i74.i.i, -16711681
  %i.ed = icmp eq i64 %i.ec, 0
  %or.cond71.2.i.i = select i1 %i.eb, i1 %i.ed, i1 false
  br i1 %or.cond71.2.i.i, label %.thread.i.i, label %.split.3.i.i

.split.3.i.i:                                     ; preds = %.split.2.i.i
  %i.ee = and i64 %.0.i.i.i.i.i.fr.i.i, -4278190081
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = and i64 %.0.i.i.i.i.i74.i.i, -4278190081
  %i.eh = icmp eq i64 %i.eg, 0
  %or.cond71.3.i.i = select i1 %i.ef, i1 %i.eh, i1 false
  br i1 %or.cond71.3.i.i, label %.thread.i.i, label %.split.4.i.i

.split.4.i.i:                                     ; preds = %.split.3.i.i
  %i.ei = and i64 %.0.i.i.i.i.i.fr.i.i, -1095216660481
  %i.ej = icmp eq i64 %i.ei, 0
  %i.ek = and i64 %.0.i.i.i.i.i74.i.i, -1095216660481
  %i.el = icmp eq i64 %i.ek, 0
  %or.cond71.4.i.i = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %or.cond71.4.i.i, label %.thread.i.i, label %.split.5.i.i

.split.5.i.i:                                     ; preds = %.split.4.i.i
  %i.em = and i64 %.0.i.i.i.i.i.fr.i.i, -280375465082881
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = and i64 %.0.i.i.i.i.i74.i.i, -280375465082881
  %i.ep = icmp eq i64 %i.eo, 0
  %or.cond71.5.i.i = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond71.5.i.i, label %.thread.i.i, label %.split.6.i.i

.split.6.i.i:                                     ; preds = %.split.5.i.i
  %i.eq = and i64 %.0.i.i.i.i.i.fr.i.i, -71776119061217281
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = and i64 %.0.i.i.i.i.i74.i.i, -71776119061217281
  %i.et = icmp eq i64 %i.es, 0
  %or.cond71.6.i.i = select i1 %i.er, i1 %i.et, i1 false
  br i1 %or.cond71.6.i.i, label %.thread.i.i, label %.split.7.i.i

.split.7.i.i:                                     ; preds = %.split.6.i.i
  %i.eu = and i64 %.0.i.i.i.i.i.fr.i.i, 72057594037927935
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = and i64 %.0.i.i.i.i.i74.i.i, 72057594037927935
  %i.ex = icmp eq i64 %i.ew, 0
  %or.cond71.7.i.i = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond71.7.i.i, label %.thread.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread324.i

.thread.i.i:                                      ; preds = %.split.7.i.i, %.split.6.i.i, %.split.5.i.i, %.split.4.i.i, %.split.3.i.i, %.split.2.i.i, %.split.1.i.i, %.split.preheader.i.i
  %storemerge50.lcssa.wide.i.i = phi i32 [ 0, %.split.preheader.i.i ], [ 1, %.split.1.i.i ], [ 2, %.split.2.i.i ], [ 3, %.split.3.i.i ], [ 4, %.split.4.i.i ], [ 5, %.split.5.i.i ], [ 6, %.split.6.i.i ], [ 7, %.split.7.i.i ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !462 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !445 ; 3 uses
  switch i32 %i.fb, label %bb.n [
    i32 37, label %bb.m
    i32 12, label %bb.m
  ]

bb.m:                                             ; preds = %.thread.i.i, %.thread.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !467 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !470
  %i.fh = icmp ult i32 %i.fg, 65
end_hunk_0
