Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyISelLowering?download=true
inline.NumInlined: 5131
inline.NumDeleted: 1740
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN4llvm12SelectionDAG19getSplatBuildVectorENS_3EVTERKNS_5SDLocENS_7SDValueE:bb.a
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.e
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.m, %bb.e ] ; 5 uses
  %i.o = zext i32 %i.n to i64                     ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !370
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !536
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.r, align 4, !tbaa !537
  %i.s = icmp ugt i32 %i.n, 16
  br i1 %i.s, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 16) #23
  %i.t = load ptr, ptr %8, align 8, !tbaa !370    ; 3 uses
  %xtraiter23 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter25 = phi i64 [ %prol.iter25.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store ptr %4, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !50
  %i.u = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter25.next = add i64 %prol.iter25, 1     ; 2 uses
  %prol.iter25.cmp.not = icmp eq i64 %prol.iter25.next, %xtraiter23
  br i1 %prol.iter25.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !981

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  store ptr %4, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %4, ptr %i.w, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %4, ptr %i.x, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr %4, ptr %i.y, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr %4, ptr %i.z, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store ptr %4, ptr %i.aa, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store ptr %4, ptr %i.ab, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store ptr %4, ptr %i.ac, align 8, !tbaa !498
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !50
  %i.ad = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !982

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store ptr %4, ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !50
  %i.af = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !983

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i32 %i.n, 8
  br i1 %i.ah, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr %4, ptr %.09.i.i.i.i.i, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %4, ptr %i.ai, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  store ptr %4, ptr %i.aj, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store ptr %4, ptr %i.ak, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64
  store ptr %4, ptr %i.al, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 72
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 80
  store ptr %4, ptr %i.am, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 88
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96
  store ptr %4, ptr %i.an, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 104
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 112
  store ptr %4, ptr %i.ao, align 8, !tbaa !498
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 120
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7, align 8, !tbaa !50
  %i.ap = add nsw i64 %.068.i.i.i.i.i, -8         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !982

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.01.0.copyload.pre = load i16, ptr %6, align 8, !tbaa !162
  %.sroa.23.0.copyload.pre = load ptr, ptr %i.a, align 8, !tbaa !195
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ar = phi ptr [ %i.p, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.t, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit ], [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.23.0.copyload = phi ptr [ %2, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %.sroa.23.0.copyload.pre, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit ], [ %2, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.01.0.copyload = phi i16 [ %1, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %.sroa.01.0.copyload.pre, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit ], [ %1, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 %i.n, ptr %i.q, align 8, !tbaa !536
  store ptr %i.ar, ptr %9, align 8, !tbaa !775
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.o, ptr %i.as, align 8, !tbaa !778
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.395") align 8 %9) #23
  %i.au = load ptr, ptr %8, align 8, !tbaa !370   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.p
  br i1 %i.av, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit
  call void @free(ptr noundef %i.au) #23
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.at, %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit ]
  ret { ptr, i32 } %.pn
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #1

declare void @_ZN4llvm12SelectionDAG21ExtractVectorElementsENS_7SDValueERNS_15SmallVectorImplIS1_EEjjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef byval(%"struct.llvm::EVT") align 8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @"_ZZNK4llvm25WebAssemblyTargetLowering10LowerShiftENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_m"(ptr %0, i32 %1, i64 noundef %2) unnamed_addr #10 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180
  %.not = icmp eq i32 %i.b, 193
  br i1 %.not, label %bb.b, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !497  ; 4 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !498 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !50 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.0.0.copyload4 = load ptr, ptr %i.e, align 8, !tbaa !498 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.11.sroa.0.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !162 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.j, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.k = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.k, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %spec.select.i.i, label %bb.c, label %bb.f

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.b
  %i.l = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.m, align 8, !tbaa !544
  store i64 0, ptr %4, align 8, !tbaa !167
  %i.n = call noundef zeroext i1 @_ZN4llvm3ISD21isConstantSplatVectorEPKNS_6SDNodeERNS_5APIntE(ptr noundef %.sroa.0.0.copyload4, ptr noundef nonnull align 8 dereferenceable(12) %4) #23 ; 3 uses
  %.sroa.9.0 = select i1 %i.n, i32 %.sroa.9.0.copyload, i32 %.sroa.11.sroa.0.0.copyload
  %.sroa.013.0 = select i1 %i.n, ptr %.sroa.013.0.copyload, ptr %.sroa.0.0.copyload4
  %.sroa.0.045 = select i1 %i.n, ptr %.sroa.0.0.copyload4, ptr %.sroa.013.0.copyload
  %i.o = call noundef zeroext i1 @_ZN4llvm3ISD21isConstantSplatVectorEPKNS_6SDNodeERNS_5APIntE(ptr noundef %.sroa.0.045, ptr noundef nonnull align 8 dereferenceable(12) %4) #23
  %.pre51 = load i32, ptr %i.m, align 8, !tbaa !544 ; 3 uses
  br i1 %i.o, label %bb.d, label %_ZNK4llvm5APInteqEm.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i32 %.pre51, 65                 ; 2 uses
  br i1 %i.p, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.d
  %i.q = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #24
  %i.r = sub i32 %.pre51, %i.q
  %i.s = icmp ult i32 %i.r, 65
  br i1 %i.s, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %bb.d, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.t = load ptr, ptr %4, align 8
  %spec.select.i.i9 = select i1 %i.p, ptr %4, ptr %i.t
  %.0.i.i = load i64, ptr %spec.select.i.i9, align 8, !tbaa !167
  %i.u = icmp eq i64 %.0.i.i, %2                  ; 2 uses
  %spec.select = select i1 %i.u, ptr %.sroa.013.0, ptr %0
  %spec.select48 = select i1 %i.u, i32 %.sroa.9.0, i32 %1
  br label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInteqEm.exit, %bb.c
  %.sroa.034.0 = phi ptr [ %0, %bb.c ], [ %spec.select, %_ZNK4llvm5APInteqEm.exit ] ; 2 uses
  %.sroa.938.0 = phi i32 [ %1, %bb.c ], [ %spec.select48, %_ZNK4llvm5APInteqEm.exit ] ; 2 uses
  %i.v = icmp ugt i32 %.pre51, 64
  br i1 %i.v, label %_ZNK4llvm5APInteqEm.exit.thread.thread, label %_ZN4llvm5APIntD2Ev.exit

_ZNK4llvm5APInteqEm.exit.thread.thread:           ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %_ZNK4llvm5APInteqEm.exit.thread
  %.sroa.938.058 = phi i32 [ %.sroa.938.0, %_ZNK4llvm5APInteqEm.exit.thread ], [ %1, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ] ; 2 uses
  %.sroa.034.056 = phi ptr [ %.sroa.034.0, %_ZNK4llvm5APInteqEm.exit.thread ], [ %0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ] ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !167    ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN4llvm5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.thread.thread
  call void @_ZdaPv(ptr noundef nonnull %i.w) #26
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInteqEm.exit.thread, %_ZNK4llvm5APInteqEm.exit.thread.thread, %bb.e
  %.sroa.938.057 = phi i32 [ %.sroa.938.0, %_ZNK4llvm5APInteqEm.exit.thread ], [ %.sroa.938.058, %_ZNK4llvm5APInteqEm.exit.thread.thread ], [ %.sroa.938.058, %bb.e ]
  %.sroa.034.055 = phi ptr [ %.sroa.034.0, %_ZNK4llvm5APInteqEm.exit.thread ], [ %.sroa.034.056, %_ZNK4llvm5APInteqEm.exit.thread.thread ], [ %.sroa.034.056, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.f:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload4, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !180  ; 3 uses
  switch i32 %i.z, label %bb.g [
    i32 37, label %bb.h
    i32 12, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !180
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.g
  %i.aa = phi i32 [ %i.z, %bb.f ], [ %.pre, %bb.g ], [ %i.z, %bb.f ]
  %.sroa.9.1 = phi i32 [ %.sroa.9.0.copyload, %bb.f ], [ %.sroa.11.sroa.0.0.copyload, %bb.g ], [ %.sroa.9.0.copyload, %bb.f ]
  %.sroa.013.1 = phi ptr [ %.sroa.013.0.copyload, %bb.f ], [ %.sroa.0.0.copyload4, %bb.g ], [ %.sroa.013.0.copyload, %bb.f ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.copyload4, %bb.f ], [ %.sroa.013.0.copyload, %bb.g ], [ %.sroa.0.0.copyload4, %bb.f ]
  switch i32 %i.aa, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.h, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !541 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !544 ; 2 uses
  %i.ag = icmp ult i32 %i.af, 65                  ; 2 uses
  br i1 %i.ag, label %_ZNK4llvm5APInteqEm.exit14, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i11

_ZNK4llvm5APInt13getActiveBitsEv.exit.i11:        ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.ah = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #24
  %i.ai = sub i32 %i.af, %i.ah
  %i.aj = icmp ult i32 %i.ai, 65
  br i1 %i.aj, label %_ZNK4llvm5APInteqEm.exit14, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZNK4llvm5APInteqEm.exit14:                       ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i11
  %i.ak = load ptr, ptr %i.ad, align 8
  %spec.select.i.i12 = select i1 %i.ag, ptr %i.ad, ptr %i.ak
  %.0.i.i13 = load i64, ptr %spec.select.i.i12, align 8, !tbaa !167
  %i.al = icmp eq i64 %.0.i.i13, %2               ; 2 uses
  %spec.select49 = select i1 %i.al, ptr %.sroa.013.1, ptr %0
  %spec.select50 = select i1 %i.al, i32 %.sroa.9.1, i32 %1
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.thread: ; preds = %_ZNK4llvm5APInteqEm.exit14, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i11, %bb.h, %_ZN4llvm5APIntD2Ev.exit, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.034.055, %_ZN4llvm5APIntD2Ev.exit ], [ %0, %bb.h ], [ %0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i11 ], [ %spec.select49, %_ZNK4llvm5APInteqEm.exit14 ]
  %.sroa.3.0 = phi i32 [ %1, %bb.a ], [ %.sroa.938.057, %_ZN4llvm5APIntD2Ev.exit ], [ %1, %bb.h ], [ %1, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i11 ], [ %spec.select50, %_ZNK4llvm5APInteqEm.exit14 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getSplatValueENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i1 noundef zeroext) local_unnamed_addr #1

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL22HasNoSignedZerosOrNaNsN4llvm7SDValueERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4, !tbaa !50 ; 2 uses
  %i.b = and i32 %.sroa.0.0.copyload.i, 32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !497  ; 2 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !498
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !50
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG15isKnownNeverNaNENS_7SDValueEbj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload, i1 noundef zeroext false, i32 noundef 0) #23
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !497  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !498
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !50
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG15isKnownNeverNaNENS_7SDValueEbj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload, i1 noundef zeroext false, i32 noundef 0) #23
  br i1 %i.h, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.c
  %.sroa.0.0.copyload.i13.pre = load i32, ptr %i.a, align 4, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.0.0.copyload.i13 = phi i32 [ %.sroa.0.0.copyload.i13.pre, %._crit_edge ], [ %.sroa.0.0.copyload.i, %bb.a ]
  %i.i = and i32 %.sroa.0.0.copyload.i13, 128
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !497  ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !498
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !50
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG23isKnownNeverLogicalZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, i32 noundef 0) #23
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !497  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !498
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !50
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG23isKnownNeverLogicalZeroENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef 0) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b
  %i.p = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.e ], [ true, %bb.d ], [ %i.o, %bb.f ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_Z17DoubleVectorWidthN4llvm7SDValueEjRNS_12SelectionDAGE(ptr %0, i32 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196
  store i64 %i.b, ptr %5, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !865
  store i32 %i.e, ptr %i.c, align 8, !tbaa !866
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !693
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !194
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.k, align 8, !tbaa !162 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.l, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.m = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.m, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %bb.c

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.n = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #25
  unreachable

bb.c:                                             ; preds = %.split.i
  %i.o = zext i16 %.sroa.0.0.copyload.i.i to i64  ; 2 uses
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !164
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !162
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.y = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  %i.z = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #23
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.d
  %.in = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ]
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.x, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %i.aa = shl i32 %.in, 1                         ; 3 uses
  %i.ab = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.ac = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.ab, i32 noundef %i.aa) ; 2 uses
  %.not.i34 = icmp eq i16 %i.ac, 0
  br i1 %.not.i34, label %bb.e, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.ad = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.ae = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i16 %i.ab, ptr %i.ad, i32 noundef %i.aa, i1 noundef zeroext false) #23 ; 2 uses
  %i.af = extractvalue { i16, ptr } %i.ae, 0
  %i.ag = extractvalue { i16, ptr } %i.ae, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %bb.e
  %.sroa.3.0.i = phi ptr [ %i.ag, %bb.e ], [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %.sroa.0.0.i = phi i16 [ %i.af, %bb.e ], [ %i.ac, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  store ptr %0, ptr %7, align 8, !tbaa !498
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %1, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !50
  %.sroa.011.0.copyload = load i16, ptr %6, align 8, !tbaa !162
  %.sroa.213.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.011.0.copyload, ptr %.sroa.213.0.copyload) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.ah, 1
  store ptr %.fca.0.extract7, ptr %8, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #23 ; 3 uses
end_hunk_0
