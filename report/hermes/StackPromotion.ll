inline.NumInlined: 1848
inline.NumDeleted: 843
begin_hunk_0_@_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE4growEj:_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter14 = phi i64 [ %prol.iter14.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.prol, align 8
  %.sroa.4.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.prol, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter14.next = add i64 %prol.iter14, 1     ; 2 uses
  %prol.iter14.cmp.not = icmp eq i64 %prol.iter14.next, %xtraiter12
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE4growEj:_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  br i1 %i.ae, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8
  %2 = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.1, align 8
  %3 = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %5, align 8
  %.sroa.4.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.06.i, i64 88
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.5, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.06.i, i64 104
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.06.i, i64 120
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ai, %i.z
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !357
end_hunk_1
begin_hunk_2_@_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE4growEj:_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i.prol, align 8
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_2
begin_hunk_3_@_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE4growEj:_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  br i1 %i.au, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %6 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.1, align 8
  %7 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %7, align 8
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.2, align 8
  %8 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %8, align 8
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %9, align 8
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.4, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.av, align 8
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 88
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aw, align 8
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 104
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.6, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.7, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !357
end_hunk_3
