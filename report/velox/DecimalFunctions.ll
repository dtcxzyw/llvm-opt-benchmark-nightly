Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DecimalFunctions?download=true
inline.NumInlined: 45067
inline.NumDeleted: 11733
loop-unroll.NumCompletelyUnrolled: 676
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 694
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EERKSR_IKNS0_4TypeEERNS1_7EvalCtxERST_:bb.a
  %.087.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hh, %_ZN8facebook5velox6StatusD2Ev.exit42.i.i.i.i.i.i.i.i.i.i.i ], [ %.087.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit42.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.087.i.i.i.i.i.i.i.i.i.i.i
  store i64 %extract.t.i.i54.i.i.i.i.i.i.i.i.i.i, ptr %i.hg, align 8, !tbaa !125
  %i.hh = add nuw i64 %.087.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.gc
  br i1 %i.hi, label %_ZN8facebook5velox6StatusD2Ev.exit42.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_20ConstantVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12611

_ZN8facebook5velox6StatusD2Ev.exit65.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit65.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i
  %.01586.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fn, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i ], [ %i.hl, %_ZN8facebook5velox6StatusD2Ev.exit65.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01586.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %gep.i57.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i56.i.i.i.i.i.i.i.i.i.i, i64 %i.hj
  store i64 %extract.t.i51.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i57.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.hk = add i64 %.01586.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hl = and i64 %i.hk, %.01586.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i58.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i58.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_20ConstantVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit65.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12605

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_20ConstantVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit42.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit42.i.us.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit65.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit65.i.us.i.i.i.i.i.i.i.i.i.i, %middle.block394, %vec.epilog.middle.block409, %middle.block372, %vec.epilog.middle.block, %bb.u, %bb.t
  %i.hm = add nsw i32 %i.fj, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.hm, %i.cx
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.t, !llvm.loop !12612

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.hn = ashr i32 %i.ct, 6
  %i.ho = and i32 %i.ct, 63
  %i.hp = zext nneg i32 %i.ho to i64
  %notmask.i59.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.hp
  %i.hq = xor i64 %notmask.i59.i.i.i.i.i.i.i.i.i.i, -1
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !125
  %i.hu = and i64 %i.ht, %i.hq                    ; 3 uses
  %.not.i60.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hu, 0
  br i1 %.not.i60.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.preheader.i61.i.i.i.i.i.i.i.i.i.i

.preheader.i61.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.v
  %i.hv = sext i32 %i.cx to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i64.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !1926
  %i.hx = getelementptr i8, ptr %.val.i64.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val15.i65.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hx, align 1, !tbaa !1916 ; 2 uses
  %i.hy = icmp eq i8 %.val15.i65.i.i.i.i.i.i.i.i.i.i, 0
  %i.hz = icmp eq i128 %.sroa.06.0.i, 0
  %i.ia = select i1 %i.hy, i1 true, i1 %i.hz, !prof !65
  %extract.t1.i.i66.i.i.i.i.i.i.i.i.i.i = trunc i128 %.sroa.06.0.i to i64
  %invariant.gep.i67.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.hv ; 2 uses
  br i1 %i.ia, label %_ZN8facebook5velox6StatusD2Ev.exit25.i70.us.i.i.i.i.i.i.i.i.i.i, label %.preheader.i61.split.i.i.i.i.i.i.i.i.i.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit25.i70.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i61.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i70.us.i.i.i.i.i.i.i.i.i.i
  %.035.i68.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.id, %_ZN8facebook5velox6StatusD2Ev.exit25.i70.us.i.i.i.i.i.i.i.i.i.i ], [ %i.hu, %.preheader.i61.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ib = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i68.us.i.i.i.i.i.i.i.i.i.i, i1 true)
  %gep.i72.us.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i67.i.i.i.i.i.i.i.i.i.i, i64 %i.ib
  store i64 %extract.t1.i.i66.i.i.i.i.i.i.i.i.i.i, ptr %gep.i72.us.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.ic = add nuw i64 %.035.i68.us.i.i.i.i.i.i.i.i.i.i, 9223372036854775807
  %i.id = and i64 %i.ic, %.035.i68.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i73.us.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not10.i73.us.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit25.i70.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12604

.preheader.i61.split.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader.i61.i.i.i.i.i.i.i.i.i.i
  %i.ie = zext i8 %.val15.i65.i.i.i.i.i.i.i.i.i.i to i64
  %i.if = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.ie
  %i.ig = load i128, ptr %i.if, align 16, !tbaa !350
  %i.ih = sdiv i128 %.sroa.06.0.i, %i.ig
  %extract.t.i.i69.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.ih to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i70.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i70.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i70.i.i.i.i.i.i.i.i.i.i, %.preheader.i61.split.i.i.i.i.i.i.i.i.i.i
  %.035.i68.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hu, %.preheader.i61.split.i.i.i.i.i.i.i.i.i.i ], [ %i.ik, %_ZN8facebook5velox6StatusD2Ev.exit25.i70.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ii = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i68.i.i.i.i.i.i.i.i.i.i, i1 true)
  %gep.i72.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i67.i.i.i.i.i.i.i.i.i.i, i64 %i.ii
  store i64 %extract.t.i.i69.i.i.i.i.i.i.i.i.i.i, ptr %gep.i72.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.ij = add nuw i64 %.035.i68.i.i.i.i.i.i.i.i.i.i, 9223372036854775807
  %i.ik = and i64 %i.ij, %.035.i68.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i73.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not10.i73.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit25.i70.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12604

bb.w:                                             ; preds = %bb.e
  %i.il = getelementptr inbounds nuw i8, ptr %.val.val, i64 184
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !339 ; 14 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !235, !range !63, !noundef !64
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i59.i, label %bb.x

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i59.i: ; preds = %bb.w
  %.0.in.pre.i.i.i.i.i.i.i60.i = load i8, ptr %i.in, align 4, !tbaa !124, !range !63
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i14.i

bb.x:                                             ; preds = %bb.w
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !247
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.y, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i

bb.y:                                             ; preds = %bb.x
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !248 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !246
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i

bb.z:                                             ; preds = %bb.y
  %i.iz = load ptr, ptr %1, align 8, !tbaa !237   ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp sgt i32 %i.iv, 0
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i

bb.aa:                                            ; preds = %bb.z
  %i.ja = and i32 %i.iv, 2147483584               ; 3 uses
  %i.jb = zext nneg i32 %i.ja to i64
  %.not37.i.i.not.i.i.i.i.i.i.i53.i296.not = icmp eq i32 %i.ja, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i53.i296.not, label %.critedge.i.i.i.i.i.i.i.i.i54.i, label %.lr.ph298

bb.ab:                                            ; preds = %.lr.ph298
  %indvars.iv.next.i.i.i.i.i.i.i58.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i52.i297, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i53.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i58.i, %i.jb
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i53.i, label %.lr.ph298, label %.critedge.i.i.i.i.i.i.i.i.i54.i, !llvm.loop !20

.lr.ph298:                                        ; preds = %bb.aa, %bb.ab
  %indvars.iv.i.i.i.i.i.i.i52.i297 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i58.i, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.jc = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i52.i297, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !125
  %i.jf = icmp eq i64 %i.je, -1
  br i1 %i.jf, label %bb.ab, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i, !llvm.loop !20

.critedge.i.i.i.i.i.i.i.i.i54.i:                  ; preds = %bb.ab, %bb.aa
  %.not38.i.i.i.i.i.i.i.i.i55.i = icmp eq i32 %i.iv, %i.ja
  br i1 %.not38.i.i.i.i.i.i.i.i.i55.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i54.i
  %i.jg = lshr i32 %i.iv, 6
  %i.jh = and i32 %i.iv, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i56.i = shl nsw i64 -1, %i.ji
  %i.jj = zext nneg i32 %i.jg to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jj
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !125
  %.demorgan.i.i.i.i.i.i.i57.i = or i64 %i.jl, %notmask.i40.i.i.i.i.i.i.i.i.i56.i
  %i.jm = icmp eq i64 %.demorgan.i.i.i.i.i.i.i57.i, -1
  %i.jn = zext i1 %i.jm to i16
  %i.jo = or disjoint i16 %i.jn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i: ; preds = %.lr.ph298, %bb.ac, %.critedge.i.i.i.i.i.i.i.i.i54.i, %bb.z, %bb.y, %bb.x
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i13.i = phi i16 [ 256, %bb.y ], [ 256, %bb.x ], [ 257, %bb.z ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i54.i ], [ %i.jo, %bb.ac ], [ 256, %.lr.ph298 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i13.i, ptr %i.in, align 4
  %i.jp = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i13.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i14.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i14.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i59.i
  %.0.in.i.i.i.i.i.i.i15.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i60.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i59.i ], [ %i.jp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i12.i ]
  %.0.i.i.i.i.i.i.i16.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i15.i to i1
  br i1 %.0.i.i.i.i.i.i.i16.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i14.i
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !248 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !247 ; 3 uses
  %i.ju = icmp slt i32 %i.jt, %i.jr
  br i1 %i.ju, label %.lr.ph.i.i.i.i.i.i40.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit

.lr.ph.i.i.i.i.i.i40.i:                           ; preds = %bb.ad
  %i.jv = sext i32 %i.jt to i64                   ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i.i.i41.i = load ptr, ptr %i.jw, align 8, !tbaa !1926
  %i.jx = getelementptr i8, ptr %.val.i.i.i.i.i.i41.i, i64 1
  %.val5.i.i.i.i.i.i.i = load i8, ptr %i.jx, align 1, !tbaa !1916
  %.val5.i.fr.i.i.i.i.i.i = freeze i8 %.val5.i.i.i.i.i.i.i ; 2 uses
  %i.jy = icmp eq i8 %.val5.i.fr.i.i.i.i.i.i, 0
  %i.jz = zext i8 %.val5.i.fr.i.i.i.i.i.i to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.jz
  br i1 %i.jy, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader, label %.lr.ph.i.split.i.i.i.i.i42.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i40.i
  %i.kb = xor i32 %i.jt, -1
  %i.kc = add i32 %i.jr, %i.kb                    ; 2 uses
  %i.kd = zext i32 %i.kc to i64
  %i.ke = add nuw nsw i64 %i.kd, 1                ; 2 uses
  %min.iters.check348 = icmp ult i32 %i.kc, 7
  br i1 %min.iters.check348, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader479, label %vector.ph349

vector.ph349:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader
  %n.vec350 = and i64 %i.ke, 8589934584           ; 3 uses
  %i.kf = add nsw i64 %n.vec350, %i.jv
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.kg = add i64 %index352, %i.jv                ; 2 uses
  %i.kh = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.kg ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 96
  %wide.load353 = load <2 x i128>, ptr %i.kh, align 16, !tbaa !350, !noalias !12649
  %wide.load354 = load <2 x i128>, ptr %i.ki, align 16, !tbaa !350, !noalias !12649
  %wide.load355 = load <2 x i128>, ptr %i.kj, align 16, !tbaa !350, !noalias !12649
  %wide.load356 = load <2 x i128>, ptr %i.kk, align 16, !tbaa !350, !noalias !12649
  %i.kl = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.kg ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %8 = shufflevector <2 x i128> %wide.load353, <2 x i128> %wide.load354, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = trunc <4 x i128> %8 to <4 x i64>
  store <4 x i64> %9, ptr %i.kl, align 8, !tbaa !125
  %10 = shufflevector <2 x i128> %wide.load355, <2 x i128> %wide.load356, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = trunc <4 x i128> %10 to <4 x i64>
  store <4 x i64> %11, ptr %i.km, align 8, !tbaa !125
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.kn, label %middle.block358, label %vector.body351, !llvm.loop !12615

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %i.ke, %n.vec350
  br i1 %cmp.n359, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader479

_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader479: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader, %middle.block358
  %indvars.iv.i.us.i.i.i.i.i48.i.ph = phi i64 [ %i.jv, %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader ], [ %i.kf, %middle.block358 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader479, %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i
  %indvars.iv.i.us.i.i.i.i.i48.i = phi i64 [ %indvars.iv.next.i.us.i.i.i.i.i49.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i ], [ %indvars.iv.i.us.i.i.i.i.i48.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i.preheader479 ] ; 3 uses
  %i.ko = getelementptr inbounds [16 x i8], ptr %i.im, i64 %indvars.iv.i.us.i.i.i.i.i48.i
  %i.kp = load i128, ptr %i.ko, align 16, !tbaa !350, !noalias !12649
  %extract.t1.i.i.us.i.i.i.i.i.i = trunc i128 %i.kp to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %indvars.iv.i.us.i.i.i.i.i48.i
  store i64 %extract.t1.i.i.us.i.i.i.i.i.i, ptr %i.kq, align 8, !tbaa !125
  %indvars.iv.next.i.us.i.i.i.i.i49.i = add nsw i64 %indvars.iv.i.us.i.i.i.i.i48.i, 1 ; 2 uses
  %lftr.wideiv.i.us.i.i.i.i.i50.i = trunc i64 %indvars.iv.next.i.us.i.i.i.i.i49.i to i32
  %exitcond.not.i.us.i.i.i.i.i51.i = icmp eq i32 %i.jr, %lftr.wideiv.i.us.i.i.i.i.i50.i
  br i1 %exitcond.not.i.us.i.i.i.i.i51.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.us.i.i.i.i.i.i, !llvm.loop !12616

.lr.ph.i.split.i.i.i.i.i42.i:                     ; preds = %.lr.ph.i.i.i.i.i.i40.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i43.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i45.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i ], [ %i.jv, %.lr.ph.i.i.i.i.i.i40.i ] ; 3 uses
  %i.kr = getelementptr inbounds [16 x i8], ptr %i.im, i64 %indvars.iv.i.i.i.i.i.i43.i
  %i.ks = load i128, ptr %i.kr, align 16, !tbaa !350, !noalias !12649 ; 2 uses
  %i.kt = icmp eq i128 %i.ks, 0
  br i1 %i.kt, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i, label %bb.ae, !prof !65

bb.ae:                                            ; preds = %.lr.ph.i.split.i.i.i.i.i42.i
  %i.ku = load i128, ptr %i.ka, align 16, !tbaa !350
  %i.kv = sdiv i128 %i.ks, %i.ku
  %extract.t.i.i.i.i.i.i.i44.i = trunc i128 %i.kv to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i: ; preds = %bb.ae, %.lr.ph.i.split.i.i.i.i.i42.i
  %.sink.off0.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i.i.i.i.i.i44.i, %bb.ae ], [ 0, %.lr.ph.i.split.i.i.i.i.i42.i ]
  %i.kw = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %indvars.iv.i.i.i.i.i.i43.i
  store i64 %.sink.off0.i.i.i.i.i.i.i.i, ptr %i.kw, align 8, !tbaa !125
  %indvars.iv.next.i.i.i.i.i.i45.i = add nsw i64 %indvars.iv.i.i.i.i.i.i43.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i46.i = trunc i64 %indvars.iv.next.i.i.i.i.i.i45.i to i32
  %exitcond.not.i.i.i.i.i.i47.i = icmp eq i32 %i.jr, %lftr.wideiv.i.i.i.i.i.i46.i
  br i1 %exitcond.not.i.i.i.i.i.i47.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.lr.ph.i.split.i.i.i.i.i42.i, !llvm.loop !12617

bb.af:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i14.i
  %i.kx = load ptr, ptr %1, align 8, !tbaa !237   ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !247 ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !248 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp slt i32 %i.kz, %i.lb
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %bb.ag, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit

bb.ag:                                            ; preds = %bb.af
  %i.lc = add i32 %i.kz, 63                       ; 2 uses
  %i.ld = srem i32 %i.lc, 64
  %i.le = sub nsw i32 %i.lc, %i.ld                ; 6 uses
  %i.lf = and i32 %i.lb, -64                      ; 6 uses
  %i.lg = icmp slt i32 %i.lf, %i.le
  br i1 %i.lg, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.lh = ashr i32 %i.lb, 6
  %i.li = and i32 %i.lb, 63
  %i.lj = zext nneg i32 %i.li to i64
  %notmask.i.i.i.i.i.i.i.i.i.i31.i = shl nsw i64 -1, %i.lj
  %i.lk = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i31.i, -1
  %i.ll = sub nsw i32 %i.le, %i.kz                ; 2 uses
  %i.lm = zext nneg i32 %i.ll to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i32.i = shl nsw i64 -1, %i.lm
  %i.ln = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i32.i, -1
  %i.lo = sub nsw i32 64, %i.ll
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl i64 %i.ln, %i.lp
  %i.lr = and i64 %i.lq, %i.lk
  %i.ls = sext i32 %i.lh to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !125
  %i.lv = and i64 %i.lr, %i.lu                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i33.i = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i33.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i34.i

.preheader.i.i.i.i.i.i.i.i.i.i34.i:               ; preds = %bb.ah
  %i.lw = sext i32 %i.lf to i64                   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i35.i = load ptr, ptr %i.lx, align 8, !tbaa !1926
  %i.ly = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i35.i, i64 1
  %.val12.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ly, align 1, !tbaa !1916
  %.val12.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i8 %.val12.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lz = icmp eq i8 %.val12.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  %i.ma = zext i8 %.val12.i.fr.i.i.i.i.i.i.i.i.i.i to i64
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.ma
  br i1 %i.lz, label %_ZN8facebook5velox6StatusD2Ev.exit22.i.us.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.split.i.i.i.i.i.i.i.i.i36.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit22.i.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i34.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.us.i.i.i.i.i.i.i.i.i.i
  %.032.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mi, %_ZN8facebook5velox6StatusD2Ev.exit22.i.us.i.i.i.i.i.i.i.i.i.i ], [ %i.lv, %.preheader.i.i.i.i.i.i.i.i.i.i34.i ] ; 3 uses
  %i.mc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i.us.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.md = or disjoint i64 %i.mc, %i.lw            ; 2 uses
  %i.me = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.md
  %i.mf = load i128, ptr %i.me, align 16, !tbaa !350, !noalias !12650
  %extract.t1.i.i.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.mf to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.md
  store i64 %extract.t1.i.i.us.i.i.i.i.i.i.i.i.i.i, ptr %i.mg, align 8, !tbaa !125
  %i.mh = add nuw i64 %.032.i.us.i.i.i.i.i.i.i.i.i.i, 9223372036854775807
  %i.mi = and i64 %i.mh, %.032.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.us.i.i.i.i.i.i.i.i.i39.i = icmp eq i64 %i.mi, 0
  br i1 %.not10.i.us.i.i.i.i.i.i.i.i.i39.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit22.i.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12620

.preheader.i.split.i.i.i.i.i.i.i.i.i36.i:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i34.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i
  %.032.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ms, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lv, %.preheader.i.i.i.i.i.i.i.i.i.i34.i ] ; 3 uses
  %i.mj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.mk = or disjoint i64 %i.mj, %i.lw            ; 2 uses
  %i.ml = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.mk
  %i.mm = load i128, ptr %i.ml, align 16, !tbaa !350, !noalias !12650 ; 2 uses
  %i.mn = icmp eq i128 %i.mm, 0
  br i1 %i.mn, label %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, !prof !65

bb.ai:                                            ; preds = %.preheader.i.split.i.i.i.i.i.i.i.i.i36.i
  %i.mo = load i128, ptr %i.mb, align 16, !tbaa !350
  %i.mp = sdiv i128 %i.mm, %i.mo
  %extract.t.i.i.i.i.i.i.i.i.i.i.i37.i = trunc i128 %i.mp to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.preheader.i.split.i.i.i.i.i.i.i.i.i36.i
  %.sink.off0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i.i.i.i.i.i.i.i.i.i37.i, %bb.ai ], [ 0, %.preheader.i.split.i.i.i.i.i.i.i.i.i36.i ]
  %i.mq = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.mk
  store i64 %.sink.off0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mq, align 8, !tbaa !125
  %i.mr = add nuw i64 %.032.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775807
  %i.ms = and i64 %i.mr, %.032.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i38.i = icmp eq i64 %i.ms, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i38.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.preheader.i.split.i.i.i.i.i.i.i.i.i36.i, !llvm.loop !12620

bb.aj:                                            ; preds = %bb.ag
  %.not32.i.i.i.i.i.i.i.i.i18.i = icmp eq i32 %i.kz, %i.le
  br i1 %.not32.i.i.i.i.i.i.i.i.i18.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mt = sdiv i32 %i.kz, 64                      ; 2 uses
  %i.mu = sub nsw i32 %i.le, %i.kz                ; 2 uses
  %i.mv = zext nneg i32 %i.mu to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i19.i = shl nsw i64 -1, %i.mv
  %i.mw = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i19.i, -1
  %i.mx = sub nsw i32 64, %i.mu
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl i64 %i.mw, %i.my
  %i.na = sext i32 %i.mt to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.na
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !125
  %i.nd = and i64 %i.nc, %i.mz                    ; 3 uses
  %.not.i36.i.i.i.i.i.i.i.i.i20.i = icmp eq i64 %i.nd, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i20.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i21.i

.preheader.i37.i.i.i.i.i.i.i.i.i21.i:             ; preds = %bb.ak
  %i.ne = shl nsw i32 %i.mt, 6
  %i.nf = sext i32 %i.ne to i64                   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i40.i.i.i.i.i.i.i.i.i22.i = load ptr, ptr %i.ng, align 8, !tbaa !1926
  %i.nh = getelementptr i8, ptr %.val.i40.i.i.i.i.i.i.i.i.i22.i, i64 1
  %.val12.i41.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.nh, align 1, !tbaa !1916
  %.val12.i41.fr.i.i.i.i.i.i.i.i.i.i = freeze i8 %.val12.i41.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ni = icmp eq i8 %.val12.i41.fr.i.i.i.i.i.i.i.i.i.i, 0
  %i.nj = zext i8 %.val12.i41.fr.i.i.i.i.i.i.i.i.i.i to i64
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.nj
  br i1 %i.ni, label %_ZN8facebook5velox6StatusD2Ev.exit22.i45.us.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.split.i.i.i.i.i.i.i.i.i23.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit22.i45.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i37.i.i.i.i.i.i.i.i.i21.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i45.us.i.i.i.i.i.i.i.i.i.i
  %.032.i42.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nr, %_ZN8facebook5velox6StatusD2Ev.exit22.i45.us.i.i.i.i.i.i.i.i.i.i ], [ %i.nd, %.preheader.i37.i.i.i.i.i.i.i.i.i21.i ] ; 3 uses
  %i.nl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i42.us.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.nm = or disjoint i64 %i.nl, %i.nf            ; 2 uses
  %i.nn = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.nm
  %i.no = load i128, ptr %i.nn, align 16, !tbaa !350, !noalias !12651
  %extract.t1.i.i43.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.no to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.nm
  store i64 %extract.t1.i.i43.us.i.i.i.i.i.i.i.i.i.i, ptr %i.np, align 8, !tbaa !125
  %i.nq = add i64 %.032.i42.us.i.i.i.i.i.i.i.i.i.i, -1
  %i.nr = and i64 %i.nq, %.032.i42.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i47.us.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nr, 0
  br i1 %.not10.i47.us.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit22.i45.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12620

.preheader.i37.split.i.i.i.i.i.i.i.i.i23.i:       ; preds = %.preheader.i37.i.i.i.i.i.i.i.i.i21.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i45.i.i.i.i.i.i.i.i.i.i
  %.032.i42.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ob, %_ZN8facebook5velox6StatusD2Ev.exit22.i45.i.i.i.i.i.i.i.i.i.i ], [ %i.nd, %.preheader.i37.i.i.i.i.i.i.i.i.i21.i ] ; 3 uses
  %i.ns = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i42.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.nt = or disjoint i64 %i.ns, %i.nf            ; 2 uses
  %i.nu = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.nt
  %i.nv = load i128, ptr %i.nu, align 16, !tbaa !350, !noalias !12651 ; 2 uses
  %i.nw = icmp eq i128 %i.nv, 0
  br i1 %i.nw, label %_ZN8facebook5velox6StatusD2Ev.exit22.i45.i.i.i.i.i.i.i.i.i.i, label %bb.al, !prof !65

bb.al:                                            ; preds = %.preheader.i37.split.i.i.i.i.i.i.i.i.i23.i
  %i.nx = load i128, ptr %i.nk, align 16, !tbaa !350
  %i.ny = sdiv i128 %i.nv, %i.nx
  %extract.t.i.i44.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.ny to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i45.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit22.i45.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %.preheader.i37.split.i.i.i.i.i.i.i.i.i23.i
  %.sink.off0.i.i46.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i44.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ 0, %.preheader.i37.split.i.i.i.i.i.i.i.i.i23.i ]
  %i.nz = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.nt
  store i64 %.sink.off0.i.i46.i.i.i.i.i.i.i.i.i.i, ptr %i.nz, align 8, !tbaa !125
  %i.oa = add i64 %.032.i42.i.i.i.i.i.i.i.i.i.i, -1
  %i.ob = and i64 %i.oa, %.032.i42.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i47.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ob, 0
  br i1 %.not10.i47.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.split.i.i.i.i.i.i.i.i.i23.i, !llvm.loop !12620

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i45.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i45.us.i.i.i.i.i.i.i.i.i.i, %bb.ak, %bb.aj
  %i.oc = add nsw i32 %i.le, 64                   ; 2 uses
  %.not3373.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.oc, %i.lf
  br i1 %.not3373.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i26.i, label %.lr.ph.i.i.i.i.i.i.i.i.i24.i

.lr.ph.i.i.i.i.i.i.i.i.i24.i:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.am

._crit_edge.i.i.i.i.i.i.i.i.i26.i:                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit48.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i27.i = icmp eq i32 %i.lb, %i.lf
  br i1 %.not34.i.i.i.i.i.i.i.i.i27.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %bb.aq

bb.am:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i24.i
  %i.oe = phi i32 [ %i.oc, %.lr.ph.i.i.i.i.i.i.i.i.i24.i ], [ %i.rf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.074.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.le, %.lr.ph.i.i.i.i.i.i.i.i.i24.i ], [ %i.oe, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.of = sdiv i32 %.074.i.i.i.i.i.i.i.i.i.i, 64  ; 3 uses
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.og
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !125 ; 3 uses
  switch i64 %i.oi, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i.i [
    i64 -1, label %bb.an
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i24.i.i.i.i.i.i.i:                   ; preds = %bb.am
  %i.oj = shl nsw i32 %i.of, 6
  %i.ok = sext i32 %i.oj to i64                   ; 2 uses
  %.val25.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !1926
  %i.ol = getelementptr i8, ptr %.val25.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val28.i.i.i.i.i.i.i.i.i.i29.i = load i8, ptr %i.ol, align 1, !tbaa !1916
  %.val28.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i8 %.val28.i.i.i.i.i.i.i.i.i.i29.i ; 2 uses
  %i.om = icmp eq i8 %.val28.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  %i.on = zext i8 %.val28.i.fr.i.i.i.i.i.i.i.i.i.i to i64
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.on
  br i1 %i.om, label %_ZN8facebook5velox6StatusD2Ev.exit62.i.us.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.i.i.i.i.i.i.i.i.i30.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit62.i.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit62.i.us.i.i.i.i.i.i.i.i.i.i
  %.01583.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ov, %_ZN8facebook5velox6StatusD2Ev.exit62.i.us.i.i.i.i.i.i.i.i.i.i ], [ %i.oi, %.lr.ph.i.i.i.i24.i.i.i.i.i.i.i ] ; 3 uses
  %i.op = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583.i.us.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.oq = or disjoint i64 %i.op, %i.ok            ; 2 uses
  %i.or = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.oq
  %i.os = load i128, ptr %i.or, align 16, !tbaa !350, !noalias !12652
  %extract.t1.i47.i.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.os to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.oq
  store i64 %extract.t1.i47.i.us.i.i.i.i.i.i.i.i.i.i, ptr %i.ot, align 8, !tbaa !125
  %i.ou = add i64 %.01583.i.us.i.i.i.i.i.i.i.i.i.i, -1
  %i.ov = and i64 %i.ou, %.01583.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i54.us.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ov, 0
  br i1 %.not.i54.us.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit62.i.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12625

bb.an:                                            ; preds = %bb.am
  %i.ow = shl nsw i32 %i.of, 6                    ; 3 uses
  %i.ox = add i32 %i.ow, 64
  %i.oy = sext i32 %i.ox to i64                   ; 4 uses
  %.0.off.i.i.i.i.i.i.i.i.i28.i = add i32 %.074.i.i.i.i.i.i.i.i.i.i, 127
  %.not86.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i28.i, 64
  br i1 %.not86.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.an
  %i.oz = sext i32 %i.ow to i64                   ; 9 uses
  %.val.i50.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !1926
  %i.pa = getelementptr i8, ptr %.val.i50.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val26.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.pa, align 1, !tbaa !1916
  %.val26.i.fr.i.i.i.i.i.i.i.i.i.i = freeze i8 %.val26.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.pb = icmp eq i8 %.val26.i.fr.i.i.i.i.i.i.i.i.i.i, 0
  %i.pc = zext i8 %.val26.i.fr.i.i.i.i.i.i.i.i.i.i to i64
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.pc
  br i1 %i.pb, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph85.i.split.i.i.i.i.i.i.i.i.i.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i
  %i.pe = or disjoint i64 %i.oz, 1
  %i.pf = tail call i64 @llvm.umax.i64(i64 %i.pe, i64 %i.oy) ; 2 uses
  %i.pg = sub i64 %i.pf, %i.oz                    ; 2 uses
  %min.iters.check334 = icmp ult i64 %i.pg, 28
  br i1 %min.iters.check334, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader487, label %vector.scevcheck328

vector.scevcheck328:                              ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ph = or disjoint i64 %i.oz, 1
  %umax329 = tail call i64 @llvm.umax.i64(i64 %i.ph, i64 %i.oy)
  %i.pi = xor i64 %i.oz, -1
  %i.pj = add i64 %umax329, %i.pi                 ; 2 uses
  %i.pk = sext i32 %i.ow to i36                   ; 2 uses
  %i.pl = shl nsw i36 %i.pk, 4
  %i.pm = trunc i64 %i.pj to i36
  %i.pn = add i36 %i.pk, %i.pm
  %i.po = shl i36 %i.pn, 4
  %i.pp = icmp slt i36 %i.po, %i.pl
  %i.pq = icmp ugt i64 %i.pj, 4294967295
  %i.pr = or i1 %i.pp, %i.pq
  br i1 %i.pr, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader487, label %vector.ph335

vector.ph335:                                     ; preds = %vector.scevcheck328
  %i.ps = and i64 %i.pf, 1                        ; 2 uses
  %n.vec336 = sub i64 %i.pg, %i.ps                ; 2 uses
  %i.pt = add i64 %n.vec336, %i.oz
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body337 ] ; 2 uses
  %i.pu = add nuw i64 %index338, %i.oz            ; 2 uses
  %i.pv = shl i64 %i.pu, 32
  %i.pw = ashr exact i64 %i.pv, 28
  %i.px = getelementptr inbounds i8, ptr %i.im, i64 %i.pw ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 96
  %wide.load339 = load <2 x i128>, ptr %i.px, align 16, !tbaa !350, !noalias !12653
  %wide.load340 = load <2 x i128>, ptr %i.py, align 16, !tbaa !350, !noalias !12653
  %wide.load341 = load <2 x i128>, ptr %i.pz, align 16, !tbaa !350, !noalias !12653
  %wide.load342 = load <2 x i128>, ptr %i.qa, align 16, !tbaa !350, !noalias !12653
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.pu ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %12 = shufflevector <2 x i128> %wide.load339, <2 x i128> %wide.load340, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = trunc <4 x i128> %12 to <4 x i64>
  store <4 x i64> %13, ptr %i.qb, align 8, !tbaa !125
  %14 = shufflevector <2 x i128> %wide.load341, <2 x i128> %wide.load342, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = trunc <4 x i128> %14 to <4 x i64>
  store <4 x i64> %15, ptr %i.qc, align 8, !tbaa !125
  %index.next343 = add nuw i64 %index338, 8       ; 2 uses
  %i.qd = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.qd, label %middle.block344, label %vector.body337, !llvm.loop !12628

middle.block344:                                  ; preds = %vector.body337
  %cmp.n345 = icmp eq i64 %i.ps, 0
  br i1 %cmp.n345, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader487

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader487: ; preds = %vector.scevcheck328, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block344
  %.084.i.us.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.oz, %vector.scevcheck328 ], [ %i.oz, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.pt, %middle.block344 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader487, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i
  %.084.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qj, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i ], [ %.084.i.us.i.i.i.i.i.i.i.i.i.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i.preheader487 ] ; 3 uses
  %i.qe = shl i64 %.084.i.us.i.i.i.i.i.i.i.i.i.i, 32
  %i.qf = ashr exact i64 %i.qe, 28
  %i.qg = getelementptr inbounds i8, ptr %i.im, i64 %i.qf
  %i.qh = load i128, ptr %i.qg, align 16, !tbaa !350, !noalias !12653
  %extract.t1.i.i51.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.qh to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.084.i.us.i.i.i.i.i.i.i.i.i.i
  store i64 %extract.t1.i.i51.us.i.i.i.i.i.i.i.i.i.i, ptr %i.qi, align 8, !tbaa !125
  %i.qj = add nuw i64 %.084.i.us.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qk = icmp ult i64 %i.qj, %i.oy
  br i1 %i.qk, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12629

.lr.ph85.i.split.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i
  %.084.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qt, %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oz, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ql = shl i64 %.084.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.qm = ashr exact i64 %i.ql, 28
  %i.qn = getelementptr inbounds i8, ptr %i.im, i64 %i.qm
  %i.qo = load i128, ptr %i.qn, align 16, !tbaa !350, !noalias !12653 ; 2 uses
  %i.qp = icmp eq i128 %i.qo, 0
  br i1 %i.qp, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, !prof !65

bb.ao:                                            ; preds = %.lr.ph85.i.split.i.i.i.i.i.i.i.i.i.i
  %i.qq = load i128, ptr %i.pd, align 16, !tbaa !350
  %i.qr = sdiv i128 %i.qo, %i.qq
  %extract.t.i.i52.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.qr to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %.lr.ph85.i.split.i.i.i.i.i.i.i.i.i.i
  %.sink.off0.i.i53.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i52.i.i.i.i.i.i.i.i.i.i, %bb.ao ], [ 0, %.lr.ph85.i.split.i.i.i.i.i.i.i.i.i.i ]
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.084.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sink.off0.i.i53.i.i.i.i.i.i.i.i.i.i, ptr %i.qs, align 8, !tbaa !125
  %i.qt = add nuw i64 %.084.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qu = icmp ult i64 %i.qt, %i.oy
  br i1 %i.qu, label %.lr.ph85.i.split.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12630

.lr.ph.i.split.i.i.i.i.i.i.i.i.i30.i:             ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit62.i.i.i.i.i.i.i.i.i.i.i
  %.01583.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.re, %_ZN8facebook5velox6StatusD2Ev.exit62.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oi, %.lr.ph.i.i.i.i24.i.i.i.i.i.i.i ] ; 3 uses
  %i.qv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.qw = or disjoint i64 %i.qv, %i.ok            ; 2 uses
  %i.qx = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.qw
  %i.qy = load i128, ptr %i.qx, align 16, !tbaa !350, !noalias !12652 ; 2 uses
  %i.qz = icmp eq i128 %i.qy, 0
  br i1 %i.qz, label %_ZN8facebook5velox6StatusD2Ev.exit62.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, !prof !65

bb.ap:                                            ; preds = %.lr.ph.i.split.i.i.i.i.i.i.i.i.i30.i
  %i.ra = load i128, ptr %i.oo, align 16, !tbaa !350
  %i.rb = sdiv i128 %i.qy, %i.ra
  %extract.t.i48.i.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.rb to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit62.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit62.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i30.i
  %.sink.off0.i49.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i48.i.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ 0, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i30.i ]
  %i.rc = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.qw
  store i64 %.sink.off0.i49.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rc, align 8, !tbaa !125
  %i.rd = add i64 %.01583.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.re = and i64 %i.rd, %.01583.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i54.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.re, 0
  br i1 %.not.i54.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.i.i.i.i.i.i.i.i.i30.i, !llvm.loop !12625

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_16FlatVectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit62.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit62.i.us.i.i.i.i.i.i.i.i.i.i, %middle.block344, %bb.an, %bb.am
  %i.rf = add nsw i32 %i.oe, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i25.i = icmp sgt i32 %i.rf, %i.lf
  br i1 %.not33.i.i.i.i.i.i.i.i.i25.i, label %._crit_edge.i.i.i.i.i.i.i.i.i26.i, label %bb.am, !llvm.loop !12631

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i26.i
  %i.rg = ashr i32 %i.lb, 6
  %i.rh = and i32 %i.lb, 63
  %i.ri = zext nneg i32 %i.rh to i64
  %notmask.i55.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ri
  %i.rj = xor i64 %notmask.i55.i.i.i.i.i.i.i.i.i.i, -1
  %i.rk = sext i32 %i.rg to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.rk
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !125
  %i.rn = and i64 %i.rm, %i.rj                    ; 3 uses
  %.not.i56.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i56.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.preheader.i57.i.i.i.i.i.i.i.i.i.i

.preheader.i57.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.aq
  %i.ro = sext i32 %i.lf to i64                   ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i60.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rp, align 8, !tbaa !1926
  %i.rq = getelementptr i8, ptr %.val.i60.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val12.i61.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.rq, align 1, !tbaa !1916
  %.val12.i61.fr.i.i.i.i.i.i.i.i.i.i = freeze i8 %.val12.i61.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.rr = icmp eq i8 %.val12.i61.fr.i.i.i.i.i.i.i.i.i.i, 0
  %i.rs = zext i8 %.val12.i61.fr.i.i.i.i.i.i.i.i.i.i to i64
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.rs
  br i1 %i.rr, label %_ZN8facebook5velox6StatusD2Ev.exit22.i65.us.i.i.i.i.i.i.i.i.i.i, label %.preheader.i57.split.i.i.i.i.i.i.i.i.i.i, !prof !65

_ZN8facebook5velox6StatusD2Ev.exit22.i65.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i57.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i65.us.i.i.i.i.i.i.i.i.i.i
  %.032.i62.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sa, %_ZN8facebook5velox6StatusD2Ev.exit22.i65.us.i.i.i.i.i.i.i.i.i.i ], [ %i.rn, %.preheader.i57.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ru = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i62.us.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.rv = or disjoint i64 %i.ru, %i.ro            ; 2 uses
  %i.rw = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.rv
  %i.rx = load i128, ptr %i.rw, align 16, !tbaa !350, !noalias !12654
  %extract.t1.i.i63.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.rx to i64
  %i.ry = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.rv
  store i64 %extract.t1.i.i63.us.i.i.i.i.i.i.i.i.i.i, ptr %i.ry, align 8, !tbaa !125
  %i.rz = add nuw i64 %.032.i62.us.i.i.i.i.i.i.i.i.i.i, 9223372036854775807
  %i.sa = and i64 %i.rz, %.032.i62.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i67.us.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sa, 0
  br i1 %.not10.i67.us.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit22.i65.us.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12620

.preheader.i57.split.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader.i57.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i65.i.i.i.i.i.i.i.i.i.i
  %.032.i62.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sk, %_ZN8facebook5velox6StatusD2Ev.exit22.i65.i.i.i.i.i.i.i.i.i.i ], [ %i.rn, %.preheader.i57.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.sb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i62.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sc = or disjoint i64 %i.sb, %i.ro            ; 2 uses
  %i.sd = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.sc
  %i.se = load i128, ptr %i.sd, align 16, !tbaa !350, !noalias !12654 ; 2 uses
  %i.sf = icmp eq i128 %i.se, 0
  br i1 %i.sf, label %_ZN8facebook5velox6StatusD2Ev.exit22.i65.i.i.i.i.i.i.i.i.i.i, label %bb.ar, !prof !65

bb.ar:                                            ; preds = %.preheader.i57.split.i.i.i.i.i.i.i.i.i.i
  %i.sg = load i128, ptr %i.rt, align 16, !tbaa !350
  %i.sh = sdiv i128 %i.se, %i.sg
  %extract.t.i.i64.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.sh to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i65.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit22.i65.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %.preheader.i57.split.i.i.i.i.i.i.i.i.i.i
  %.sink.off0.i.i66.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i64.i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ 0, %.preheader.i57.split.i.i.i.i.i.i.i.i.i.i ]
  %i.si = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.sc
  store i64 %.sink.off0.i.i66.i.i.i.i.i.i.i.i.i.i, ptr %i.si, align 8, !tbaa !125
  %i.sj = add nuw i64 %.032.i62.i.i.i.i.i.i.i.i.i.i, 9223372036854775807
  %i.sk = and i64 %i.sj, %.032.i62.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i67.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sk, 0
  br i1 %.not10.i67.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.preheader.i57.split.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12620

bb.as:                                            ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit.i, %bb.bd, %bb.bc, %bb.au
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.d
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !229 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not241 = icmp eq ptr %i.sn, %.val
  br i1 %.not241, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.sp = ptrtoint ptr %.val to i64
  %i.sq = ptrtoint ptr %i.sn to i64
  %i.sr = sub i64 %i.sq, %i.sp
  %i.ss = ashr exact i64 %i.sr, 4
  invoke void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ss)
          to label %._ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit_crit_edge168 unwind label %bb.as

._ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit_crit_edge168: ; preds = %bb.au
  %.val48.pre = load ptr, ptr %2, align 8, !tbaa !230
  %.val48.val.pre = load ptr, ptr %.val48.pre, align 8, !tbaa !233
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit: ; preds = %bb.at, %._ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit_crit_edge168
  %.val48.val = phi ptr [ %.val48.val.pre, %._ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit_crit_edge168 ], [ %.val.val, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.st = load ptr, ptr %4, align 8, !tbaa !296
  store ptr %i.st, ptr %6, align 8, !tbaa !411
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store ptr null, ptr %i.su, align 8, !tbaa !412
  %i.sv = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.sv, ptr noundef nonnull align 8 dereferenceable(94) %.val48.val, ptr noundef nonnull align 8 dereferenceable(38) %1, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE6resizeEm.exit
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.su) #33
  br label %.body

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i: ; preds = %bb.av
  %i.sx = load ptr, ptr %7, align 8, !tbaa !415   ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 8, !tbaa !417, !range !63, !noundef !64
  %i.ta = trunc nuw i8 %i.sz to i1
  %i.tb = load ptr, ptr %6, align 8, !tbaa !411
  store ptr %i.tb, ptr %i.sx, align 8, !tbaa !411
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 3 uses
  br i1 %i.ta, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit.i
  %i.td = load ptr, ptr %i.su, align 8, !tbaa !418
  store ptr null, ptr %i.su, align 8, !tbaa !418
  %i.te = load ptr, ptr %i.tc, align 8, !tbaa !418 ; 6 uses
  store ptr %i.td, ptr %i.tc, align 8, !tbaa !418
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EERKSR_IKNS0_4TypeEERNS1_7EvalCtxERST_:bb.a

.preheader.i37.i.i.i.i.i.i.i.i.i.i58:             ; preds = %bb.bz
  %i.ze = shl nsw i32 %i.yt, 6
  %i.zf = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !436
  %i.zh = getelementptr inbounds nuw i8, ptr %i.tz, i64 58
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !437, !range !63, !noundef !64
  %i.zj = trunc nuw i8 %i.zi to i1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.tz, i64 59
  %i.zl = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i40.i.i.i.i.i.i.i.i.i.i59 = load ptr, ptr %i.zn, align 8, !tbaa !1926
  %i.zo = getelementptr i8, ptr %.val.i40.i.i.i.i.i.i.i.i.i.i59, i64 1
  %.val13.i41.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.zo, align 1, !tbaa !1916 ; 2 uses
  %i.zp = icmp eq i8 %.val13.i41.i.i.i.i.i.i.i.i.i.i, 0
  %i.zq = zext i8 %.val13.i41.i.i.i.i.i.i.i.i.i.i to i64
  %i.zr = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.zq
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i48.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i58
  %.033.i42.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zd, %.preheader.i37.i.i.i.i.i.i.i.i.i.i58 ], [ %i.aam, %_ZN8facebook5velox6StatusD2Ev.exit23.i48.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i42.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.zt = trunc nuw nsw i64 %i.zs to i32
  %i.zu = or disjoint i32 %i.ze, %i.zt            ; 2 uses
  %i.zv = sext i32 %i.zu to i64                   ; 2 uses
  br i1 %i.zj, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.zw = load i8, ptr %i.zk, align 1, !tbaa !438, !range !63, !noundef !64
  %i.zx = trunc nuw i8 %i.zw to i1
  br i1 %i.zx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.zy = load i32, ptr %i.zm, align 8, !tbaa !439
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.zz = load ptr, ptr %i.zl, align 8, !tbaa !440
  %i.aaa = shl nsw i64 %i.zv, 2
  %i.aab = getelementptr inbounds i8, ptr %i.zz, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !53
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc, %bb.ca
  %.0.i.i.i.i44.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aac, %bb.cd ], [ %i.zy, %bb.cc ], [ %i.zu, %bb.ca ]
  %i.aad = sext i32 %.0.i.i.i.i44.i.i.i.i.i.i.i.i.i.i to i64
  %i.aae = shl nsw i64 %i.aad, 4
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.aae
  %.0.copyload.i.i.i.i45.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aaf, align 1 ; 3 uses
  %i.aag = icmp eq i128 %.0.copyload.i.i.i.i45.i.i.i.i.i.i.i.i.i.i, 0
  %i.aah = select i1 %i.zp, i1 true, i1 %i.aag, !prof !65
  %extract.t1.i.i46.i.i.i.i.i.i.i.i.i.i = trunc i128 %.0.copyload.i.i.i.i45.i.i.i.i.i.i.i.i.i.i to i64
  br i1 %i.aah, label %_ZN8facebook5velox6StatusD2Ev.exit23.i48.i.i.i.i.i.i.i.i.i.i, label %bb.ce, !prof !65

bb.ce:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i
  %i.aai = load i128, ptr %i.zr, align 16, !tbaa !350
  %i.aaj = sdiv i128 %.0.copyload.i.i.i.i45.i.i.i.i.i.i.i.i.i.i, %i.aai
  %extract.t.i.i47.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.aaj to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i48.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i48.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ce, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i
  %.sink.off0.i.i49.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i47.i.i.i.i.i.i.i.i.i.i, %bb.ce ], [ %extract.t1.i.i46.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i43.i.i.i.i.i.i.i.i.i.i ]
  %i.aak = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.zv
  store i64 %.sink.off0.i.i49.i.i.i.i.i.i.i.i.i.i, ptr %i.aak, align 8, !tbaa !125
  %i.aal = add i64 %.033.i42.i.i.i.i.i.i.i.i.i.i, -1
  %i.aam = and i64 %i.aal, %.033.i42.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i50.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aam, 0
  br i1 %.not10.i50.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit51.i.i.i.i.i.i.i.i.i.i, label %bb.ca, !llvm.loop !12635

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit51.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i48.i.i.i.i.i.i.i.i.i.i, %bb.bz, %bb.by
  %i.aan = add nsw i32 %i.wt, 64                  ; 2 uses
  %.not3385.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aan, %i.wu
  br i1 %.not3385.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i60:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit51.i.i.i.i.i.i.i.i.i.i
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.tz, i64 58 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.tz, i64 59 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.tz, i64 64 ; 3 uses
  br label %bb.cf

._crit_edge.i.i.i.i.i.i.i.i.i.i62:                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim.exit51.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i63 = icmp eq i32 %i.wq, %i.wu
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i63, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %bb.cq

bb.cf:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i60
  %i.aau = phi i32 [ %i.aan, %.lr.ph.i.i.i.i.i.i.i.i.i.i60 ], [ %i.aga, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.086.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.wt, %.lr.ph.i.i.i.i.i.i.i.i.i.i60 ], [ %i.aau, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aav = sdiv i32 %.086.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.wm, i64 %i.aaw
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !125 ; 2 uses
  switch i64 %i.aay, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i [
    i64 -1, label %bb.cg
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i25.i.i.i.i.i.i.i:                   ; preds = %bb.cf
  %i.aaz = shl nsw i32 %i.aav, 6
  %i.aba = load ptr, ptr %i.aap, align 8, !tbaa !436
  %i.abb = load i8, ptr %i.aaq, align 2, !tbaa !437, !range !63, !noundef !64
  %i.abc = trunc nuw i8 %i.abb to i1
  %.val27.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aao, align 8, !tbaa !1926
  %i.abd = getelementptr i8, ptr %.val27.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val30.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.abd, align 1, !tbaa !1916 ; 2 uses
  %i.abe = icmp eq i8 %.val30.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.abf = zext i8 %.val30.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.abf
  br label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %i.abh = shl nsw i32 %i.aav, 6                  ; 4 uses
  %i.abi = add i32 %i.abh, 64
  %i.abj = sext i32 %i.abi to i64                 ; 9 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i64 = add i32 %.086.i.i.i.i.i.i.i.i.i.i, 127
  %.not92.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i64, 64
  br i1 %.not92.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.cg
  %i.abk = sext i32 %i.abh to i64                 ; 22 uses
  %i.abl = load ptr, ptr %i.aap, align 8, !tbaa !436 ; 8 uses
  %i.abm = load i8, ptr %i.aaq, align 2, !tbaa !437, !range !63, !noundef !64
  %i.abn = trunc nuw i8 %i.abm to i1              ; 2 uses
  %.val.i53.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aao, align 8, !tbaa !1926
  %i.abo = getelementptr i8, ptr %.val.i53.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val28.i.i.i.i.i.i.i.i.i.i.i65 = load i8, ptr %i.abo, align 1, !tbaa !1916
  %.val28.i.fr.i.i.i.i.i.i.i.i.i.i66 = freeze i8 %.val28.i.i.i.i.i.i.i.i.i.i.i65 ; 2 uses
  %i.abp = icmp eq i8 %.val28.i.fr.i.i.i.i.i.i.i.i.i.i66, 0
  %i.abq = zext i8 %.val28.i.fr.i.i.i.i.i.i.i.i.i.i66 to i64
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.abq
  br i1 %i.abp, label %.lr.ph91.i.split.us.i.i.i.i.i.i.i.i.i.i, label %.lr.ph91.i.split.i.i.i.i.i.i.i.i.i.i, !prof !65

.lr.ph91.i.split.us.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.abn, label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph91.i.split.us.split.i.i.i.i.i.i.i.i.i.i

.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %.lr.ph91.i.split.us.i.i.i.i.i.i.i.i.i.i
  %i.abs = or disjoint i64 %i.abk, 1
  %i.abt = call i64 @llvm.umax.i64(i64 %i.abs, i64 %i.abj) ; 2 uses
  %i.abu = sub i64 %i.abt, %i.abk                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.abu, 38
  br i1 %min.iters.check, label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader
  %i.abv = or disjoint i64 %i.abk, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.abv, i64 %i.abj)
  %i.abw = xor i64 %i.abk, -1
  %i.abx = add i64 %umax, %i.abw                  ; 2 uses
  %i.aby = sext i32 %i.abh to i36                 ; 2 uses
  %i.abz = shl nsw i36 %i.aby, 4
  %i.aca = trunc i64 %i.abx to i36
  %i.acb = add i36 %i.aby, %i.aca
  %i.acc = shl i36 %i.acb, 4
  %i.acd = icmp slt i36 %i.acc, %i.abz
  %i.ace = icmp ugt i64 %i.abx, 4294967295
  %i.acf = or i1 %i.acd, %i.ace
  br i1 %i.acf, label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.acg = shl nsw i64 %i.abk, 3
  %scevgep = getelementptr i8, ptr %.sink.i.i, i64 %i.acg
  %i.ach = or disjoint i64 %i.abk, 1
  %umax302 = call i64 @llvm.umax.i64(i64 %i.ach, i64 %i.abj) ; 2 uses
  %i.aci = shl nsw i64 %umax302, 3
  %scevgep303 = getelementptr i8, ptr %.sink.i.i, i64 %i.aci
  %i.acj = sext i32 %i.abh to i36
  %i.ack = shl nsw i36 %i.acj, 4
  %i.acl = sext i36 %i.ack to i64                 ; 2 uses
  %scevgep304 = getelementptr i8, ptr %i.abl, i64 %i.acl
  %i.acm = shl nsw i64 %umax302, 4
  %i.acn = add i64 %i.acm, %i.acl
  %i.aco = shl nsw i64 %i.abk, 4
  %i.acp = sub i64 %i.acn, %i.aco
  %scevgep305 = getelementptr i8, ptr %i.abl, i64 %i.acp
  %bound0 = icmp ult ptr %scevgep, %scevgep305
  %bound1 = icmp ult ptr %scevgep304, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.acq = and i64 %i.abt, 1                      ; 2 uses
  %n.vec = sub i64 %i.abu, %i.acq                 ; 2 uses
  %i.acr = add i64 %n.vec, %i.abk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.acs = add nuw i64 %index, %i.abk             ; 2 uses
  %i.act = shl i64 %i.acs, 32
  %i.acu = ashr exact i64 %i.act, 28
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.acu ; 4 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 64
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 96
  %wide.load = load <2 x i128>, ptr %i.acv, align 1, !alias.scope !12655
  %wide.load306 = load <2 x i128>, ptr %i.acw, align 1, !alias.scope !12655
  %wide.load307 = load <2 x i128>, ptr %i.acx, align 1, !alias.scope !12655
  %wide.load308 = load <2 x i128>, ptr %i.acy, align 1, !alias.scope !12655
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.acs ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 32
  %16 = shufflevector <2 x i128> %wide.load, <2 x i128> %wide.load306, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = trunc <4 x i128> %16 to <4 x i64>
  store <4 x i64> %17, ptr %i.acz, align 8, !tbaa !125, !alias.scope !12656, !noalias !12655
  %18 = shufflevector <2 x i128> %wide.load307, <2 x i128> %wide.load308, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = trunc <4 x i128> %18 to <4 x i64>
  store <4 x i64> %19, ptr %i.ada, align 8, !tbaa !125, !alias.scope !12656, !noalias !12655
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.adb = icmp eq i64 %index.next, %n.vec
  br i1 %i.adb, label %middle.block, label %vector.body, !llvm.loop !12639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acq, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494

.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494: ; preds = %vector.memcheck, %vector.scevcheck, %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.090.i.us.us.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.abk, %vector.memcheck ], [ %i.abk, %vector.scevcheck ], [ %i.abk, %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.acr, %middle.block ]
  br label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i

.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i:             ; preds = %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494, %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i
  %.090.i.us.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.adg, %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i ], [ %.090.i.us.us.i.i.i.i.i.i.i.i.i.i.ph, %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i.preheader494 ] ; 3 uses
  %i.adc = shl i64 %.090.i.us.us.i.i.i.i.i.i.i.i.i.i, 32
  %i.add = ashr exact i64 %i.adc, 28
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.add
  %.0.copyload.i.i.i.i55.us.us.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.ade, align 1
  %extract.t1.i.i56.us.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %.0.copyload.i.i.i.i55.us.us.i.i.i.i.i.i.i.i.i.i to i64
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.090.i.us.us.i.i.i.i.i.i.i.i.i.i
  store i64 %extract.t1.i.i56.us.us.i.i.i.i.i.i.i.i.i.i, ptr %i.adf, align 8, !tbaa !125
  %i.adg = add nuw i64 %.090.i.us.us.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.adh = icmp ult i64 %i.adg, %i.abj
  br i1 %i.adh, label %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12640

.lr.ph91.i.split.us.split.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph91.i.split.us.i.i.i.i.i.i.i.i.i.i
  %i.adi = load i8, ptr %i.aar, align 1, !tbaa !438, !range !63, !noundef !64
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %.lr.ph91.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i, label %.lr.ph91.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i

.lr.ph91.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph91.i.split.us.split.i.i.i.i.i.i.i.i.i.i
  %i.adk = load i32, ptr %i.aat, align 8, !tbaa !439
  %i.adl = sext i32 %i.adk to i64
  %i.adm = shl nsw i64 %i.adl, 4                  ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.adm ; 3 uses
  %i.ado = or disjoint i64 %i.abk, 1
  %i.adp = call i64 @llvm.umax.i64(i64 %i.ado, i64 %i.abj) ; 2 uses
  %i.adq = sub i64 %i.adp, %i.abk                 ; 2 uses
  %min.iters.check319 = icmp ult i64 %i.adq, 8
  br i1 %min.iters.check319, label %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph91.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i
  %i.adr = shl nsw i64 %i.abk, 3
  %scevgep310 = getelementptr i8, ptr %.sink.i.i, i64 %i.adr
  %i.ads = or disjoint i64 %i.abk, 1
  %umax311 = call i64 @llvm.umax.i64(i64 %i.ads, i64 %i.abj)
  %i.adt = shl nsw i64 %umax311, 3
  %scevgep312 = getelementptr i8, ptr %.sink.i.i, i64 %i.adt
  %scevgep313 = getelementptr i8, ptr %i.abl, i64 16
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.adm
  %bound0315 = icmp ult ptr %scevgep310, %scevgep314
  %bound1316 = icmp ult ptr %i.adn, %scevgep312
  %found.conflict317 = and i1 %bound0315, %bound1316
  br i1 %found.conflict317, label %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %vector.memcheck309
  %i.adu = and i64 %i.adp, 1                      ; 2 uses
  %n.vec321 = sub i64 %i.adq, %i.adu              ; 2 uses
  %i.adv = add i64 %n.vec321, %i.abk
  %i.adw = load i128, ptr %i.adn, align 1, !alias.scope !12657
  %i.adx = trunc i128 %i.adw to i64
  %i.ady = insertelement <2 x i64> poison, i64 %i.adx, i64 0 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.sink.i.i, i64 %i.abk
  %20 = shufflevector <2 x i64> %i.ady, <2 x i64> poison, <4 x i32> zeroinitializer
  %21 = shufflevector <2 x i64> %i.ady, <2 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next324, %vector.body322 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index323 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %gep, i64 32
  store <4 x i64> %20, ptr %gep, align 8, !tbaa !125, !alias.scope !12658, !noalias !12657
  store <4 x i64> %21, ptr %i.adz, align 8, !tbaa !125, !alias.scope !12658, !noalias !12657
  %index.next324 = add nuw i64 %index323, 8       ; 2 uses
  %i.aea = icmp eq i64 %index.next324, %n.vec321
  br i1 %i.aea, label %middle.block325, label %vector.body322, !llvm.loop !12644

middle.block325:                                  ; preds = %vector.body322
  %cmp.n326 = icmp eq i64 %i.adu, 0
  br i1 %cmp.n326, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i.preheader

.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.memcheck309, %.lr.ph91.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i, %middle.block325
  %.090.i.us.us80.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.abk, %vector.memcheck309 ], [ %i.abk, %.lr.ph91.i.split.us.split.split.us.i.i.i.i.i.i.i.i.i.i ], [ %i.adv, %middle.block325 ]
  br label %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i

.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i.preheader, %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i
  %.090.i.us.us80.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aec, %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i ], [ %.090.i.us.us80.i.i.i.i.i.i.i.i.i.i.ph, %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0.copyload.i.i.i.i55.us.us83.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.adn, align 1
  %extract.t1.i.i56.us.us84.i.i.i.i.i.i.i.i.i.i = trunc i128 %.0.copyload.i.i.i.i55.us.us83.i.i.i.i.i.i.i.i.i.i to i64
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.090.i.us.us80.i.i.i.i.i.i.i.i.i.i
  store i64 %extract.t1.i.i56.us.us84.i.i.i.i.i.i.i.i.i.i, ptr %i.aeb, align 8, !tbaa !125
  %i.aec = add nuw i64 %.090.i.us.us80.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aed = icmp ult i64 %i.aec, %i.abj
  br i1 %i.aed, label %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12645

.lr.ph91.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph91.i.split.us.split.i.i.i.i.i.i.i.i.i.i
  %i.aee = load ptr, ptr %i.aas, align 8, !tbaa !440
  br label %.noexc24.i.us.i.i.i.i.i.i.i.i.i.i

.noexc24.i.us.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc24.i.us.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i
  %.090.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.abk, %.lr.ph91.i.split.us.split.split.i.i.i.i.i.i.i.i.i.i ], [ %i.aem, %.noexc24.i.us.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %sext.i.i.us.i.i.i.i.i.i.i.i.i.i = shl i64 %.090.i.us.i.i.i.i.i.i.i.i.i.i, 32
  %i.aef = ashr exact i64 %sext.i.i.us.i.i.i.i.i.i.i.i.i.i, 30
  %i.aeg = getelementptr inbounds i8, ptr %i.aee, i64 %i.aef
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !53
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = shl nsw i64 %i.aei, 4
  %i.aek = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.aej
  %.0.copyload.i.i.i.i55.us.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aek, align 1
  %extract.t1.i.i56.us.i.i.i.i.i.i.i.i.i.i = trunc i128 %.0.copyload.i.i.i.i55.us.i.i.i.i.i.i.i.i.i.i to i64
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.090.i.us.i.i.i.i.i.i.i.i.i.i
  store i64 %extract.t1.i.i56.us.i.i.i.i.i.i.i.i.i.i, ptr %i.ael, align 8, !tbaa !125
  %i.aem = add nuw i64 %.090.i.us.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aen = icmp ult i64 %i.aem, %i.abj
  br i1 %i.aen, label %.noexc24.i.us.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12646

.lr.ph91.i.split.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit41.i.i.i.i.i.i.i.i.i.i.i
  %.090.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afd, %_ZN8facebook5velox6StatusD2Ev.exit41.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abk, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.aeo = trunc i64 %.090.i.i.i.i.i.i.i.i.i.i.i to i32
  br i1 %i.abn, label %.noexc24.i.i.i.i.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph91.i.split.i.i.i.i.i.i.i.i.i.i
  %i.aep = load i8, ptr %i.aar, align 1, !tbaa !438, !range !63, !noundef !64
  %i.aeq = trunc nuw i8 %i.aep to i1
  br i1 %i.aeq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.aer = load i32, ptr %i.aat, align 8, !tbaa !439
  br label %.noexc24.i.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.aes = load ptr, ptr %i.aas, align 8, !tbaa !440
  %sext.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.090.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.aet = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i, 30
  %i.aeu = getelementptr inbounds i8, ptr %i.aes, i64 %i.aet
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !53
  br label %.noexc24.i.i.i.i.i.i.i.i.i.i.i

.noexc24.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.cj, %bb.ci, %.lr.ph91.i.split.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i54.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aev, %bb.cj ], [ %i.aer, %bb.ci ], [ %i.aeo, %.lr.ph91.i.split.i.i.i.i.i.i.i.i.i.i ]
  %i.aew = sext i32 %.0.i.i.i.i54.i.i.i.i.i.i.i.i.i.i to i64
  %i.aex = shl nsw i64 %i.aew, 4
  %i.aey = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.aex
  %.0.copyload.i.i.i.i55.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aey, align 1 ; 2 uses
  %i.aez = icmp eq i128 %.0.copyload.i.i.i.i55.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aez, label %_ZN8facebook5velox6StatusD2Ev.exit41.i.i.i.i.i.i.i.i.i.i.i, label %bb.ck, !prof !65

bb.ck:                                            ; preds = %.noexc24.i.i.i.i.i.i.i.i.i.i.i
  %i.afa = load i128, ptr %i.abr, align 16, !tbaa !350
  %i.afb = sdiv i128 %.0.copyload.i.i.i.i55.i.i.i.i.i.i.i.i.i.i, %i.afa
  %extract.t.i.i57.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.afb to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit41.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit41.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %.noexc24.i.i.i.i.i.i.i.i.i.i.i
  %.sink.off0.i.i58.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i.i57.i.i.i.i.i.i.i.i.i.i, %bb.ck ], [ 0, %.noexc24.i.i.i.i.i.i.i.i.i.i.i ]
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %.090.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sink.off0.i.i58.i.i.i.i.i.i.i.i.i.i, ptr %i.afc, align 8, !tbaa !125
  %i.afd = add nuw i64 %.090.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.afe = icmp ult i64 %i.afd, %i.abj
  br i1 %i.afe, label %.lr.ph91.i.split.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !12646

bb.cl:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i
  %.01589.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aay, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i ], [ %i.afz, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aff = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01589.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.afg = trunc nuw nsw i64 %i.aff to i32
  %i.afh = or disjoint i32 %i.aaz, %i.afg         ; 2 uses
  %i.afi = sext i32 %i.afh to i64                 ; 2 uses
  br i1 %i.abc, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afj = load i8, ptr %i.aar, align 1, !tbaa !438, !range !63, !noundef !64
  %i.afk = trunc nuw i8 %i.afj to i1
  br i1 %i.afk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.afl = load i32, ptr %i.aat, align 8, !tbaa !439
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.afm = load ptr, ptr %i.aas, align 8, !tbaa !440
  %i.afn = shl nsw i64 %i.afi, 2
  %i.afo = getelementptr inbounds i8, ptr %i.afm, i64 %i.afn
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !53
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cl
  %.0.i.i.i50.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.afp, %bb.co ], [ %i.afl, %bb.cn ], [ %i.afh, %bb.cl ]
  %i.afq = sext i32 %.0.i.i.i50.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.afr = shl nsw i64 %i.afq, 4
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.afr
  %.0.copyload.i.i.i51.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.afs, align 1 ; 3 uses
  %i.aft = icmp eq i128 %.0.copyload.i.i.i51.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.afu = select i1 %i.abe, i1 true, i1 %i.aft, !prof !65
  %extract.t1.i53.i.i.i.i.i.i.i.i.i.i.i = trunc i128 %.0.copyload.i.i.i51.i.i.i.i.i.i.i.i.i.i.i to i64
  br i1 %i.afu, label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, !prof !65

bb.cp:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i
  %i.afv = load i128, ptr %i.abg, align 16, !tbaa !350
  %i.afw = sdiv i128 %.0.copyload.i.i.i51.i.i.i.i.i.i.i.i.i.i.i, %i.afv
  %extract.t.i54.i.i.i.i.i.i.i.i.i.i.i = trunc i128 %i.afw to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i
  %.sink.off0.i55.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %extract.t.i54.i.i.i.i.i.i.i.i.i.i.i, %bb.cp ], [ %extract.t1.i53.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i59.i.i.i.i.i.i.i.i.i.i ]
  %i.afx = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.afi
  store i64 %.sink.off0.i55.i.i.i.i.i.i.i.i.i.i.i, ptr %i.afx, align 8, !tbaa !125
  %i.afy = add i64 %.01589.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.afz = and i64 %i.afy, %.01589.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i60.i.i.i.i.i.i.i.i.i.i67 = icmp eq i64 %i.afz, 0
  br i1 %.not.i60.i.i.i.i.i.i.i.i.i.i67, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i, label %bb.cl, !llvm.loop !12647

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSF_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEEEEEJSN_EEEE7iterateIJNS3_12VectorReaderISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS10_EEvRKNS0_17SelectivityVectorESZ_EUlSZ_E_EEvS14_SZ_T0_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit41.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.us.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.us.us81.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.us.us.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i, %middle.block325, %middle.block, %bb.cg, %bb.cf
  %i.aga = add nsw i32 %i.aau, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i61 = icmp sgt i32 %i.aga, %i.wu
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i61, label %._crit_edge.i.i.i.i.i.i.i.i.i.i62, label %bb.cf, !llvm.loop !12648

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i62
  %i.agb = ashr i32 %i.wq, 6
  %i.agc = and i32 %i.wq, 63
  %i.agd = zext nneg i32 %i.agc to i64
  %notmask.i61.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.agd
  %i.age = xor i64 %notmask.i61.i.i.i.i.i.i.i.i.i.i, -1
  %i.agf = sext i32 %i.agb to i64
  %i.agg = getelementptr inbounds [8 x i8], ptr %i.wm, i64 %i.agf
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !125
  %i.agi = and i64 %i.agh, %i.age                 ; 2 uses
  %.not.i62.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.agi, 0
  br i1 %.not.i62.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSM_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIST_EEDpRT0_.exit, label %.preheader.i63.i.i.i.i.i.i.i.i.i.i

.preheader.i63.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.cq
  %i.agj = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !436
  %i.agl = getelementptr inbounds nuw i8, ptr %i.tz, i64 58
  %i.agm = load i8, ptr %i.agl, align 2, !tbaa !437, !range !63, !noundef !64
  %i.agn = trunc nuw i8 %i.agm to i1
  %i.ago = getelementptr inbounds nuw i8, ptr %i.tz, i64 59
  %i.agp = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.agq = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i66.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agr, align 8, !tbaa !1926
  %i.ags = getelementptr i8, ptr %.val.i66.i.i.i.i.i.i.i.i.i.i, i64 1
  %.val13.i67.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ags, align 1, !tbaa !1916 ; 2 uses
  %i.agt = icmp eq i8 %.val13.i67.i.i.i.i.i.i.i.i.i.i, 0
  %i.agu = zext i8 %.val13.i67.i.i.i.i.i.i.i.i.i.i to i64
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.agu
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i74.i.i.i.i.i.i.i.i.i.i, %.preheader.i63.i.i.i.i.i.i.i.i.i.i
  %.033.i68.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agi, %.preheader.i63.i.i.i.i.i.i.i.i.i.i ], [ %i.ahq, %_ZN8facebook5velox6StatusD2Ev.exit23.i74.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.agw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i68.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.agx = trunc nuw nsw i64 %i.agw to i32
  %i.agy = or disjoint i32 %i.wu, %i.agx          ; 2 uses
  %i.agz = sext i32 %i.agy to i64                 ; 2 uses
  br i1 %i.agn, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i69.i.i.i.i.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aha = load i8, ptr %i.ago, align 1, !tbaa !438, !range !63, !noundef !64
  %i.ahb = trunc nuw i8 %i.aha to i1
  br i1 %i.ahb, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ahc = load i32, ptr %i.agq, align 8, !tbaa !439
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i69.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.ahd = load ptr, ptr %i.agp, align 8, !tbaa !440
  %i.ahe = shl nsw i64 %i.agz, 2
  %i.ahf = getelementptr inbounds i8, ptr %i.ahd, i64 %i.ahe
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !53
  br label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i69.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm2EEENSB_ILm6EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEEEEEJSJ_EEEE14doApplyNotNullILm0ENS1_12VectorReaderISJ_EEJETnNSt9enable_ifIXneT_L_ZNSL_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRlRbRT0_DpRKT1_.exit.i69.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %bb.ct, %bb.cr
  %.0.i.i.i.i70.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ahg, %bb.cu ], [ %i.ahc, %bb.ct ], [ %i.agy, %bb.cr ]
end_hunk_1
