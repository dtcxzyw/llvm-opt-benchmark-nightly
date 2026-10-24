Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PGOInstrumentation?download=true
inline.NumInlined: 8424
inline.NumDeleted: 4072
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZL17fixFuncEntryCountRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoE:bb.a
  %i.dq = lshr i64 %i.dp, 31
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i32 %i.dn, %i.ds                    ; 3 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = lshr i64 %i.du, 5
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !385, !noalias !1760
  %i.dy = and i32 %i.dt, 31
  %i.dz = lshr i32 %i.dx, %i.dy
  %i.ea = trunc i32 %i.dz to i1
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i42, label %.loopexit.i.i.i.i.i40, !prof !405

.lr.ph.i.i.i.i.i.i42:                             ; preds = %bb.w, %bb.x
  %i.eb = phi i64 [ %i.eh, %bb.x ], [ %i.du, %bb.w ] ; 2 uses
  %.03.i.i.i.i.i.i43 = phi i32 [ %i.eg, %bb.x ], [ %i.dt, %bb.w ]
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !365, !noalias !1760
  %i.ee = icmp eq ptr %i.df, %i.ed
  br i1 %i.ee, label %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit44, label %bb.x, !prof !376

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i42
  %i.ef = add nuw i32 %.03.i.i.i.i.i.i43, 1
  %i.eg = and i32 %i.ef, %i.dn                    ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = lshr i64 %i.eh, 5
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !385, !noalias !1760
  %i.el = and i32 %i.eg, 31
  %i.em = lshr i32 %i.ek, %i.el
  %i.en = trunc i32 %i.em to i1
  br i1 %i.en, label %.lr.ph.i.i.i.i.i.i42, label %.loopexit.i.i.i.i.i40, !prof !406

.loopexit.i.i.i.i.i40:                            ; preds = %bb.x, %bb.w, %bb.v
  %i.eo = zext i32 %i.dl to i64
  br label %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit44

_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit44: ; preds = %.lr.ph.i.i.i.i.i.i42, %.loopexit.i.i.i.i.i40
  %i.ep = phi i64 [ %i.eo, %.loopexit.i.i.i.i.i40 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i42 ]
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.val2.i.i.i41 = load ptr, ptr %i.er, align 8, !tbaa !408
  %i.es = getelementptr inbounds nuw i8, ptr %.val2.i.i.i41, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !201 ; 2 uses
  %i.eu = uitofp i64 %i.et to double
  %i.ev = call double @llvm.fmuladd.f64(double %i.eu, double %i.db, double 5.000000e-01)
  %i.ew = fptoui double %i.ev to i64
  %spec.store.select2 = call i64 @llvm.umax.i64(i64 %i.ew, i64 1) ; 2 uses
  %.not = icmp eq i64 %spec.store.select2, %i.et
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit44
  call void @_ZN4llvm8Function13setEntryCountEmPKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(140) %.val, i64 noundef %spec.store.select2, ptr noundef null) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm7APFloatdvERKS0_.exit, %bb.y, %_ZNK12_GLOBAL__N_110PGOUseFunc9getBBInfoEPKN4llvm10BasicBlockE.exit44, %_ZNK4llvm7APFloat7compareERKS0_.exit, %._crit_edge
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

declare noundef i64 @_ZNK4llvm18ProfileSummaryInfo26getOrCompHotCountThresholdEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm18ProfileSummaryInfo27getOrCompColdCountThresholdEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 9 uses
  %6 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %7 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %8 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %9 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %10 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %11 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 15 uses
  %12 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %13 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %14 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %15 = alloca %"struct.llvm::DiagnosticInfoOptimizationBase::Argument", align 8 ; 8 uses
  %16 = alloca %"class.llvm::OptimizationRemarkAnalysis", align 8 ; 13 uses
  %17 = alloca %"class.llvm::BlockFrequencyInfo", align 8 ; 5 uses
  %18 = alloca %"class.llvm::OptimizationRemarkEmitter", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !438   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @_ZN4llvm18BlockFrequencyInfoC1ERKNS_8FunctionERKNS_21BranchProbabilityInfoERKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(140) %.val, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(184) %1) #25
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15PGOVerifyHotBFIE, i64 120), align 8, !tbaa !193, !range !61, !noundef !62
  %i.b = trunc nuw i8 %i.a to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @_ZN4llvm25OptimizationRemarkEmitterC1EPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull %.val) #25
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %.sroa.083.0120 = load ptr, ptr %i.c, align 8, !tbaa !224 ; 2 uses
  %.not121 = icmp eq ptr %.sroa.083.0120, %i.d
  br i1 %.not121, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_1EEvT_PDTclfL0p_EE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit"
  %.not39 = icmp eq i32 %.2, 0
  br i1 %.not39, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_1EEvT_PDTclfL0p_EE.exit", label %bb.l

bb.b:                                             ; preds = %.lr.ph, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit"
  %.sroa.083.0127 = phi ptr [ %.sroa.083.0120, %.lr.ph ], [ %.sroa.083.0, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit" ] ; 2 uses
  %.sroa.6.0126 = phi i64 [ 0, %.lr.ph ], [ %.sroa.6.3, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit" ] ; 6 uses
  %.sroa.0.0125 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.3, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit" ] ; 6 uses
  %.0110124 = phi i32 [ 0, %.lr.ph ], [ %.2, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit" ] ; 6 uses
  %.0111123 = phi i32 [ 0, %.lr.ph ], [ %.2113, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit" ] ; 3 uses
  %.0114122 = phi i32 [ 0, %.lr.ph ], [ %.1115, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit" ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.083.0127, i64 -24 ; 5 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !402, !noalias !1775 ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !403, !noalias !1775 ; 2 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !404, !noalias !1775 ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = add i32 %i.w, -1                         ; 2 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.y, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !385, !noalias !1776
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !405

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %i.am = phi i64 [ %i.as, %bb.d ], [ %i.af, %bb.c ]
  %.03.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.d ], [ %i.ae, %bb.c ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !365, !noalias !1776
  %i.ap = icmp eq ptr %i.t, %i.ao
  br i1 %i.ap, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.loopexit.i.i.i, label %bb.d, !prof !376

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = add nuw i32 %.03.i.i.i.i.i.i, 1
  %i.ar = and i32 %i.aq, %i.y                     ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !385, !noalias !1776
  %i.aw = and i32 %i.ar, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !406

.loopexit.i.i.i.i.i:                              ; preds = %bb.d, %bb.c, %bb.b
  %i.az = zext i32 %i.w to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.az
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = zext i32 %i.w to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.loopexit.i.i.i, %.loopexit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.loopexit.i.i.i ], [ %i.az, %.loopexit.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi ptr [ %i.an, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.loopexit.i.i.i ], [ %i.ba, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.pre-phi.i.i.i
  %i.bc = icmp eq ptr %.lcssa.sink.i.i.i.i.i, %i.bb
  br i1 %i.bc, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit", label %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit

_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 8
  %.val5.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !408 ; 3 uses
  %.not40 = icmp eq ptr %.val5.i.i.i, null
  br i1 %.not40, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !541, !range !61, !noundef !62
  %i.bh = trunc nuw i8 %i.bg to i1
  %.val.i = load i64, ptr %i.be, align 8
  %.0.i = select i1 %i.bh, i64 %.val.i, i64 undef ; 9 uses
  %i.bi = add i32 %.0114122, 1                    ; 5 uses
  %.not41 = icmp ne i64 %.0.i, 0
  %i.bj = zext i1 %.not41 to i32
  %spec.select = add i32 %.0111123, %i.bj         ; 5 uses
  %i.bk = call { i64, i8 } @_ZNK4llvm18BlockFrequencyInfo20getBlockProfileCountEPKNS_10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %i.t, i1 noundef zeroext false) #25 ; 2 uses
  %i.bl = extractvalue { i64, i8 } %i.bk, 0
  %i.bm = extractvalue { i64, i8 } %i.bk, 1
  %i.bn = trunc nuw i8 %i.bm to i1
  %.0 = select i1 %i.bn, i64 %i.bl, i64 0         ; 6 uses
  br i1 %i.b, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not44 = icmp ult i64 %.0.i, %3
  %i.bo = icmp uge i64 %.0, %3                    ; 2 uses
  %or.cond = select i1 %.not44, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bp = icmp ule i64 %.0.i, %4
  %or.cond5 = select i1 %i.bp, i1 %i.bo, i1 false
  br i1 %or.cond5, label %.critedge, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit"

bb.h:                                             ; preds = %bb.e
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 120), align 8, !tbaa !234
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = icmp ult i64 %.0.i, %i.br
  %i.bt = icmp ult i64 %.0, %i.br
  %or.cond118 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond118, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not42 = icmp ult i64 %.0, %.0.i
  %i.bu = sub nuw i64 %.0, %.0.i
  %19 = sub nuw i64 %.0.i, %.0
  %20 = select i1 %.not42, i64 %19, i64 %i.bu
  %i.bv = udiv i64 %.0.i, 100
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 120), align 8, !tbaa !234
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul i64 %i.bv, %i.bx
  %.not43 = icmp ugt i64 %20, %i.by
  br i1 %.not43, label %.critedge, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit"

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.i
  %.sroa.0.1 = phi ptr [ @.str.221, %bb.f ], [ %.sroa.0.0125, %bb.i ], [ @.str.222, %bb.g ] ; 3 uses
  %.sroa.6.1 = phi i64 [ 21, %bb.f ], [ %.sroa.6.0126, %bb.i ], [ 19, %bb.g ] ; 4 uses
  %i.bz = add i32 %.0110124, 1                    ; 2 uses
  %i.ca = load ptr, ptr %18, align 8, !tbaa !574
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ca) #25
  %i.cc = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #25
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i: ; preds = %.critedge
  %i.cd = load ptr, ptr %18, align 8, !tbaa !574
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.cd) #25
  %i.cf = call noundef ptr @_ZNK4llvm11LLVMContext17getDiagHandlerPtrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #25 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %i.cf) #25, !inline_history !1769
  br i1 %i.cj, label %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit"

_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1777
  %i.ck = call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %.val) #25, !noalias !1777
  call void @_ZN4llvm18DiagnosticLocationC1EPKNS_12DISubprogramE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.ck) #25, !noalias !1777
  call void @_ZN4llvm26OptimizationRemarkAnalysisC1EPKcNS_9StringRefERKNS_18DiagnosticLocationEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(432) %16, ptr noundef nonnull @.str.223, ptr nonnull @.str.224, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %i.t) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1777
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %16, ptr nonnull @.str.225, i64 3) #25
  %i.cl = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #25 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr nonnull @.str.226, i64 5, ptr %i.cm, i64 %i.cn) #25
  %i.co = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsIRNS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %16, ptr nofree noundef nonnull align 8 dereferenceable(80) %13) ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.co, ptr nonnull @.str.227, i64 7) #25
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEm(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr nonnull @.str.228, i64 5, i64 noundef %.0.i) #25
  %i.cp = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsIRNS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %i.co, ptr nofree noundef nonnull align 8 dereferenceable(80) %14) ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.cp, ptr nonnull @.str.229, i64 11) #25
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEm(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr nonnull @.str.228, i64 5, i64 noundef %.0) #25
  %i.cq = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsIRNS_26OptimizationRemarkAnalysisEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %i.cp, ptr nofree noundef nonnull align 8 dereferenceable(80) %15) ; 0 uses
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !55, !noalias !1777 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.i
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i
  %i.ct = load i64, ptr %i.i, align 8, !tbaa !56, !noalias !1777
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.cv = load ptr, ptr %15, align 8, !tbaa !55, !noalias !1777 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.j
  br i1 %i.cw, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !56, !noalias !1777
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #26
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !55, !noalias !1777 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.l
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i
  %i.db = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !1777
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.dd = load ptr, ptr %14, align 8, !tbaa !55, !noalias !1777 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.m
  br i1 %i.de, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i.i
  %i.df = load i64, ptr %i.m, align 8, !tbaa !56, !noalias !1777
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #26
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit9.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i6.i.i
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !55, !noalias !1777 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.o
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit9.i.i
  %i.dj = load i64, ptr %i.o, align 8, !tbaa !56, !noalias !1777
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i.i
  %i.dl = load ptr, ptr %13, align 8, !tbaa !55, !noalias !1777 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.p
  br i1 %i.dm, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit15.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i12.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11.i.i
  %i.dn = load i64, ptr %i.p, align 8, !tbaa !56, !noalias !1777
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #26
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit15.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i12.i.i
  %i.dp = icmp eq i64 %.sroa.6.1, 0
  br i1 %i.dp, label %"_ZZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmmENK3$_0clEv.exit.i", label %bb.j

bb.j:                                             ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit15.i.i
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %16, ptr nonnull @.str.230, i64 2) #25
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %16, ptr %.sroa.0.1, i64 %.sroa.6.1) #25
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %16, ptr nonnull @.str.103, i64 1) #25
  br label %"_ZZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmmENK3$_0clEv.exit.i"

"_ZZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmmENK3$_0clEv.exit.i": ; preds = %bb.j, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(424) %16) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %16, align 8, !tbaa !47
  %i.dq = load ptr, ptr %i.q, align 8, !tbaa !65  ; 3 uses
  %i.dr = load i32, ptr %i.r, align 8, !tbaa !359 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %"_ZZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmmENK3$_0clEv.exit.i"
  %i.ds = zext i32 %i.dr to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.ds, 80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.du, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i ], [ %i.dt, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.du = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -80 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !55 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !56
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !55 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !56
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #26
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.dq, %i.du
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i
  %.pre.i.i.i45 = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %"_ZZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmmENK3$_0clEv.exit.i"
  %i.eg = phi ptr [ %.pre.i.i.i45, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.dq, %"_ZZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERN4llvm8LoopInfoERNS2_21BranchProbabilityInfoEmmENK3$_0clEv.exit.i" ] ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.s
  br i1 %i.eh, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.eg) #25
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i: ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit"

"_ZN4llvm25OptimizationRemarkEmitter4emitIZL13verifyFuncBFIRN12_GLOBAL__N_110PGOUseFuncERNS_8LoopInfoERNS_21BranchProbabilityInfoEmmE3$_0EEvT_PDTclfL0p_EE.exit": ; preds = %bb.h, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i, %bb.i, %bb.g, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit
  %.1115 = phi i32 [ %.0114122, %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit ], [ %i.bi, %bb.i ], [ %i.bi, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i ], [ %i.bi, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i ], [ %i.bi, %bb.g ], [ %i.bi, %bb.h ], [ %.0114122, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i ] ; 2 uses
  %.2113 = phi i32 [ %.0111123, %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit ], [ %spec.select, %bb.i ], [ %spec.select, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i ], [ %spec.select, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i ], [ %spec.select, %bb.g ], [ %spec.select, %bb.h ], [ %.0111123, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i ] ; 2 uses
  %.2 = phi i32 [ %.0110124, %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit ], [ %.0110124, %bb.i ], [ %i.bz, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i ], [ %i.bz, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i ], [ %.0110124, %bb.g ], [ %.0110124, %bb.h ], [ %.0110124, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i ] ; 3 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.0125, %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit ], [ %.sroa.0.0125, %bb.i ], [ %.sroa.0.1, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i ], [ %.sroa.0.1, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i ], [ %.sroa.0.0125, %bb.g ], [ %.sroa.0.0125, %bb.h ], [ %.sroa.0.0125, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i ]
  %.sroa.6.3 = phi i64 [ %.sroa.6.0126, %_ZNK12_GLOBAL__N_110PGOUseFunc10findBBInfoEPKN4llvm10BasicBlockE.exit ], [ %.sroa.6.0126, %bb.i ], [ %.sroa.6.1, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i ], [ %.sroa.6.1, %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i ], [ %.sroa.6.0126, %bb.g ], [ %.sroa.6.0126, %bb.h ], [ %.sroa.6.0126, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrIN12_GLOBAL__N_112PGOUseBBInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findES4_.exit.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.083.0127, i64 8
  %.sroa.083.0 = load ptr, ptr %i.ei, align 8, !tbaa !224 ; 2 uses
  %.not = icmp eq ptr %.sroa.083.0, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  %i.ej = load ptr, ptr %18, align 8, !tbaa !574
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ej) #25
  %i.el = call noundef ptr @_ZN4llvm11LLVMContext21getLLVMRemarkStreamerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek) #25
  %.not.i.i46 = icmp eq ptr %i.el, null
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_PGOInstrumentation.cpp:bb.a
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL12PGOVerifyBFIE) #25
  %i.cf = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL12PGOVerifyBFIE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL17PGOVerifyBFIRatioE, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 120), align 8, !tbaa !234
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL17PGOVerifyBFIRatioE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 144), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL17PGOVerifyBFIRatioE, ptr nonnull align 1 dereferenceable(21) @.str.74, i64 20) #25
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 120), align 8, !tbaa !234
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 140), align 4, !tbaa !713
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 136), align 8, !tbaa !2123
  %i.cg = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 10), align 2
  %i.ch = and i16 %i.cg, -97
  %i.ci = or disjoint i16 %i.ch, 32
  store i16 %i.ci, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 10), align 2
  store ptr @.str.75, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 32), align 8, !tbaa !592
  store i64 141, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL17PGOVerifyBFIRatioE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL17PGOVerifyBFIRatioE) #25
  %i.cj = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL17PGOVerifyBFIRatioE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL18PGOVerifyBFICutoffE, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 120), align 8, !tbaa !234
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL18PGOVerifyBFICutoffE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 144), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL18PGOVerifyBFICutoffE, ptr nonnull align 1 dereferenceable(22) @.str.77, i64 21) #25
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 120), align 8, !tbaa !234
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 140), align 4, !tbaa !713
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 136), align 8, !tbaa !2123
  %i.ck = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 10), align 2
  %i.cl = and i16 %i.ck, -97
  %i.cm = or disjoint i16 %i.cl, 32
  store i16 %i.cm, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 10), align 2
  store ptr @.str.78, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 32), align 8, !tbaa !592
  store i64 89, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18PGOVerifyBFICutoffE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL18PGOVerifyBFICutoffE) #25
  %i.cn = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL18PGOVerifyBFICutoffE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store ptr @.str.81, ptr %0, align 8
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i32 noundef 0, i32 noundef 0) #25
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 136), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 120), align 8, !tbaa !200
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 128), align 8, !tbaa !79
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 136), align 8, !tbaa !56
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 160), align 8, !tbaa !200
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 168), align 8, !tbaa !79
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 176), align 8, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 192), align 8, !tbaa !588
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 152), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 200), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 208), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, ptr nonnull align 1 dereferenceable(20) @.str.80, i64 19) #25
  call void @_ZNK4llvm2cl11initializerIA2_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvmL16PGOTraceFuncHashB5cxx11E)
  %i.co = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 10), align 2
  %i.cp = and i16 %i.co, -97
  %i.cq = or disjoint i16 %i.cp, 32
  store i16 %i.cq, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 10), align 2
  store ptr @.str.82, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 48), align 8, !tbaa !592
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 56), align 8, !tbaa !201
  store ptr @.str.83, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 32), align 8, !tbaa !592
  store i64 46, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvmL16PGOTraceFuncHashB5cxx11E) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %i.cr = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZN4llvmL16PGOTraceFuncHashB5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL24PGOFunctionSizeThresholdE, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 120), align 8, !tbaa !234
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 144), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL24PGOFunctionSizeThresholdE, ptr nonnull align 1 dereferenceable(28) @.str.85, i64 27) #25
  %i.cs = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 10), align 2
  %i.ct = and i16 %i.cs, -97
  %i.cu = or disjoint i16 %i.ct, 32
  store i16 %i.cu, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 10), align 2
  store ptr @.str.86, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 32), align 8, !tbaa !592
  store i64 56, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL24PGOFunctionSizeThresholdE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL24PGOFunctionSizeThresholdE) #25
  %i.cv = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL24PGOFunctionSizeThresholdE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i32 noundef 0, i32 noundef 0) #25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 120), align 8, !tbaa !234
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 144), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, ptr nonnull align 1 dereferenceable(28) @.str.88, i64 27) #25
  store i32 20000, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 120), align 8, !tbaa !234
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 140), align 4, !tbaa !713
  store i32 20000, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 136), align 8, !tbaa !2123
  %i.cw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 10), align 2
  %i.cx = and i16 %i.cw, -97
  %i.cy = or disjoint i16 %i.cx, 32
  store i16 %i.cy, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 10), align 2
  store ptr @.str.89, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 32), align 8, !tbaa !592
  store i64 91, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE) #25
  %i.cz = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL32PGOFunctionCriticalEdgeThresholdE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i32 noundef 0, i32 noundef 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueImEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optImLb0ENS0_6parserImEEEE, i64 16), ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserImEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 152), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 160), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, ptr nonnull align 1 dereferenceable(36) @.str.91, i64 35) #25
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 120), align 8, !tbaa !239
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 144), align 8, !tbaa !597
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 136), align 8, !tbaa !2126
  %i.da = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 10), align 2
  %i.db = and i16 %i.da, -97
  %i.dc = or disjoint i16 %i.db, 32
  store i16 %i.dc, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 10), align 2
  store ptr @.str.92, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 32), align 8, !tbaa !592
  store i64 107, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZN4llvmL31PGOColdInstrumentEntryThresholdE) #25
  %i.dd = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev, ptr nonnull @_ZN4llvmL31PGOColdInstrumentEntryThresholdE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL21PGOTreatUnknownAsColdE, i32 noundef 0, i32 noundef 0) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 120), align 8, !tbaa !193
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 144), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL21PGOTreatUnknownAsColdE, ptr nonnull align 1 dereferenceable(26) @.str.94, i64 25) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 120), align 8, !tbaa !193
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 137), align 1, !tbaa !712
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 136), align 8, !tbaa !2122
  %i.de = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 10), align 2
  %i.df = and i16 %i.de, -97
  %i.dg = or disjoint i16 %i.df, 32
  store i16 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 10), align 2
  store ptr @.str.95, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 32), align 8, !tbaa !592
  store i64 90, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL21PGOTreatUnknownAsColdE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL21PGOTreatUnknownAsColdE) #25
  %i.dh = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL21PGOTreatUnknownAsColdE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i32 noundef 0, i32 noundef 0) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 120), align 8, !tbaa !193
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 128), align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 144), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, ptr nonnull align 1 dereferenceable(34) @.str.97, i64 33) #25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 120), align 8, !tbaa !193
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 137), align 1, !tbaa !712
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 136), align 8, !tbaa !2122
  %i.di = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 10), align 2
  %i.dj = and i16 %i.di, -97
  %i.dk = or disjoint i16 %i.dj, 32
  store i16 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 10), align 2
  store ptr @.str.98, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 32), align 8, !tbaa !592
  store i64 42, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvm29PGOInstrumentColdFunctionOnlyE) #25
  %i.dl = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvm29PGOInstrumentColdFunctionOnlyE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 120), i8 0, i64 49, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE, i64 16), ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 176), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 200), align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 208), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, ptr nonnull align 1 dereferenceable(29) @.str.100, i64 28) #25
  %i.dm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 10), align 2
  %i.dn = and i16 %i.dm, -97
  %i.do = or disjoint i16 %i.dn, 32
  store i16 %i.do, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 10), align 2
  store ptr @.str.101, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 32), align 8, !tbaa !592
  store i64 76, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, i64 40), align 8, !tbaa !201
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E) #25
  %i.dp = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev, ptr nonnull @_ZN4llvm28CtxPGOSkipCallsiteInstrumentB5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!38, !39}
!llvm.ident = !{!40}
!llvm.errno.tbaa = !{!45}

!0 = distinct !{null}
!1 = distinct !{!1, !73}
!2 = distinct !{!2, !73}
!3 = distinct !{!3, !73}
!4 = distinct !{!4, !73}
!5 = distinct !{!5, !73}
!6 = distinct !{!6, !73}
!7 = distinct !{!7, !73}
!8 = distinct !{!8, !73}
!9 = distinct !{!9, !73}
!10 = distinct !{!10, !73}
!11 = distinct !{!11, !73}
!12 = distinct !{!12, !73}
!13 = distinct !{!13, !73}
!14 = distinct !{!14, !73}
!15 = distinct !{!15, !73}
!16 = distinct !{!16, !73}
!17 = distinct !{!17, !73}
!18 = distinct !{!18, !73}
!19 = distinct !{!19, !73}
!20 = distinct !{!20, !73}
!21 = distinct !{!21, !73}
!22 = distinct !{!22, !73}
!23 = distinct !{!23, !73}
!24 = distinct !{!24, !73}
!25 = distinct !{!25, !73}
!26 = distinct !{!26, !73}
!27 = distinct !{null}
!28 = distinct !{null, null}
!29 = distinct !{!29, !73}
!30 = distinct !{!30, !73}
!31 = distinct !{!31, !73}
!32 = distinct !{!32, !73}
!33 = distinct !{!33, !73}
!34 = distinct !{!34, !73}
!35 = distinct !{!35, !73}
!36 = distinct !{!36, !73}
!37 = distinct !{!37, !73}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"omnipotent char", !41, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!"__libc_errno", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"vtable pointer", !41, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"any pointer", !42, i64 0}
!49 = !{!"_ZTSSt14_Function_base", !42, i64 0, !48, i64 16}
!50 = !{!49, !48, i64 16}
!51 = !{!"p1 omnipotent char", !48, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !51, i64 0}
!53 = !{!"long", !42, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !53, i64 8, !42, i64 16}
!55 = !{!54, !51, i64 0}
!56 = !{!42, !42, i64 0}
!57 = !{!"any p2 pointer", !48, i64 0}
!58 = !{!"bool", !42, i64 0}
!59 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !57, i64 0, !43, i64 8, !43, i64 12, !58, i64 16}
!60 = !{!59, !58, i64 16}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!59, !57, i64 0}
!64 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !48, i64 0, !43, i64 8, !43, i64 12}
!65 = !{!64, !48, i64 0}
!66 = !{ptr @_ZN4llvm2cl6parserINS_17PGOViewCountsTypeEED2Ev}
!67 = !{!"p1 int", !48, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !67, i64 16}
!71 = !{!"p1 _ZTSN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !48, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!75, !74, i64 8}
!78 = !{!75, !74, i64 16}
!79 = !{!54, !53, i64 8}
!80 = !{!"p1 _ZTSN4llvm11GlobalValueE", !48, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!59, !43, i64 8}
!83 = !{!59, !43, i64 12}
!84 = !{!48, !48, i64 0}
!85 = !{!"p1 _ZTSN4llvm11LLVMContextE", !48, i64 0}
!86 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !48, i64 0}
!87 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !86, i64 0, !86, i64 8}
!88 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_14GlobalVariableELb0ELb0EvLb0EvEEEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_14GlobalVariableELb0ELb0EvLb0EvEEEE", !89, i64 0}
!91 = !{!"_ZTSN4llvm12simple_ilistINS_14GlobalVariableEJEEE", !90, i64 0}
!92 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_14GlobalVariableEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !91, i64 0}
!93 = !{!"_ZTSN4llvm15SymbolTableListINS_14GlobalVariableEJEEE", !92, i64 0}
!94 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEEEE", !88, i64 0}
!95 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEEEE", !94, i64 0}
!96 = !{!"_ZTSN4llvm12simple_ilistINS_8FunctionEJEEE", !95, i64 0}
!97 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_8FunctionEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !96, i64 0}
!98 = !{!"_ZTSN4llvm15SymbolTableListINS_8FunctionEJEEE", !97, i64 0}
!99 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11GlobalAliasELb0ELb0EvLb0EvEEEE", !88, i64 0}
!100 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11GlobalAliasELb0ELb0EvLb0EvEEEE", !99, i64 0}
!101 = !{!"_ZTSN4llvm12simple_ilistINS_11GlobalAliasEJEEE", !100, i64 0}
!102 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11GlobalAliasEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !101, i64 0}
!103 = !{!"_ZTSN4llvm15SymbolTableListINS_11GlobalAliasEJEEE", !102, i64 0}
!104 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11GlobalIFuncELb0ELb0EvLb0EvEEEE", !88, i64 0}
!105 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11GlobalIFuncELb0ELb0EvLb0EvEEEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm12simple_ilistINS_11GlobalIFuncEJEEE", !105, i64 0}
!107 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11GlobalIFuncEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !106, i64 0}
!108 = !{!"_ZTSN4llvm15SymbolTableListINS_11GlobalIFuncEJEEE", !107, i64 0}
!109 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11NamedMDNodeELb0ELb0EvLb0EvEEEE", !88, i64 0}
!110 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11NamedMDNodeELb0ELb0EvLb0EvEEEE", !109, i64 0}
!111 = !{!"_ZTSN4llvm12simple_ilistINS_11NamedMDNodeEJEEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11NamedMDNodeEJEEENS_12ilist_traitsIS2_EEEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm6iplistINS_11NamedMDNodeEJEEE", !112, i64 0}
!114 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Module17GlobalAsmFragmentEvEE", !64, i64 0}
!115 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Module17GlobalAsmFragmentELb0EEE", !114, i64 0}
!116 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Module17GlobalAsmFragmentEEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm11SmallVectorINS_6Module17GlobalAsmFragmentELj0EEE", !116, i64 0}
!118 = !{!"p1 _ZTSN4llvm16ValueSymbolTableE", !48, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16ValueSymbolTableELb0EE", !118, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm16ValueSymbolTableESt14default_deleteIS1_EEE", !119, i64 0}
!121 = !{!"_ZTSSt5tupleIJPN4llvm16ValueSymbolTableESt14default_deleteIS1_EEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm16ValueSymbolTableESt14default_deleteIS1_EE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm16ValueSymbolTableESt14default_deleteIS1_ELb1ELb1EE", !122, i64 0}
!124 = !{!"_ZTSSt10unique_ptrIN4llvm16ValueSymbolTableESt14default_deleteIS1_EE", !123, i64 0}
!125 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !57, i64 0}
!126 = !{!"_ZTSN4llvm13StringMapImplE", !125, i64 0, !43, i64 8, !43, i64 12, !43, i64 16}
!127 = !{!"_ZTSN4llvm9StringMapINS_6ComdatENS_15MallocAllocatorEEE", !126, i64 0}
!128 = !{!"p1 _ZTSN4llvm12MemoryBufferE", !48, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MemoryBufferELb0EE", !128, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MemoryBufferESt14default_deleteIS1_EEE", !129, i64 0}
!131 = !{!"_ZTSSt5tupleIJPN4llvm12MemoryBufferESt14default_deleteIS1_EEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MemoryBufferESt14default_deleteIS1_EE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MemoryBufferESt14default_deleteIS1_ELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EE", !133, i64 0}
!135 = !{!"p1 _ZTSN4llvm14GVMaterializerE", !48, i64 0}
!136 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm14GVMaterializerELb0EE", !135, i64 0}
!137 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm14GVMaterializerESt14default_deleteIS1_EEE", !136, i64 0}
!138 = !{!"_ZTSSt5tupleIJPN4llvm14GVMaterializerESt14default_deleteIS1_EEE", !137, i64 0}
!139 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm14GVMaterializerESt14default_deleteIS1_EE", !138, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm14GVMaterializerESt14default_deleteIS1_ELb1ELb1EE", !139, i64 0}
!141 = !{!"_ZTSSt10unique_ptrIN4llvm14GVMaterializerESt14default_deleteIS1_EE", !140, i64 0}
!142 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !42, i64 0}
!143 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !42, i64 0}
!144 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !42, i64 0}
!145 = !{!"_ZTSN4llvm6Triple6OSTypeE", !42, i64 0}
!146 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !42, i64 0}
!147 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !42, i64 0}
!148 = !{!"_ZTSN4llvm6TripleE", !54, i64 0, !142, i64 32, !143, i64 36, !144, i64 40, !145, i64 44, !146, i64 48, !147, i64 52}
!149 = !{!"_ZTSN4llvm9StringMapIPNS_11NamedMDNodeENS_15MallocAllocatorEEE", !126, i64 0}
!150 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm5AlignEE", !42, i64 0, !58, i64 1}
!151 = !{!"_ZTSSt17_Optional_payloadIN4llvm5AlignELb1ELb1ELb1EE", !150, i64 0}
!152 = !{!"_ZTSSt14_Optional_baseIN4llvm5AlignELb1ELb1EE", !151, i64 0}
!153 = !{!"_ZTSSt8optionalIN4llvm5AlignEE", !152, i64 0}
!154 = !{!"_ZTSN4llvm10MaybeAlignE", !153, i64 0}
!155 = !{!"_ZTSN4llvm10DataLayout20FunctionPtrAlignTypeE", !42, i64 0}
!156 = !{!"_ZTSN4llvm10DataLayout13ManglingModeTE", !42, i64 0}
!157 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !48, i64 0, !53, i64 8, !53, i64 16}
!158 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIhvEE", !157, i64 0}
!159 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIhLb1EEE", !158, i64 0}
end_hunk_1
