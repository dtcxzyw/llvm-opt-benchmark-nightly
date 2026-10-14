Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 337
begin_hunk_0_@_ZL23combineExtractVectorEltPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  %.fca.0.extract46.i.i = extractvalue { ptr, i32 } %i.afw, 0 ; 18 uses
  %.fca.1.extract47.i.i = extractvalue { ptr, i32 } %i.afw, 1 ; 18 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 5 uses
  store ptr %i.afx, ptr %71, align 8, !tbaa !83
  %i.afy = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 4 uses
  store i32 0, ptr %i.afy, align 8, !tbaa !633
  %i.afz = getelementptr inbounds nuw i8, ptr %71, i64 12
  store i32 16, ptr %i.afz, align 4, !tbaa !634
  %i.aga = icmp samesign ugt i64 %i.afv, 16
  br i1 %i.aga, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit98.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %71, ptr noundef nonnull %i.afx, i64 noundef %i.afv, i64 noundef 16) #39
  %i.agb = load ptr, ptr %71, align 8, !tbaa !83  ; 2 uses
  %xtraiter1357 = and i64 %i.afv, 7               ; 2 uses
  %lcmp.mod1358.not = icmp eq i64 %xtraiter1357, 0
  br i1 %lcmp.mod1358.not, label %.lr.ph.i.i.i.preheader.i.i.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.agd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.agb, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.agc, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.afv, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  %prol.iter1359 = phi i64 [ %prol.iter1359.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  store ptr %.fca.0.extract46.i.i, ptr %.09.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !240
  %i.agc = add nsw i64 %.068.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter1359.next = add i64 %prol.iter1359, 1 ; 2 uses
  %prol.iter1359.cmp.not = icmp eq i64 %prol.iter1359.next, %xtraiter1357
  br i1 %prol.iter1359.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !3463

.lr.ph.i.i.i.preheader.i.i.i.i.i.new:             ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.agb, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.agd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.afv, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.agc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i.new
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.i.i.new ], [ %i.agm, %.lr.ph.i.i.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.i.i.new ], [ %i.agl, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.fca.0.extract46.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i, align 8, !tbaa !240
  %i.age = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract46.i.i, ptr %i.age, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !240
  %i.agf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract46.i.i, ptr %i.agf, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !240
  %i.agg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract46.i.i, ptr %i.agg, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !240
  %i.agh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract46.i.i, ptr %i.agh, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !240
  %i.agi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract46.i.i, ptr %i.agi, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !240
  %i.agj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract46.i.i, ptr %i.agj, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !240
  %i.agk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract46.i.i, ptr %i.agk, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !240
  %i.agl = add nsw i64 %.068.i.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.agl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit98.i.i
  %.not.i99.i.i = icmp ugt i64 %.fca.0.extract53.i.i, %i.aft
  br i1 %.not.i99.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i600.preheader

.lr.ph.i.i.i.i.i.i.i600.preheader:                ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i
  %i.agn = add nsw i64 %i.afv, -1
  %xtraiter1355 = and i64 %i.afv, 7               ; 2 uses
  %lcmp.mod1356.not = icmp eq i64 %xtraiter1355, 0
  br i1 %lcmp.mod1356.not, label %.lr.ph.i.i.i.i.i.i.i600.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i600.prol

.lr.ph.i.i.i.i.i.i.i600.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i600.preheader, %.lr.ph.i.i.i.i.i.i.i600.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.agp, %.lr.ph.i.i.i.i.i.i.i600.prol ], [ %i.afx, %.lr.ph.i.i.i.i.i.i.i600.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.ago, %.lr.ph.i.i.i.i.i.i.i600.prol ], [ %i.afv, %.lr.ph.i.i.i.i.i.i.i600.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i600.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i600.preheader ]
  store ptr %.fca.0.extract46.i.i, ptr %.09.i.i.i.i.i.i.i.prol, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.prol, align 8, !tbaa !240
  %i.ago = add nsw i64 %.068.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1355
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i600.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i600.prol, !llvm.loop !3464

.lr.ph.i.i.i.i.i.i.i600.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i600.prol, %.lr.ph.i.i.i.i.i.i.i600.preheader
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.afx, %.lr.ph.i.i.i.i.i.i.i600.preheader ], [ %i.agp, %.lr.ph.i.i.i.i.i.i.i600.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %i.afv, %.lr.ph.i.i.i.i.i.i.i600.preheader ], [ %i.ago, %.lr.ph.i.i.i.i.i.i.i600.prol ]
  %i.agq = icmp ult i64 %i.agn, 7
  br i1 %i.agq, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i600

.lr.ph.i.i.i.i.i.i.i600:                          ; preds = %.lr.ph.i.i.i.i.i.i.i600.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i600
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.agz, %.lr.ph.i.i.i.i.i.i.i600 ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i600.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.agy, %.lr.ph.i.i.i.i.i.i.i600 ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i600.prol.loopexit ]
  store ptr %.fca.0.extract46.i.i, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i, align 8, !tbaa !240
  %i.agr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract46.i.i, ptr %i.agr, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.1, align 8, !tbaa !240
  %i.ags = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract46.i.i, ptr %i.ags, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.2, align 8, !tbaa !240
  %i.agt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract46.i.i, ptr %i.agt, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.3, align 8, !tbaa !240
  %i.agu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract46.i.i, ptr %i.agu, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.4, align 8, !tbaa !240
  %i.agv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract46.i.i, ptr %i.agv, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.5, align 8, !tbaa !240
  %i.agw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract46.i.i, ptr %i.agw, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.6, align 8, !tbaa !240
  %i.agx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract46.i.i, ptr %i.agx, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.7, align 8, !tbaa !240
  %i.agy = add nsw i64 %.068.i.i.i.i.i.i.i, -8    ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.agy, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i600, !llvm.loop !5

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i600.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i600, %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i
  %storemerge.i.i.i = trunc nuw i64 %i.afv to i32
  store i32 %storemerge.i.i.i, ptr %i.afy, align 8, !tbaa !633
  %.sroa.037.0.copyload.i.i = load i16, ptr %70, align 8, !tbaa !345
  %.sroa.239.0.copyload.i.i = load ptr, ptr %i.afs, align 8, !tbaa !471
  %i.aha = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.077.0.copyload.i, i32 %.sroa.278.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %81, i16 %.sroa.037.0.copyload.i.i, ptr %.sroa.239.0.copyload.i.i) #39 ; 2 uses
  %.fca.0.extract33.i.i = extractvalue { ptr, i32 } %i.aha, 0
  %.fca.1.extract34.i.i = extractvalue { ptr, i32 } %i.aha, 1
  %i.ahb = load ptr, ptr %71, align 8, !tbaa !83  ; 3 uses
  store ptr %.fca.0.extract33.i.i, ptr %i.ahb, align 8, !tbaa !465
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  store i32 %.fca.1.extract34.i.i, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.ahc = lshr i32 %.sroa.speculated181.i.i, 3   ; 2 uses
  %i.ahd = call range(i32 0, 30) i32 @llvm.ctpop.i32(i32 %i.ahc)
  %i.ahe = icmp eq i32 %i.ahd, 1
  br i1 %i.ahe, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i
  %i.ahf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ahc, i1 true)
  %switch.tableidx.i.i = add nsw i32 %i.ahf, -4   ; 2 uses
  %i.ahg = icmp ult i32 %switch.tableidx.i.i, 7
  br i1 %i.ahg, label %switch.lookup.i.i, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

switch.lookup.i.i:                                ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %switch.tableidx.i.i to i16
  %switch.offset.i.i = or disjoint i16 %switch.idx.cast.i.i, 48
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i:          ; preds = %switch.lookup.i.i, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i
  %.sroa.0.0.i100.i.i = phi i16 [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i ], [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i ] ; 2 uses
  store ptr %i.ahb, ptr %72, align 8, !tbaa !688
  %i.ahh = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.ahi = load i32, ptr %i.afy, align 8, !tbaa !633
  %i.ahj = zext i32 %i.ahi to i64
  store i64 %i.ahj, ptr %i.ahh, align 8, !tbaa !689
  %i.ahk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %81, i16 %.sroa.0.0.i100.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %72) #39 ; 2 uses
  %.fca.0.extract23.i.i = extractvalue { ptr, i32 } %i.ahk, 0 ; 4 uses
  %.fca.1.extract24.i.i = extractvalue { ptr, i32 } %i.ahk, 1 ; 4 uses
  %.sroa.015.0.copyload.i.i = load i16, ptr %70, align 8, !tbaa !345
  %.sroa.217.0.copyload.i.i = load ptr, ptr %i.afs, align 8, !tbaa !471
  %i.ahl = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.074.0.copyload.i, i32 %.sroa.275.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %81, i16 %.sroa.015.0.copyload.i.i, ptr %.sroa.217.0.copyload.i.i) #39 ; 2 uses
  %.fca.0.extract11.i.i = extractvalue { ptr, i32 } %i.ahl, 0
  %.fca.1.extract12.i.i = extractvalue { ptr, i32 } %i.ahl, 1
  %i.ahm = load ptr, ptr %71, align 8, !tbaa !83  ; 3 uses
  store ptr %.fca.0.extract11.i.i, ptr %i.ahm, align 8, !tbaa !465
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  store i32 %.fca.1.extract12.i.i, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !tbaa !240
  store ptr %i.ahm, ptr %73, align 8, !tbaa !688
  %i.ahn = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.aho = load i32, ptr %i.afy, align 8, !tbaa !633
  %i.ahp = zext i32 %i.aho to i64
  store i64 %i.ahp, ptr %i.ahn, align 8, !tbaa !689
  %i.ahq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %81, i16 %.sroa.0.0.i100.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %73) #39 ; 2 uses
  %.fca.0.extract5.i.i = extractvalue { ptr, i32 } %i.ahq, 0 ; 3 uses
  %.fca.1.extract6.i.i = extractvalue { ptr, i32 } %i.ahq, 1 ; 3 uses
  %i.ahr = lshr i32 %.sroa.speculated181.i.i, 6
  switch i32 %i.ahr, label %bb.gz [
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i.a
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split144.i.i
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split145.i.i
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split146.i.i
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split147.i.i
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split148.i.i
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split149.i.i
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split150.i.i
  ]

bb.gz:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i.a: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split144.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split145.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split146.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split147.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split148.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split149.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split150.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i:       ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split150.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split149.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split148.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split147.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split146.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split145.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split144.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i.a, %bb.gz, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  %.not.i112.i.i.i = phi i1 [ true, %bb.gz ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split148.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split147.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split146.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split145.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split144.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i.a ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split149.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split150.i.i ] ; 6 uses
  %.sroa.0.0.i101.i.i = phi i16 [ 0, %bb.gz ], [ 100, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split148.i.i ], [ 99, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split147.i.i ], [ 98, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split146.i.i ], [ 97, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split145.i.i ], [ 96, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split144.i.i ], [ 95, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i.a ], [ 101, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split149.i.i ], [ 94, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i ], [ 102, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split150.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #39
  store ptr %.fca.0.extract23.i.i, ptr %74, align 8, !tbaa !465
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i32 %.fca.1.extract24.i.i, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.ahs = getelementptr inbounds nuw i8, ptr %74, i64 16
  store ptr %.fca.0.extract5.i.i, ptr %i.ahs, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx.i121.i = getelementptr inbounds nuw i8, ptr %74, i64 24
  store i32 %.fca.1.extract6.i.i, ptr %.sroa.4.0..sroa_idx.i121.i, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  store i16 %.sroa.0.0.i101.i.i, ptr %64, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  store ptr null, ptr %i.aht, align 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %3, i64 395
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !366, !range !79, !noundef !80
  %i.ahw = trunc nuw i8 %i.ahv to i1
  %i.ahx = load i32, ptr %i.act, align 8          ; 2 uses
  %i.ahy = icmp sgt i32 %i.ahx, 8
  %or.cond.i.i.i.i = select i1 %i.ahw, i1 %i.ahy, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ha, label %bb.hi

bb.ha:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %3, i64 503
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !358, !range !79, !noundef !80
  %i.aib = trunc nuw i8 %i.aia to i1
  %i.aic = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.aid = load i32, ptr %i.aic, align 8
  %i.aie = icmp ugt i32 %i.aid, 511
  %not..i.i.i = xor i1 %i.aib, true
  %or.cond.not.i.i.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.aie
  %i.aif = getelementptr inbounds nuw i8, ptr %3, i64 732
  %i.aig = load i32, ptr %i.aif, align 4
  %i.aih = icmp ugt i32 %i.aig, 256
  %or.cond.i.i.i616 = select i1 %or.cond.not.i.i.i.i.i, i1 true, i1 %i.aih
  br i1 %or.cond.i.i.i616, label %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread.i.i.i, label %.thread.i.i.i

_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread.i.i.i: ; preds = %bb.ha
  br i1 %.not.i112.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread.i.i.i
  %i.aii = zext nneg i16 %.sroa.0.0.i101.i.i to i64
  %i.aij = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aii ; 2 uses
  %i.aik = getelementptr i8, ptr %i.aij, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.aik, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.aij, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i

bb.hc:                                            ; preds = %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread.i.i.i
  %i.ail = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %64) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i:        ; preds = %bb.hc, %bb.hb
  %.pn.i.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i.i, %bb.hb ], [ %i.ail, %bb.hc ] ; 2 uses
  %.fca.1.extract58.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i, 1
  %i.aim = trunc nuw i8 %.fca.1.extract58.i.i.i to i1
  br i1 %i.aim, label %bb.hd, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i

bb.hd:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i.i:               ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i
  %.fca.0.extract57.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i, 0
  %i.ain = icmp ugt i64 %.fca.0.extract57.i.i.i, 512
  br i1 %i.ain, label %bb.he, label %.thread22.i.i.i

bb.he:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i
  br i1 %.not.i112.i.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aio = zext nneg i16 %.sroa.0.0.i101.i.i to i64
  %i.aip = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aio ; 2 uses
  %i.aiq = getelementptr i8, ptr %i.aip, i64 -16
  %.sroa.0.0.copyload.i.i86.i.i.i = load i64, ptr %i.aiq, align 16
  %.sroa.2.0..sroa_idx.i.i87.i.i.i = getelementptr i8, ptr %i.aip, i64 -8
  %.sroa.2.0.copyload.i.i88.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i87.i.i.i, align 8
  %.fca.0.insert.i.i89.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i86.i.i.i, 0
  %.fca.1.insert.i.i90.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i89.i.i.i, i8 %.sroa.2.0.copyload.i.i88.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i

bb.hg:                                            ; preds = %bb.he
  %i.air = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %64) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i:      ; preds = %bb.hg, %bb.hf
  %.pn.i91.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i90.i.i.i, %bb.hf ], [ %i.air, %bb.hg ] ; 2 uses
  %.fca.1.extract54.i.i.i = extractvalue { i64, i8 } %.pn.i91.i.i.i, 1
  %i.ais = trunc nuw i8 %.fca.1.extract54.i.i.i to i1
  br i1 %i.ais, label %bb.hh, label %_ZNK4llvm8TypeSizecvmEv.exit93.i.i.i

bb.hh:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

bb.hi:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i
  %i.ait = icmp sgt i32 %i.ahx, 7
  br i1 %i.ait, label %.thread.i.i.i, label %bb.hq

.thread.i.i.i:                                    ; preds = %bb.hi, %bb.ha
  br i1 %.not.i112.i.i.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %.thread.i.i.i
  %i.aiu = zext nneg i16 %.sroa.0.0.i101.i.i to i64
  %i.aiv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aiu ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 -16
  %.sroa.0.0.copyload.i.i95.i.i.i = load i64, ptr %i.aiw, align 16
  %.sroa.2.0..sroa_idx.i.i96.i.i.i = getelementptr i8, ptr %i.aiv, i64 -8
  %.sroa.2.0.copyload.i.i97.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i96.i.i.i, align 8
  %.fca.0.insert.i.i98.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i95.i.i.i, 0
  %.fca.1.insert.i.i99.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i98.i.i.i, i8 %.sroa.2.0.copyload.i.i97.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i

bb.hk:                                            ; preds = %.thread.i.i.i
  %i.aix = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %64) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i:     ; preds = %bb.hk, %bb.hj
  %.pn.i100.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i99.i.i.i, %bb.hj ], [ %i.aix, %bb.hk ] ; 2 uses
  %.fca.1.extract50.i.i.i = extractvalue { i64, i8 } %.pn.i100.i.i.i, 1
  %i.aiy = trunc nuw i8 %.fca.1.extract50.i.i.i to i1
  br i1 %i.aiy, label %bb.hl, label %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i

bb.hl:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i:            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i
  %.fca.0.extract49.i.i.i = extractvalue { i64, i8 } %.pn.i100.i.i.i, 0
  %i.aiz = icmp ugt i64 %.fca.0.extract49.i.i.i, 256
  br i1 %i.aiz, label %bb.hm, label %.thread22.i.i.i

bb.hm:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i
  br i1 %.not.i112.i.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aja = zext nneg i16 %.sroa.0.0.i101.i.i to i64
  %i.ajb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aja ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 -16
  %.sroa.0.0.copyload.i.i104.i.i.i = load i64, ptr %i.ajc, align 16
  %.sroa.2.0..sroa_idx.i.i105.i.i.i = getelementptr i8, ptr %i.ajb, i64 -8
  %.sroa.2.0.copyload.i.i106.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i105.i.i.i, align 8
  %.fca.0.insert.i.i107.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i104.i.i.i, 0
  %.fca.1.insert.i.i108.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i107.i.i.i, i8 %.sroa.2.0.copyload.i.i106.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i

bb.ho:                                            ; preds = %bb.hm
  %i.ajd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %64) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i:     ; preds = %bb.ho, %bb.hn
  %.pn.i109.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i108.i.i.i, %bb.hn ], [ %i.ajd, %bb.ho ] ; 2 uses
  %.fca.1.extract46.i.i.i = extractvalue { i64, i8 } %.pn.i109.i.i.i, 1
  %i.aje = trunc nuw i8 %.fca.1.extract46.i.i.i to i1
  br i1 %i.aje, label %bb.hp, label %_ZNK4llvm8TypeSizecvmEv.exit93.i.i.i

bb.hp:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

bb.hq:                                            ; preds = %bb.hi
  br i1 %.not.i112.i.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ajf = zext nneg i16 %.sroa.0.0.i101.i.i to i64
  %i.ajg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ajf ; 2 uses
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 -16
  %.sroa.0.0.copyload.i.i113.i.i.i = load i64, ptr %i.ajh, align 16
  %.sroa.2.0..sroa_idx.i.i114.i.i.i = getelementptr i8, ptr %i.ajg, i64 -8
  %.sroa.2.0.copyload.i.i115.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i114.i.i.i, align 8
  %.fca.0.insert.i.i116.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i113.i.i.i, 0
  %.fca.1.insert.i.i117.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i116.i.i.i, i8 %.sroa.2.0.copyload.i.i115.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i

bb.hs:                                            ; preds = %bb.hq
  %i.aji = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %64) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i:     ; preds = %bb.hs, %bb.hr
  %.pn.i118.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i117.i.i.i, %bb.hr ], [ %i.aji, %bb.hs ] ; 2 uses
  %.fca.1.extract42.i.i.i = extractvalue { i64, i8 } %.pn.i118.i.i.i, 1
  %i.ajj = trunc nuw i8 %.fca.1.extract42.i.i.i to i1
  br i1 %i.ajj, label %bb.ht, label %_ZNK4llvm8TypeSizecvmEv.exit120.i.i.i

bb.ht:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit120.i.i.i:            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i
  %.fca.0.extract41.i.i.i = extractvalue { i64, i8 } %.pn.i118.i.i.i, 0
  %i.ajk = icmp ugt i64 %.fca.0.extract41.i.i.i, 128
  br i1 %i.ajk, label %bb.hu, label %.thread22.i.i.i

bb.hu:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit120.i.i.i
  br i1 %.not.i112.i.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ajl = zext nneg i16 %.sroa.0.0.i101.i.i to i64
end_hunk_0
begin_hunk_1_@_ZL23combineExtractVectorEltPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
bb.kg:                                            ; preds = %.split.i.i.i31.i.i
  %i.aus = zext nneg i16 %.sroa.0.0.copyload.i.i.i.i25.i.i to i64
  %i.aut = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aus
  %i.auu = getelementptr i8, ptr %i.aut, i64 -2
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !345
  %i.auw = insertvalue { i16, ptr } poison, i16 %i.auv, 0
  %i.aux = insertvalue { i16, ptr } %i.auw, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i33.i.i

bb.kh:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i43.i.i
  %i.auy = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i33.i.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i33.i.i:    ; preds = %bb.kh, %bb.kg, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i43.i.i, %.split.i.i.i31.i.i
  %.fca.1.insert.merged.i.i.i34.i.i = phi { i16, ptr } [ %i.auy, %bb.kh ], [ %i.aux, %bb.kg ], [ %.fca.1.insert.i.i.i.i29.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i43.i.i ], [ %.fca.1.insert.i.i.i.i29.i.i, %.split.i.i.i31.i.i ] ; 2 uses
  %i.auz = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i34.i.i, 0 ; 3 uses
  store i16 %i.auz, ptr %44, align 8
  %i.ava = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.avb = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i34.i.i, 1
  store ptr %i.avb, ptr %i.ava, align 8
  %.not.i.i1.i.i35.i.i = icmp eq i16 %i.auz, 0
  br i1 %.not.i.i1.i.i35.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i33.i.i
  %i.avc = zext i16 %i.auz to i64
  %i.avd = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.avc
  %i.ave = getelementptr i8, ptr %i.avd, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i36.i.i = load i64, ptr %i.ave, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i37.i.i

bb.kj:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i33.i.i
  %i.avf = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %44) #40
  %i.avg = extractvalue { i64, i8 } %i.avf, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i37.i.i

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i37.i.i: ; preds = %bb.kj, %bb.ki
  %.pn.i.i.i.i38.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i36.i.i, %bb.ki ], [ %i.avg, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #39
  %i.avh = icmp ult i64 %.pn.i.i.i.i38.i.i, 9
  br i1 %i.avh, label %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread.i.i", label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit._crit_edge.i39.i.i

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit._crit_edge.i39.i.i: ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i37.i.i
  %.pre2.i42.i.i = load i32, ptr %i.aue, align 8, !tbaa !468
  br label %bb.kk

bb.kk:                                            ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit._crit_edge.i39.i.i, %bb.ke
  %i.avi = phi i32 [ %.pre2.i42.i.i, %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit._crit_edge.i39.i.i ], [ %i.auf, %bb.ke ]
  %.not.i23.i.i = icmp eq i32 %i.avi, 162
  br i1 %.not.i23.i.i, label %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.i.i", label %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread51.i.i"

"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.i.i": ; preds = %bb.kk
  %i.avj = call noundef zeroext i1 @_ZNK4llvm17BuildVectorSDNode10isConstantEv(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0156.0.i) #39
  br i1 %i.avj, label %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread.i.i", label %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread51.i.i"

"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread.i.i": ; preds = %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.i.i", %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i37.i.i
  %i.avk = call noundef i32 @_ZNK4llvm12SelectionDAG25ComputeMaxSignificantBitsENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.0156.0.i, i32 %.sroa.9.0.i, i32 noundef 0) #39
  %i.avl = icmp ult i32 %i.avk, 9
  br label %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread51.i.i"

"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread51.i.i": ; preds = %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread.i.i", %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.i.i", %bb.kk, %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i.i
  %.ph.i.i = phi i1 [ %i.avl, %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread.i.i" ], [ false, %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i.i ], [ false, %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.i.i" ], [ false, %bb.kk ]
  %i.avm = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.avn = load i32, ptr %i.avm, align 8, !tbaa !643
  %i.avo = icmp ugt i32 %i.avn, 64
  br i1 %i.avo, label %bb.kl, label %_ZN4llvm5APIntD2Ev.exit.i.i.i

bb.kl:                                            ; preds = %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread51.i.i"
  %i.avp = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !357 ; 2 uses
  %i.avr = icmp eq ptr %i.avq, null
  br i1 %i.avr, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @_ZdaPv(ptr noundef nonnull %i.avq) #42
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i:                    ; preds = %bb.km, %bb.kl, %"_ZZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_ENK3$_0clES5_.exit44.thread51.i.i"
  %i.avs = load i32, ptr %i.atq, align 8, !tbaa !643
  %i.avt = icmp ugt i32 %i.avs, 64
  br i1 %i.avt, label %bb.kn, label %_ZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_.exit.i

bb.kn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i
  %i.avu = load ptr, ptr %48, align 8, !tbaa !357 ; 2 uses
  %i.avv = icmp eq ptr %i.avu, null
  br i1 %i.avv, label %_ZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_.exit.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @_ZdaPv(ptr noundef nonnull %i.avu) #42
  br label %_ZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_.exit.i

_ZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_.exit.i: ; preds = %bb.ko, %bb.kn, %_ZN4llvm5APIntD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #39
  br i1 %.ph.i.i, label %bb.kp, label %_ZL22combineVPDPBUSDPatternPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit.thread1141

bb.kp:                                            ; preds = %_ZL12detectExtMulRN4llvm12SelectionDAGERKNS_7SDValueERS2_S5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #39
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !673
  store i64 %i.avx, ptr %51, align 8, !tbaa !673
  %i.avy = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !674
  store i32 %i.awa, ptr %i.avy, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #39
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.0161.0.i, i64 48
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !469
  %i.awd = zext i32 %.sroa.11.0.i to i64
  %i.awe = getelementptr inbounds nuw [16 x i8], ptr %i.awc, i64 %i.awd ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i636 = load i16, ptr %i.awe, align 8, !tbaa !345 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i.i637 = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  %.sroa.21.0.copyload.i.i.i.i638 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i637, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i.i.i636, ptr %39, align 8
  %i.awf = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i638, ptr %i.awf, align 8
  %.not.i.i108.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i636, 0
  br i1 %.not.i.i108.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.awg = zext i16 %.sroa.0.0.copyload.i.i.i.i636 to i64
  %i.awh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.awg
  %i.awi = getelementptr i8, ptr %i.awh, i64 -2
  %i.awj = load i16, ptr %i.awi, align 2, !tbaa !339
  %i.awk = add i16 %.sroa.0.0.copyload.i.i.i.i636, -163
  %spec.select.i.i.i.i.i639 = icmp ult i16 %i.awk, 53
  %.sroa.2.0.insert.shift.i.i.i.i.i640 = select i1 %spec.select.i.i.i.i.i639, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i.i641 = zext i16 %i.awj to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i642 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i640, %.sroa.0.0.insert.ext.i.i.i.i.i641
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i.i643

bb.kr:                                            ; preds = %bb.kp
  %i.awl = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %39) #40
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i.i643

_ZNK4llvm3EVT21getVectorElementCountEv.exit.i.i643: ; preds = %bb.kr, %bb.kq
  %.sroa.0.0.in.i.i.i644 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i.i642, %bb.kq ], [ %i.awl, %bb.kr ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.in.i.i.i644 to i32 ; 3 uses
  %i.awm = and i64 %.sroa.0.0.in.i.i.i644, 4294967296
  %.not.i89.i.i = icmp eq i64 %i.awm, 0
  br i1 %.not.i89.i.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i.i643
  %i.awn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.0.0.extract.trunc.i.i.i)
  %i.awo = icmp eq i32 %i.awn, 1
  br i1 %i.awo, label %.split.i869, label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i

.split.i869:                                      ; preds = %bb.ks
  %i.awp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc.i.i.i, i1 true) ; 2 uses
  %i.awq = icmp samesign ult i32 %i.awp, 7
  br i1 %i.awq, label %switch.lookup.i870, label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i

bb.kt:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i.i643
  %i.awr = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 5, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i

switch.lookup.i870:                               ; preds = %.split.i869
  %switch.idx.cast.i871 = trunc nuw nsw i32 %i.awp to i16
  %switch.offset.i872 = add nuw nsw i16 %switch.idx.cast.i871, 170
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i: ; preds = %switch.lookup.i870, %bb.kt, %.split.i869, %bb.ks
  %.sroa.04.0.i.i.i = phi i16 [ %i.awr, %bb.kt ], [ 0, %bb.ks ], [ %switch.offset.i872, %switch.lookup.i870 ], [ 0, %.split.i869 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #39
  %i.aws = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.0161.0.i, i32 %.sroa.11.0.i, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.04.0.i.i.i, ptr null) #39 ; 2 uses
  %.fca.0.extract53.i.i645 = extractvalue { ptr, i32 } %i.aws, 0
  %.fca.1.extract54.i.i646 = extractvalue { ptr, i32 } %i.aws, 1
  %i.awt = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0156.0.i, i32 %.sroa.9.0.i, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.04.0.i.i.i, ptr null) #39 ; 2 uses
  %i.awu = zext i16 %.sroa.04.0.i.i.i to i64
  %i.awv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.awu ; 2 uses
  %i.aww = getelementptr i8, ptr %i.awv, i64 -16
  %.sroa.0.0.copyload.i.i109.i = load i64, ptr %i.aww, align 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i647 = getelementptr i8, ptr %i.awv, i64 -8
  %.sroa.2.0.copyload.i.i.i648 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i647, align 8
  %i.awx = trunc nuw i8 %.sroa.2.0.copyload.i.i.i648 to i1
  br i1 %i.awx, label %bb.ku, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.ku:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i.i
  %i.awy = trunc i64 %.sroa.0.0.copyload.i.i109.i to i32 ; 2 uses
  %.sroa.speculated125.i.i = call i32 @llvm.umax.i32(i32 %i.awy, i32 128) ; 2 uses
  %i.awz = load i8, ptr %i.aqz, align 8, !tbaa !1133, !range !79, !noundef !80
  %i.axa = trunc nuw i8 %i.awz to i1
  br i1 %i.axa, label %bb.kv, label %_ZNK4llvm8TypeSizecvmEv.exit96.i.i

bb.kv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %i.axb = getelementptr inbounds nuw i8, ptr %3, i64 503
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !358, !range !79, !noundef !80
  %i.axd = trunc nuw i8 %i.axc to i1
  br i1 %i.axd, label %_ZNK4llvm8TypeSizecvmEv.exit96.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %.sroa.speculated.i.i868 = call i32 @llvm.umax.i32(i32 %i.awy, i32 512)
  br label %_ZNK4llvm8TypeSizecvmEv.exit96.i.i

_ZNK4llvm8TypeSizecvmEv.exit96.i.i:               ; preds = %bb.kw, %bb.kv, %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  %.0.i.i649 = phi i32 [ %.sroa.speculated125.i.i, %bb.kv ], [ %.sroa.speculated.i.i868, %bb.kw ], [ %.sroa.speculated125.i.i, %_ZNK4llvm8TypeSizecvmEv.exit.i.i ] ; 3 uses
  %.fca.1.extract44.i.i = extractvalue { ptr, i32 } %i.awt, 1
  %.fca.0.extract43.i.i = extractvalue { ptr, i32 } %i.awt, 0
  %i.axe = zext i32 %.0.i.i649 to i64             ; 2 uses
  %i.axf = udiv i64 %i.axe, %.sroa.0.0.copyload.i.i109.i ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #39
  %i.axg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.04.0.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract30.i.i = extractvalue { ptr, i32 } %i.axg, 0 ; 18 uses
  %.fca.1.extract31.i.i = extractvalue { ptr, i32 } %i.axg, 1 ; 18 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 8 uses
  store ptr %i.axh, ptr %40, align 8, !tbaa !83
  %i.axi = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  store i32 0, ptr %i.axi, align 8, !tbaa !633
  %i.axj = getelementptr inbounds nuw i8, ptr %40, i64 12
  store i32 16, ptr %i.axj, align 4, !tbaa !634
  %i.axk = icmp samesign ugt i64 %i.axf, 16
  br i1 %i.axk, label %.lr.ph.i.i.i.preheader.i.i.i.i.i862, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i650

.lr.ph.i.i.i.preheader.i.i.i.i.i862:              ; preds = %_ZNK4llvm8TypeSizecvmEv.exit96.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %40, ptr noundef nonnull %i.axh, i64 noundef %i.axf, i64 noundef 16) #39
  %i.axl = load ptr, ptr %40, align 8, !tbaa !83  ; 3 uses
  %xtraiter1363 = and i64 %i.axf, 7               ; 2 uses
  %lcmp.mod1364.not = icmp eq i64 %xtraiter1363, 0
  br i1 %lcmp.mod1364.not, label %.lr.ph.i.i.i.preheader.i.i.i.i.i862.new, label %.lr.ph.i.i.i.i.i.i.i.i863.prol

.lr.ph.i.i.i.i.i.i.i.i863.prol:                   ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i862, %.lr.ph.i.i.i.i.i.i.i.i863.prol
  %.09.i.i.i.i.i.i.i.i864.prol = phi ptr [ %i.axn, %.lr.ph.i.i.i.i.i.i.i.i863.prol ], [ %i.axl, %.lr.ph.i.i.i.preheader.i.i.i.i.i862 ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i865.prol = phi i64 [ %i.axm, %.lr.ph.i.i.i.i.i.i.i.i863.prol ], [ %i.axf, %.lr.ph.i.i.i.preheader.i.i.i.i.i862 ]
  %prol.iter1365 = phi i64 [ %prol.iter1365.next, %.lr.ph.i.i.i.i.i.i.i.i863.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i862 ]
  store ptr %.fca.0.extract30.i.i, ptr %.09.i.i.i.i.i.i.i.i864.prol, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864.prol, i64 8
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.prol, align 8, !tbaa !240
  %i.axm = add nsw i64 %.068.i.i.i.i.i.i.i.i865.prol, -1 ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864.prol, i64 16 ; 2 uses
  %prol.iter1365.next = add i64 %prol.iter1365, 1 ; 2 uses
  %prol.iter1365.cmp.not = icmp eq i64 %prol.iter1365.next, %xtraiter1363
  br i1 %prol.iter1365.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.i.i862.new, label %.lr.ph.i.i.i.i.i.i.i.i863.prol, !llvm.loop !3469

.lr.ph.i.i.i.preheader.i.i.i.i.i862.new:          ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i862, %.lr.ph.i.i.i.i.i.i.i.i863.prol
  %.09.i.i.i.i.i.i.i.i864.unr = phi ptr [ %i.axl, %.lr.ph.i.i.i.preheader.i.i.i.i.i862 ], [ %i.axn, %.lr.ph.i.i.i.i.i.i.i.i863.prol ]
  %.068.i.i.i.i.i.i.i.i865.unr = phi i64 [ %i.axf, %.lr.ph.i.i.i.preheader.i.i.i.i.i862 ], [ %i.axm, %.lr.ph.i.i.i.i.i.i.i.i863.prol ]
  br label %.lr.ph.i.i.i.i.i.i.i.i863

.lr.ph.i.i.i.i.i.i.i.i863:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i863, %.lr.ph.i.i.i.preheader.i.i.i.i.i862.new
  %.09.i.i.i.i.i.i.i.i864 = phi ptr [ %.09.i.i.i.i.i.i.i.i864.unr, %.lr.ph.i.i.i.preheader.i.i.i.i.i862.new ], [ %i.axw, %.lr.ph.i.i.i.i.i.i.i.i863 ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i865 = phi i64 [ %.068.i.i.i.i.i.i.i.i865.unr, %.lr.ph.i.i.i.preheader.i.i.i.i.i862.new ], [ %i.axv, %.lr.ph.i.i.i.i.i.i.i.i863 ]
  store ptr %.fca.0.extract30.i.i, ptr %.09.i.i.i.i.i.i.i.i864, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 8
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866, align 8, !tbaa !240
  %i.axo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 16
  store ptr %.fca.0.extract30.i.i, ptr %i.axo, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 24
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.1, align 8, !tbaa !240
  %i.axp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 32
  store ptr %.fca.0.extract30.i.i, ptr %i.axp, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 40
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.2, align 8, !tbaa !240
  %i.axq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 48
  store ptr %.fca.0.extract30.i.i, ptr %i.axq, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 56
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.3, align 8, !tbaa !240
  %i.axr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 64
  store ptr %.fca.0.extract30.i.i, ptr %i.axr, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 72
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.4, align 8, !tbaa !240
  %i.axs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 80
  store ptr %.fca.0.extract30.i.i, ptr %i.axs, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 88
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.5, align 8, !tbaa !240
  %i.axt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 96
  store ptr %.fca.0.extract30.i.i, ptr %i.axt, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 104
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.6, align 8, !tbaa !240
  %i.axu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 112
  store ptr %.fca.0.extract30.i.i, ptr %i.axu, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 120
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i866.7, align 8, !tbaa !240
  %i.axv = add nsw i64 %.068.i.i.i.i.i.i.i.i865, -8 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i864, i64 128
  %.not.i.i.i.i.i.i.i.i867.7 = icmp eq i64 %i.axv, 0
  br i1 %.not.i.i.i.i.i.i.i.i867.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656, label %.lr.ph.i.i.i.i.i.i.i.i863, !llvm.loop !5

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i650: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit96.i.i
  %.not.i100.i.i = icmp ugt i64 %.sroa.0.0.copyload.i.i109.i, %i.axe
  br i1 %.not.i100.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656, label %.lr.ph.i.i.i.i.i.i.i651.preheader

.lr.ph.i.i.i.i.i.i.i651.preheader:                ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i650
  %i.axx = add nsw i64 %i.axf, -1
  %xtraiter1360 = and i64 %i.axf, 7               ; 2 uses
  %lcmp.mod1361.not = icmp eq i64 %xtraiter1360, 0
  br i1 %lcmp.mod1361.not, label %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i651.prol

.lr.ph.i.i.i.i.i.i.i651.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i651.preheader, %.lr.ph.i.i.i.i.i.i.i651.prol
  %.09.i.i.i.i.i.i.i652.prol = phi ptr [ %i.axz, %.lr.ph.i.i.i.i.i.i.i651.prol ], [ %i.axh, %.lr.ph.i.i.i.i.i.i.i651.preheader ] ; 3 uses
  %.068.i.i.i.i.i.i.i653.prol = phi i64 [ %i.axy, %.lr.ph.i.i.i.i.i.i.i651.prol ], [ %i.axf, %.lr.ph.i.i.i.i.i.i.i651.preheader ]
  %prol.iter1362 = phi i64 [ %prol.iter1362.next, %.lr.ph.i.i.i.i.i.i.i651.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i651.preheader ]
  store ptr %.fca.0.extract30.i.i, ptr %.09.i.i.i.i.i.i.i652.prol, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652.prol, i64 8
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.prol, align 8, !tbaa !240
  %i.axy = add nsw i64 %.068.i.i.i.i.i.i.i653.prol, -1 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652.prol, i64 16 ; 2 uses
  %prol.iter1362.next = add i64 %prol.iter1362, 1 ; 2 uses
  %prol.iter1362.cmp.not = icmp eq i64 %prol.iter1362.next, %xtraiter1360
  br i1 %prol.iter1362.cmp.not, label %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i651.prol, !llvm.loop !3470

.lr.ph.i.i.i.i.i.i.i651.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i651.prol, %.lr.ph.i.i.i.i.i.i.i651.preheader
  %.09.i.i.i.i.i.i.i652.unr = phi ptr [ %i.axh, %.lr.ph.i.i.i.i.i.i.i651.preheader ], [ %i.axz, %.lr.ph.i.i.i.i.i.i.i651.prol ]
  %.068.i.i.i.i.i.i.i653.unr = phi i64 [ %i.axf, %.lr.ph.i.i.i.i.i.i.i651.preheader ], [ %i.axy, %.lr.ph.i.i.i.i.i.i.i651.prol ]
  %i.aya = icmp ult i64 %i.axx, 7
  br i1 %i.aya, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656, label %.lr.ph.i.i.i.i.i.i.i651

.lr.ph.i.i.i.i.i.i.i651:                          ; preds = %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i651
  %.09.i.i.i.i.i.i.i652 = phi ptr [ %i.ayj, %.lr.ph.i.i.i.i.i.i.i651 ], [ %.09.i.i.i.i.i.i.i652.unr, %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i653 = phi i64 [ %i.ayi, %.lr.ph.i.i.i.i.i.i.i651 ], [ %.068.i.i.i.i.i.i.i653.unr, %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit ]
  store ptr %.fca.0.extract30.i.i, ptr %.09.i.i.i.i.i.i.i652, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 8
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654, align 8, !tbaa !240
  %i.ayb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 16
  store ptr %.fca.0.extract30.i.i, ptr %i.ayb, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 24
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.1, align 8, !tbaa !240
  %i.ayc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 32
  store ptr %.fca.0.extract30.i.i, ptr %i.ayc, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 40
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.2, align 8, !tbaa !240
  %i.ayd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 48
  store ptr %.fca.0.extract30.i.i, ptr %i.ayd, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 56
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.3, align 8, !tbaa !240
  %i.aye = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 64
  store ptr %.fca.0.extract30.i.i, ptr %i.aye, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 72
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.4, align 8, !tbaa !240
  %i.ayf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 80
  store ptr %.fca.0.extract30.i.i, ptr %i.ayf, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 88
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.5, align 8, !tbaa !240
  %i.ayg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 96
  store ptr %.fca.0.extract30.i.i, ptr %i.ayg, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 104
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.6, align 8, !tbaa !240
  %i.ayh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 112
  store ptr %.fca.0.extract30.i.i, ptr %i.ayh, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 120
  store i32 %.fca.1.extract31.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i654.7, align 8, !tbaa !240
  %i.ayi = add nsw i64 %.068.i.i.i.i.i.i.i653, -8 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i652, i64 128
  %.not.i.i.i.i.i.i.i655.7 = icmp eq i64 %i.ayi, 0
  br i1 %.not.i.i.i.i.i.i.i655.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656, label %.lr.ph.i.i.i.i.i.i.i651, !llvm.loop !5

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656: ; preds = %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i651, %.lr.ph.i.i.i.i.i.i.i.i863, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i650
  %i.ayk = phi ptr [ %i.axl, %.lr.ph.i.i.i.i.i.i.i.i863 ], [ %i.axh, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i650 ], [ %i.axh, %.lr.ph.i.i.i.i.i.i.i651 ], [ %i.axh, %.lr.ph.i.i.i.i.i.i.i651.prol.loopexit ] ; 3 uses
  %storemerge.i.i.i657 = trunc nuw i64 %i.axf to i32
  store i32 %storemerge.i.i.i657, ptr %i.axi, align 8, !tbaa !633
  store ptr %.fca.0.extract53.i.i645, ptr %i.ayk, align 8, !tbaa !465
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ayk, i64 8
  store i32 %.fca.1.extract54.i.i646, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.ayl = lshr i32 %.0.i.i649, 3                 ; 2 uses
  %i.aym = call range(i32 0, 30) i32 @llvm.ctpop.i32(i32 %i.ayl)
  %i.ayn = icmp eq i32 %i.aym, 1
  br i1 %i.ayn, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i857, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i857: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656
  %i.ayo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ayl, i1 true)
  %switch.tableidx.i.i858 = add nsw i32 %i.ayo, -4 ; 2 uses
  %i.ayp = icmp ult i32 %switch.tableidx.i.i858, 7
  br i1 %i.ayp, label %switch.lookup.i.i859, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658

switch.lookup.i.i859:                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i857
  %switch.idx.cast.i.i860 = trunc nuw nsw i32 %switch.tableidx.i.i858 to i16
  %switch.offset.i.i861 = or disjoint i16 %switch.idx.cast.i.i860, 48
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658

_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658:       ; preds = %switch.lookup.i.i859, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i857, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656
  %.sroa.0.0.i.i.i = phi i16 [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.split.i.i857 ], [ %switch.offset.i.i861, %switch.lookup.i.i859 ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.i.i656 ] ; 2 uses
  store ptr %i.ayk, ptr %41, align 8, !tbaa !688
  %i.ayq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ayr = load i32, ptr %i.axi, align 8, !tbaa !633
  %i.ays = zext i32 %i.ayr to i64
  store i64 %i.ays, ptr %i.ayq, align 8, !tbaa !689
  %i.ayt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.0.0.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %41) #39 ; 2 uses
  %.fca.0.extract20.i.i = extractvalue { ptr, i32 } %i.ayt, 0 ; 3 uses
  %.fca.1.extract21.i.i = extractvalue { ptr, i32 } %i.ayt, 1 ; 3 uses
  %i.ayu = load ptr, ptr %40, align 8, !tbaa !83  ; 3 uses
  store ptr %.fca.0.extract43.i.i, ptr %i.ayu, align 8, !tbaa !465
  %.sroa.485.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  store i32 %.fca.1.extract44.i.i, ptr %.sroa.485.0..sroa_idx.i.i, align 8, !tbaa !240
  store ptr %i.ayu, ptr %42, align 8, !tbaa !688
  %i.ayv = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ayw = load i32, ptr %i.axi, align 8, !tbaa !633
  %i.ayx = zext i32 %i.ayw to i64
  store i64 %i.ayx, ptr %i.ayv, align 8, !tbaa !689
  %i.ayy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.0.0.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %42) #39 ; 2 uses
  %.fca.0.extract12.i.i = extractvalue { ptr, i32 } %i.ayy, 0 ; 3 uses
  %.fca.1.extract13.i.i = extractvalue { ptr, i32 } %i.ayy, 1 ; 3 uses
  %i.ayz = lshr i32 %.0.i.i649, 5                 ; 3 uses
  switch i32 %i.ayz, label %148 [
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659
    i32 5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i856
    i32 6, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split151.i.i
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split152.i.i
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split153.i.i
    i32 9, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split154.i.i
    i32 10, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split155.i.i
    i32 11, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split156.i.i
    i32 12, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split157.i.i
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split158.i.i
    i32 24, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split159.i.i
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split160.i.i
    i32 48, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split161.i.i
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split162.i.i
  ]

148:                                              ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  %149 = call range(i32 0, 28) i32 @llvm.ctpop.i32(i32 %i.ayz)
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %.split.i113.i, label %152

.split.i113.i:                                    ; preds = %148
  %151 = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ayz, i1 true)
  switch i32 %151, label %152 [
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split163.i.i
    i32 9, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split164.i.i
    i32 10, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split165.i.i
    i32 11, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split166.i.i
    i32 12, label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split167.i.i
  ]

152:                                              ; preds = %.split.i113.i, %148
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i856: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split151.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split152.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split153.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split154.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split155.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split156.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split157.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split158.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split159.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split160.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split161.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split162.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split163.i.i: ; preds = %.split.i113.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split164.i.i: ; preds = %.split.i113.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split165.i.i: ; preds = %.split.i113.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split166.i.i: ; preds = %.split.i113.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split167.i.i: ; preds = %.split.i113.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659

_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659:    ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split167.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split166.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split165.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split164.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split163.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split162.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split161.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split160.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split159.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split158.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split157.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split156.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split155.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split154.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split153.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split152.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split151.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i856, %152, %.split.i113.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658
  %.not.i112.i.i.i660 = phi i1 [ true, %152 ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split162.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split163.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split164.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split165.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split166.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split160.i.i ], [ false, %.split.i113.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split161.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658 ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split159.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i856 ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split151.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split152.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split153.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split154.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split155.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split156.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split157.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split158.i.i ], [ false, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split167.i.i ] ; 6 uses
  %.sroa.0.0.i101.i.i661 = phi i16 [ 0, %152 ], [ 86, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split162.i.i ], [ 88, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split163.i.i ], [ 89, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split164.i.i ], [ 90, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split165.i.i ], [ 91, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split166.i.i ], [ 84, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split160.i.i ], [ 87, %.split.i113.i ], [ 85, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split161.i.i ], [ 73, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i658 ], [ 83, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split159.i.i ], [ 74, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split.i.i856 ], [ 75, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split151.i.i ], [ 76, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split152.i.i ], [ 77, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split153.i.i ], [ 78, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split154.i.i ], [ 79, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split155.i.i ], [ 80, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split156.i.i ], [ 81, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split157.i.i ], [ 82, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split158.i.i ], [ 92, %_ZN4llvm3MVT11getVectorVTES0_j.exit102.fold.split167.i.i ] ; 9 uses
  %i.aza = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %51, i16 %.sroa.0.0.i101.i.i661, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.aza, 0 ; 4 uses
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.aza, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #39
  store ptr %.fca.0.extract4.i.i, ptr %43, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract5.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.azb = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %.fca.0.extract20.i.i, ptr %i.azb, align 8, !tbaa !465
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store i32 %.fca.1.extract21.i.i, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.azc = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %.fca.0.extract12.i.i, ptr %i.azc, align 8, !tbaa !465
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %43, i64 40
  store i32 %.fca.1.extract13.i.i, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.azd = load i8, ptr %i.aqz, align 8, !tbaa !1133, !range !79, !noundef !80
  %i.aze = trunc nuw i8 %i.azd to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store i16 %.sroa.0.0.i101.i.i661, ptr %34, align 8
  %i.azf = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %i.azf, align 8
  %i.azg = load i32, ptr %i.act, align 8          ; 2 uses
  %i.azh = icmp sgt i32 %i.azg, 8
  %or.cond.i.i.i662 = select i1 %i.aze, i1 %i.azh, i1 false
  br i1 %or.cond.i.i.i662, label %bb.kx, label %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.i.i.i

bb.kx:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659
  %i.azi = getelementptr inbounds nuw i8, ptr %3, i64 503
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !358, !range !79, !noundef !80
  %i.azk = trunc nuw i8 %i.azj to i1
  %i.azl = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.azm = load i32, ptr %i.azl, align 8
  %i.azn = icmp ugt i32 %i.azm, 511
  %not..i.i.i837 = xor i1 %i.azk, true
  %or.cond.not.i.i.i.i = select i1 %not..i.i.i837, i1 true, i1 %i.azn
  %i.azo = getelementptr inbounds nuw i8, ptr %3, i64 732
  %i.azp = load i32, ptr %i.azo, align 4
  %i.azq = icmp ugt i32 %i.azp, 256
  %or.cond27.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %i.azq
  br i1 %or.cond27.i.i.i, label %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread.i.i.i, label %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.thread.i.i.i

_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread.i.i.i: ; preds = %bb.kx
  br i1 %.not.i112.i.i.i660, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread.i.i.i
  %i.azr = zext nneg i16 %.sroa.0.0.i101.i.i661 to i64
  %i.azs = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.azr ; 2 uses
  %i.azt = getelementptr i8, ptr %i.azs, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i838 = load i64, ptr %i.azt, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i839 = getelementptr i8, ptr %i.azs, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i840 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i839, align 8
  %.fca.0.insert.i.i.i.i.i841 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i.i838, 0
  %.fca.1.insert.i.i.i.i.i842 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i.i841, i8 %.sroa.2.0.copyload.i.i.i.i.i840, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i843

bb.kz:                                            ; preds = %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread.i.i.i
  %i.azu = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i843

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i843:     ; preds = %bb.kz, %bb.ky
  %.pn.i.i.i.i844 = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i.i842, %bb.ky ], [ %i.azu, %bb.kz ] ; 2 uses
  %.fca.1.extract58.i.i.i845 = extractvalue { i64, i8 } %.pn.i.i.i.i844, 1
  %i.azv = trunc nuw i8 %.fca.1.extract58.i.i.i845 to i1
  br i1 %i.azv, label %bb.la, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i846

bb.la:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i843
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i.i846:            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i843
  %.fca.0.extract57.i.i.i847 = extractvalue { i64, i8 } %.pn.i.i.i.i844, 0
  %i.azw = icmp ugt i64 %.fca.0.extract57.i.i.i847, 512
  br i1 %i.azw, label %bb.lb, label %.thread.i.i.i673

bb.lb:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i846
  br i1 %.not.i112.i.i.i660, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.azx = zext nneg i16 %.sroa.0.0.i101.i.i661 to i64
  %i.azy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.azx ; 2 uses
  %i.azz = getelementptr i8, ptr %i.azy, i64 -16
  %.sroa.0.0.copyload.i.i86.i.i.i848 = load i64, ptr %i.azz, align 16
  %.sroa.2.0..sroa_idx.i.i87.i.i.i849 = getelementptr i8, ptr %i.azy, i64 -8
  %.sroa.2.0.copyload.i.i88.i.i.i850 = load i8, ptr %.sroa.2.0..sroa_idx.i.i87.i.i.i849, align 8
  %.fca.0.insert.i.i89.i.i.i851 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i86.i.i.i848, 0
  %.fca.1.insert.i.i90.i.i.i852 = insertvalue { i64, i8 } %.fca.0.insert.i.i89.i.i.i851, i8 %.sroa.2.0.copyload.i.i88.i.i.i850, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i853

bb.ld:                                            ; preds = %bb.lb
  %i.baa = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i853

_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i853:   ; preds = %bb.ld, %bb.lc
  %.pn.i91.i.i.i854 = phi { i64, i8 } [ %.fca.1.insert.i.i90.i.i.i852, %bb.lc ], [ %i.baa, %bb.ld ] ; 2 uses
  %.fca.1.extract54.i.i.i855 = extractvalue { i64, i8 } %.pn.i91.i.i.i854, 1
  %i.bab = trunc nuw i8 %.fca.1.extract54.i.i.i855 to i1
  br i1 %i.bab, label %bb.le, label %_ZNK4llvm8TypeSizecvmEv.exit93.i.i.i743

bb.le:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit92.i.i.i853
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.i.i.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit102.i.i659
  %i.bac = icmp sgt i32 %i.azg, 7
  br i1 %i.bac, label %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.thread.i.i.i, label %bb.lm

_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.thread.i.i.i: ; preds = %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.i.i.i, %bb.kx
  br i1 %.not.i112.i.i.i660, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.thread.i.i.i
  %i.bad = zext nneg i16 %.sroa.0.0.i101.i.i661 to i64
  %i.bae = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bad ; 2 uses
  %i.baf = getelementptr i8, ptr %i.bae, i64 -16
  %.sroa.0.0.copyload.i.i95.i.i.i819 = load i64, ptr %i.baf, align 16
  %.sroa.2.0..sroa_idx.i.i96.i.i.i820 = getelementptr i8, ptr %i.bae, i64 -8
  %.sroa.2.0.copyload.i.i97.i.i.i821 = load i8, ptr %.sroa.2.0..sroa_idx.i.i96.i.i.i820, align 8
  %.fca.0.insert.i.i98.i.i.i822 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i95.i.i.i819, 0
  %.fca.1.insert.i.i99.i.i.i823 = insertvalue { i64, i8 } %.fca.0.insert.i.i98.i.i.i822, i8 %.sroa.2.0.copyload.i.i97.i.i.i821, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i824

bb.lg:                                            ; preds = %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.thread.i.i.i
  %i.bag = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i824

_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i824:  ; preds = %bb.lg, %bb.lf
  %.pn.i100.i.i.i825 = phi { i64, i8 } [ %.fca.1.insert.i.i99.i.i.i823, %bb.lf ], [ %i.bag, %bb.lg ] ; 2 uses
  %.fca.1.extract50.i.i.i826 = extractvalue { i64, i8 } %.pn.i100.i.i.i825, 1
  %i.bah = trunc nuw i8 %.fca.1.extract50.i.i.i826 to i1
  br i1 %i.bah, label %bb.lh, label %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i827

bb.lh:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i824
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i827:         ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit101.i.i.i824
  %.fca.0.extract49.i.i.i828 = extractvalue { i64, i8 } %.pn.i100.i.i.i825, 0
  %i.bai = icmp ugt i64 %.fca.0.extract49.i.i.i828, 256
  br i1 %i.bai, label %bb.li, label %.thread.i.i.i673

bb.li:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i827
  br i1 %.not.i112.i.i.i660, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.baj = zext nneg i16 %.sroa.0.0.i101.i.i661 to i64
  %i.bak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.baj ; 2 uses
  %i.bal = getelementptr i8, ptr %i.bak, i64 -16
  %.sroa.0.0.copyload.i.i104.i.i.i829 = load i64, ptr %i.bal, align 16
  %.sroa.2.0..sroa_idx.i.i105.i.i.i830 = getelementptr i8, ptr %i.bak, i64 -8
  %.sroa.2.0.copyload.i.i106.i.i.i831 = load i8, ptr %.sroa.2.0..sroa_idx.i.i105.i.i.i830, align 8
  %.fca.0.insert.i.i107.i.i.i832 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i104.i.i.i829, 0
  %.fca.1.insert.i.i108.i.i.i833 = insertvalue { i64, i8 } %.fca.0.insert.i.i107.i.i.i832, i8 %.sroa.2.0.copyload.i.i106.i.i.i831, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i834

bb.lk:                                            ; preds = %bb.li
  %i.bam = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i834

_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i834:  ; preds = %bb.lk, %bb.lj
  %.pn.i109.i.i.i835 = phi { i64, i8 } [ %.fca.1.insert.i.i108.i.i.i833, %bb.lj ], [ %i.bam, %bb.lk ] ; 2 uses
  %.fca.1.extract46.i.i.i836 = extractvalue { i64, i8 } %.pn.i109.i.i.i835, 1
  %i.ban = trunc nuw i8 %.fca.1.extract46.i.i.i836 to i1
  br i1 %i.ban, label %bb.ll, label %_ZNK4llvm8TypeSizecvmEv.exit93.i.i.i743

bb.ll:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit110.i.i.i834
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

bb.lm:                                            ; preds = %_ZNK4llvm12X86Subtarget13useAVX512RegsEv.exit.thread21.i.i.i
  br i1 %.not.i112.i.i.i660, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bao = zext nneg i16 %.sroa.0.0.i101.i.i661 to i64
  %i.bap = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bao ; 2 uses
  %i.baq = getelementptr i8, ptr %i.bap, i64 -16
  %.sroa.0.0.copyload.i.i113.i.i.i663 = load i64, ptr %i.baq, align 16
  %.sroa.2.0..sroa_idx.i.i114.i.i.i664 = getelementptr i8, ptr %i.bap, i64 -8
  %.sroa.2.0.copyload.i.i115.i.i.i665 = load i8, ptr %.sroa.2.0..sroa_idx.i.i114.i.i.i664, align 8
  %.fca.0.insert.i.i116.i.i.i666 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i113.i.i.i663, 0
  %.fca.1.insert.i.i117.i.i.i667 = insertvalue { i64, i8 } %.fca.0.insert.i.i116.i.i.i666, i8 %.sroa.2.0.copyload.i.i115.i.i.i665, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i668

bb.lo:                                            ; preds = %bb.lm
  %i.bar = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #40
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i668

_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i668:  ; preds = %bb.lo, %bb.ln
  %.pn.i118.i.i.i669 = phi { i64, i8 } [ %.fca.1.insert.i.i117.i.i.i667, %bb.ln ], [ %i.bar, %bb.lo ] ; 2 uses
  %.fca.1.extract42.i.i.i670 = extractvalue { i64, i8 } %.pn.i118.i.i.i669, 1
  %i.bas = trunc nuw i8 %.fca.1.extract42.i.i.i670 to i1
  br i1 %i.bas, label %bb.lp, label %_ZNK4llvm8TypeSizecvmEv.exit120.i.i.i671

bb.lp:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i668
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit120.i.i.i671:         ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit119.i.i.i668
  %.fca.0.extract41.i.i.i672 = extractvalue { i64, i8 } %.pn.i118.i.i.i669, 0
  %i.bat = icmp ugt i64 %.fca.0.extract41.i.i.i672, 128
  br i1 %i.bat, label %bb.lq, label %.thread.i.i.i673
end_hunk_1
