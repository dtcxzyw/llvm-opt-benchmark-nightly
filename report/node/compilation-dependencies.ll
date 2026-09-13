Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/compilation-dependencies?download=true
inline.NumInlined: 1997
inline.NumDeleted: 919
begin_hunk_0_@_ZN2v88internal8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS0_7IsolateENS0_6HandleINS0_4CodeEEE:bb.a
  %i.ax = icmp ult i64 %.val.val.i.i30.i.i.i, %.val1.val.i.i31.i.i.i
  br i1 %i.ax, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph.i25.i.i.i
  %i.ay = ptrtoint ptr %.sroa.0.019.i26.i.i.i to i64
  %i.az = sub i64 %i.ay, %i.s                     ; 3 uses
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 1
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn18.i27.i.i.i, i64 16
  %i.bd = sub nsw i64 0, %i.ba
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.022.2, i64 %i.az, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i34.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = icmp eq i64 %i.az, 8
  br i1 %i.bf, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i34.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn18.i27.i.i.i, i64 8
  store ptr %i.aw, ptr %i.bg, align 8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i34.i.i.i

bb.p:                                             ; preds = %.lr.ph.i25.i.i.i
  %i.bh = load ptr, ptr %.pn18.i27.i.i.i, align 8 ; 2 uses
  %.val2.i9.i.i32.i.i.i = load ptr, ptr %i.bh, align 8
  %.val2.val.i10.i.i33.i.i.i = load i64, ptr %.val2.i9.i.i32.i.i.i, align 8
  %i.bi = icmp ult i64 %.val.val.i.i30.i.i.i, %.val2.val.i10.i.i33.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i37.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i34.i.i.i

.lr.ph.i.i37.i.i.i:                               ; preds = %bb.p, %.lr.ph.i.i37.i.i.i
  %i.bj = phi ptr [ %i.bk, %.lr.ph.i.i37.i.i.i ], [ %i.bh, %bb.p ]
  %.sroa.0.012.i.i38.i.i.i = phi ptr [ %.sroa.0.0.i.i40.i.i.i, %.lr.ph.i.i37.i.i.i ], [ %.pn18.i27.i.i.i, %bb.p ] ; 3 uses
  %.sroa.03.011.i.i39.i.i.i = phi ptr [ %.sroa.0.012.i.i38.i.i.i, %.lr.ph.i.i37.i.i.i ], [ %.sroa.0.019.i26.i.i.i, %bb.p ]
  store ptr %i.bj, ptr %.sroa.03.011.i.i39.i.i.i, align 8
  %.sroa.0.0.i.i40.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i38.i.i.i, i64 -8 ; 2 uses
  %.val.val.i8.i41.i.i.i = load ptr, ptr %i.av, align 8
  %.val.val.val.i.i42.i.i.i = load i64, ptr %.val.val.i8.i41.i.i.i, align 8
  %i.bk = load ptr, ptr %.sroa.0.0.i.i40.i.i.i, align 8 ; 2 uses
  %.val2.i.i.i43.i.i.i = load ptr, ptr %i.bk, align 8
  %.val2.val.i.i.i44.i.i.i = load i64, ptr %.val2.i.i.i43.i.i.i, align 8
  %i.bl = icmp ult i64 %.val.val.val.i.i42.i.i.i, %.val2.val.i.i.i44.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i37.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i34.i.i.i, !llvm.loop !27

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEESK_ET0_T_SM_SL_.exit.i34.i.i.i: ; preds = %.lr.ph.i.i37.i.i.i, %bb.p, %bb.o, %bb.n, %bb.m
  %.sink.i35.i.i.i = phi ptr [ %.sroa.022.2, %bb.o ], [ %.sroa.022.2, %bb.m ], [ %.sroa.022.2, %bb.n ], [ %.sroa.0.019.i26.i.i.i, %bb.p ], [ %.sroa.0.012.i.i38.i.i.i, %.lr.ph.i.i37.i.i.i ]
  store ptr %i.av, ptr %.sink.i35.i.i.i, align 8
  %.sroa.0.0.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26.i.i.i, i64 8
  %i.bm = icmp eq ptr %.sroa.0.019.i26.i.i.i, %.pn
  br i1 %i.bm, label %.lr.ph50.preheader, label %.lr.ph.i25.i.i.i, !llvm.loop !28

.lr.ph:                                           ; preds = %bb.e, %_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit
  %storemerge46 = phi ptr [ %.0.i, %_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit ], [ %.0.i.i, %bb.e ] ; 3 uses
  %.sroa.022.045 = phi ptr [ %.sroa.022.2, %_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit ], [ %.sroa.11.1, %bb.e ] ; 5 uses
  %.sroa.20.044 = phi ptr [ %.sroa.20.2, %_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit ], [ %.sroa.20.1, %bb.e ] ; 3 uses
  %.sroa.11.043 = phi ptr [ %.sroa.11.2, %_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit ], [ %.sroa.11.1, %bb.e ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.11.043, %.sroa.20.044
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  store ptr %storemerge46, ptr %.sroa.11.043, align 8
  br label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE9push_backERKSD_.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bn = ptrtoint ptr %.sroa.20.044 to i64
  %i.bo = ptrtoint ptr %.sroa.022.045 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.s, label %_ZNKSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #22
  unreachable

_ZNKSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #23 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %storemerge46, ptr %i.by, align 8
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.t, label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %.sroa.022.045, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i

_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i: ; preds = %bb.t, %_ZNKSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.022.045, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.045, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i

_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE9push_backERKSD_.exit

_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE9push_backERKSD_.exit: ; preds = %bb.q, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i
  %.pn = phi ptr [ %i.by, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ], [ %.sroa.11.043, %bb.q ] ; 5 uses
  %.sroa.20.2 = phi ptr [ %i.ca, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ], [ %.sroa.20.044, %bb.q ] ; 3 uses
  %.sroa.022.2 = phi ptr [ %i.bx, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE17_M_realloc_insertIJRKSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i ], [ %.sroa.022.045, %bb.q ] ; 22 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 5 uses
  %.val11 = load ptr, ptr %i.h, align 8
  %.val12 = load i32, ptr %i.i, align 8
  %i.cb = zext i32 %.val12 to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.cb
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE9push_backERKSD_.exit
  %.pn.i = phi ptr [ %storemerge46, %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EE9push_backERKSD_.exit ], [ %.0.i, %bb.w ] ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 3 uses
  %i.cd = icmp ult ptr %.0.i, %i.cc
  br i1 %i.cd, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn.i, i64 28
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit, label %bb.v, !llvm.loop !0

_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_10HeapObjectEEENS0_5FlagsINS2_13DependentCode15DependencyGroupEjjEENS2_8compiler12_GLOBAL__N_119PendingDependencies16HandleValueEqualENS2_20ZoneAllocationPolicyEE4NextEPNS0_20TemplateHashMapEntryIS5_S9_EE.exit: ; preds = %bb.w
  br label %.lr.ph, !llvm.loop !30

._crit_edge51:                                    ; preds = %bb.d, %.lr.ph50, %._crit_edge
  %.sroa.20.0.lcssa6268 = phi ptr [ %.sroa.20.2, %._crit_edge ], [ %.sroa.20.2, %.lr.ph50 ], [ %.sroa.20.1, %bb.d ]
  %.sroa.022.0.lcssa6367 = phi ptr [ %.sroa.022.2, %._crit_edge ], [ %.sroa.022.2, %.lr.ph50 ], [ %.sroa.11.1, %bb.d ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i15 = icmp eq ptr %.sroa.022.0.lcssa6367, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge51
  %i.ch = ptrtoint ptr %.sroa.20.0.lcssa6268 to i64
  %i.ci = ptrtoint ptr %.sroa.022.0.lcssa6367 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.0.lcssa6367, i64 noundef %i.cj) #24
  br label %_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EED2Ev.exit

_ZNSt6vectorIPKN2v84base20TemplateHashMapEntryINS0_8internal6HandleINS3_10HeapObjectEEENS1_5FlagsINS3_13DependentCode15DependencyGroupEjjEEEESaISD_EED2Ev.exit: ; preds = %._crit_edge51, %bb.x
  ret void

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.lr.ph50
  %.sroa.016.049 = phi ptr [ %i.cm, %.lr.ph50 ], [ %.sroa.022.2, %.lr.ph50.preheader ] ; 3 uses
  %i.ck = load ptr, ptr %.sroa.016.049, align 8   ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.cl, align 8
  tail call void @_ZN2v88internal13DependentCode17InstallDependencyEPNS0_7IsolateENS0_6HandleINS0_4CodeEEENS4_INS0_10HeapObjectEEENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef %1, ptr %2, ptr %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload) #21
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.016.049, i64 8
  %i.cn = icmp eq ptr %.sroa.016.049, %.pn
  br i1 %i.cn, label %._crit_edge51, label %.lr.ph50
}

declare void @_ZN2v88internal13DependentCode17InstallDependencyEPNS0_7IsolateENS0_6HandleINS0_4CodeEEENS4_INS0_10HeapObjectEEENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef, ptr, ptr, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEET_SW_SW_T0_.exit
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dw, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.035.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.035.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load ptr, ptr %i.z, align 8
  %.val.i.i.us.i.i.i = load ptr, ptr %i.aa, align 8
  %.val1.i.i.us.i.i.i = load ptr, ptr %i.ab, align 8
  %.val.val.i.i.us.i.i.i = load i64, ptr %.val.i.i.us.i.i.i, align 8
  %.val1.val.i.i.us.i.i.i = load i64, ptr %.val1.i.i.us.i.i.i, align 8
  %i.ac = icmp ult i64 %.val.val.i.i.us.i.i.i, %.val1.val.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.035.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !32

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %.val.val.i24.i.us.i.i.i = load ptr, ptr %i.t, align 8
  %.val.val.val.i.i.us.i.i.i = load i64, ptr %.val.val.i24.i.us.i.i.i, align 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.ai, align 8
  %.val.val.i.i.i.us.i.i.i = load i64, ptr %.val.i.i.i.us.i.i.i, align 8
  %i.aj = icmp ult i64 %.val.val.i.i.i.us.i.i.i, %.val.val.val.i.i.us.i.i.i
  br i1 %i.aj, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i, !llvm.loop !33

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.am, align 8
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !34

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = load ptr, ptr %i.av, align 8
  %.val.i.i.i.i.i = load ptr, ptr %i.aw, align 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ax, align 8
  %.val.val.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i, align 8
  %.val1.val.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i, align 8
  %i.ay = icmp ult i64 %.val.val.i.i.i.i.i, %.val1.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.035.i.i.i.i
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !32

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load ptr, ptr %i.q, align 8
  store ptr %i.be, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %.val.val.i24.i.i.i.i = load ptr, ptr %i.ap, align 8
  %.val.val.val.i.i.i.i.i = load i64, ptr %.val.val.i24.i.i.i.i, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8
  %.val.val.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8
  %i.bi = icmp ult i64 %.val.val.i.i.i.i.i.i, %.val.val.val.i.i.i.i.i
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i, !llvm.loop !33

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ap, ptr %i.bl, align 8
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !34

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElSF_NS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_T0_SX_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_RT0_.exit.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = load ptr, ptr %.fr29, align 8
  store ptr %i.bp, ptr %i.bn, align 8
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.035.i.i.i22.i = phi i64 [ %spec.select.i.i.i27.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.035.i.i.i22.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load ptr, ptr %i.by, align 8
  %i.cc = load ptr, ptr %i.ca, align 8
  %.val.i.i.i.i23.i = load ptr, ptr %i.cb, align 8
  %.val1.i.i.i.i24.i = load ptr, ptr %i.cc, align 8
  %.val.val.i.i.i.i25.i = load i64, ptr %.val.i.i.i.i23.i, align 8
  %.val1.val.i.i.i.i26.i = load i64, ptr %.val1.i.i.i.i24.i, align 8
  %i.cd = icmp ult i64 %.val.val.i.i.i.i25.i, %.val1.val.i.i.i.i26.i
  %spec.select.i.i.i27.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i27.i
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.035.i.i.i22.i
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = icmp slt i64 %spec.select.i.i.i27.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i10.i, !llvm.loop !32

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i27.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.ci = and i64 %i.br, 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cq, ptr %i.cr, align 8
  br label %.lr.ph.i.i.i.i13.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i.preheader

.lr.ph.i.i.i.i13.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i14.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.co, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %.lr.ph.i.i.i.i13.i.preheader, %bb.i
  %.010.i.i.i.i14.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i13.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i56.i.i.i
  %.val.val.i24.i.i.i16.i = load ptr, ptr %i.bo, align 8
  %.val.val.val.i.i.i.i17.i = load i64, ptr %.val.val.i24.i.i.i16.i, align 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.val.i.i.i.i.i18.i = load ptr, ptr %i.ct, align 8
  %.val.val.i.i.i.i.i19.i = load i64, ptr %.val.i.i.i.i.i18.i, align 8
  %i.cu = icmp ult i64 %.val.val.i.i.i.i.i19.i, %.val.val.val.i.i.i.i17.i
  br i1 %i.cu, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store ptr %i.ct, ptr %i.cv, align 8
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i, !llvm.loop !33

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i13.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i14.i, %.lr.ph.i.i.i.i13.i ], [ 0, %bb.i ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i20.i
  store ptr %i.bo, ptr %i.cw, align 8
  %i.cx = icmp sgt i64 %i.br, 8
  br i1 %i.cx, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_T0_.exit, !llvm.loop !35

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dx, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02752, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dd = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.de = load ptr, ptr %i.db, align 8            ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.dd, align 8
  %.val1.i.i.i = load ptr, ptr %i.de, align 8
  %.val.val.i.i.i = load i64, ptr %.val.i.i.i, align 8 ; 3 uses
  %.val1.val.i.i.i = load i64, ptr %.val1.i.i.i, align 8 ; 3 uses
  %i.df = icmp ult i64 %.val.val.i.i.i, %.val1.val.i.i.i
  %i.dg = load ptr, ptr %i.dc, align 8            ; 3 uses
  %.val1.i27.i.i = load ptr, ptr %i.dg, align 8
  %.val1.val.i29.i.i = load i64, ptr %.val1.i27.i.i, align 8 ; 4 uses
  br i1 %i.df, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph54
  %i.dh = icmp ult i64 %.val1.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %.fr29, align 8
  store ptr %i.de, ptr %.fr29, align 8
  store ptr %i.di, ptr %i.db, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.dj = icmp ult i64 %.val.val.i.i.i, %.val1.val.i29.i.i
  %i.dk = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.dg, ptr %.fr29, align 8
  store ptr %i.dk, ptr %i.dc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  store ptr %i.dd, ptr %.fr29, align 8
  store ptr %i.dk, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph54
  %i.dl = icmp ult i64 %.val.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %.fr29, align 8
  store ptr %i.dd, ptr %.fr29, align 8
  store ptr %i.dm, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp ult i64 %.val1.val.i.i.i, %.val1.val.i29.i.i
  %i.do = load ptr, ptr %.fr29, align 8           ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.dg, ptr %.fr29, align 8
  store ptr %i.do, ptr %i.dc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  store ptr %i.de, ptr %.fr29, align 8
  store ptr %i.do, ptr %i.db, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader, %bb.v
  %.sroa.016.0.i.i = phi ptr [ %i.ds, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2653, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i.preheader ]
  %i.dp = load ptr, ptr %.fr29, align 8
  %.val1.i.i13.i = load ptr, ptr %i.dp, align 8
  %.val1.val.i.i14.i = load i64, ptr %.val1.i.i13.i, align 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i ], [ %i.ds, %bb.t ] ; 8 uses
  %i.dq = load ptr, ptr %.sroa.016.1.i.i, align 8 ; 2 uses
  %.val.i.i15.i = load ptr, ptr %i.dq, align 8
  %.val.val.i.i16.i = load i64, ptr %.val.i.i15.i, align 8
  %i.dr = icmp ult i64 %.val.val.i.i16.i, %.val1.val.i.i14.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.t, label %.preheader.i.i, !llvm.loop !36

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.dt = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
  %.val1.i11.i.i = load ptr, ptr %i.dt, align 8
  %.val1.val.i13.i.i = load i64, ptr %.val1.i11.i.i, align 8
  %i.du = icmp ult i64 %.val1.val.i.i14.i, %.val1.val.i13.i.i
  br i1 %i.du, label %.preheader.i.i, label %bb.u, !llvm.loop !37

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEET_SW_SW_T0_.exit

bb.v:                                             ; preds = %bb.u
  store ptr %i.dt, ptr %.sroa.016.1.i.i, align 8
  store ptr %i.dq, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_SW_T0_.exit.i, !llvm.loop !38

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEET_SW_SW_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2653, i64 noundef %i.cz)
  %i.dv = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.dw = sub i64 %i.dv, %i.a                     ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 3                 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_T0_.exit, !llvm.loop !31

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEET_SW_SW_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v84base20TemplateHashMapEntryINS2_8internal6HandleINS5_10HeapObjectEEENS3_5FlagsINS5_13DependentCode15DependencyGroupEjjEEEESt6vectorISF_SaISF_EEEENS0_5__ops15_Iter_comp_iterIZNS5_8compiler12_GLOBAL__N_119PendingDependencies21InstallAllPredictableEPNS5_7IsolateENS6_INS5_4CodeEEEEUlSF_SF_E_EEEvT_SW_SW_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = icmp ult ptr %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.al, ptr %i.am, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.ao, ptr %i.aq, align 8
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.m, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit, !llvm.loop !40

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -8 ; 3 uses
  %i.ay = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.az = load ptr, ptr %i.aw, align 8            ; 5 uses
  %i.ba = icmp ult ptr %i.ay, %i.az
  %i.bb = load ptr, ptr %i.ax, align 8            ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp ult ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %0, align 8
  store ptr %i.az, ptr %0, align 8
  store ptr %i.bd, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult ptr %i.ay, %i.bb
  %i.bf = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.bb, ptr %0, align 8
  store ptr %i.bf, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store ptr %i.ay, ptr %0, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp ult ptr %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %0, align 8
  store ptr %i.ay, ptr %0, align 8
  store ptr %i.bh, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult ptr %i.az, %i.bb
  %i.bj = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.bb, ptr %0, align 8
  store ptr %i.bj, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store ptr %i.az, ptr %0, align 8
  store ptr %i.bj, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %i.bk = load ptr, ptr %0, align 8               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2v88internal8compiler21CompilationDependencyESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load ptr, ptr %.sroa.012.1.i.i, align 8 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !41

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.bo = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
end_hunk_0
