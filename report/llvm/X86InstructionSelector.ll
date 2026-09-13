Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86InstructionSelector?download=true
inline.NumInlined: 3273
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_122X86InstructionSelector30setupGeneratedPerFunctionStateERN4llvm15MachineFunctionE:bb.a
  br i1 %i.ah, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i21.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i21.i:      ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread40.i
  %i.ai = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ag, i32 noundef 19) #21, !noalias !695
  br i1 %i.ai, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i21.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !402, !noalias !695 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ak, null
  br i1 %.not.i22.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread44.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !696, !noalias !695 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.am, null
  br i1 %.not9.i23.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread44.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.i: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !451, !noalias !695
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !452, !noalias !695
  %i.ar = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef nonnull %i.am, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef 2) #21, !noalias !695
  br i1 %i.ar, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread44.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread44.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.i, %bb.g, %bb.f
  %i.as = or disjoint i64 %i.q, 32768
  br label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread44.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.i, %_ZNK4llvm8Function10hasOptSizeEv.exit.i21.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread40.i
  %i.at = phi i64 [ %i.q, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread40.i ], [ %i.q, %_ZNK4llvm8Function10hasOptSizeEv.exit.i21.i ], [ %i.as, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread44.i ], [ %i.q, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 546
  %i.av = load i8, ptr %i.au, align 2, !tbaa !697, !range !168, !noalias !695, !noundef !169
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i

bb.h:                                             ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i
  %i.ax = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392 ; 2 uses
  %i.ay = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ax, i32 noundef 51) #21, !noalias !695
  br i1 %i.ay, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i26.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i26.i:      ; preds = %bb.h
  %i.az = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ax, i32 noundef 19) #21, !noalias !695
  br i1 %i.az, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i26.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !402, !noalias !695 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.bb, null
  br i1 %.not.i27.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !696, !noalias !695 ; 2 uses
  %.not9.i28.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i28.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.i: ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !451, !noalias !695
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !452, !noalias !695
  %i.bi = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef nonnull %i.bd, ptr noundef %i.bf, ptr noundef %i.bh, i32 noundef 2) #21, !noalias !695
  br i1 %i.bi, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.i, %_ZNK4llvm8Function10hasOptSizeEv.exit.i26.i, %bb.h, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit25.thread.i
  %i.bj = or disjoint i64 %spec.select, 268435456
  br label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.i, %bb.j, %bb.i
  %.sroa.0.2 = phi i64 [ %i.bj, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread.i ], [ %spec.select, %bb.i ], [ %spec.select, %bb.j ], [ %spec.select, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.i ] ; 2 uses
  %i.bk = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bk, i32 noundef 51) #21, !noalias !695
  br i1 %i.bl, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i31.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i31.i:      ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i
  %i.bm = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bk, i32 noundef 19) #21, !noalias !695
  br i1 %i.bm, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i31.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !402, !noalias !695 ; 2 uses
  %.not.i32.i = icmp eq ptr %i.bo, null
  br i1 %.not.i32.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !696, !noalias !695 ; 2 uses
  %.not9.i33.i = icmp eq ptr %i.bq, null
  br i1 %.not9.i33.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.i: ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !451, !noalias !695
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !452, !noalias !695
  %i.bv = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef nonnull %i.bq, ptr noundef %i.bs, ptr noundef %i.bu, i32 noundef 2) #21, !noalias !695
  br i1 %i.bv, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.i, %bb.l, %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !271, !noalias !695
  %i.by = icmp sgt i32 %i.bx, 4
  br i1 %i.by, label %_ZNK12_GLOBAL__N_122X86InstructionSelector32computeAvailableFunctionFeaturesEPKN4llvm12X86SubtargetEPKNS1_15MachineFunctionE.exit, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.i, %_ZNK4llvm8Function10hasOptSizeEv.exit.i31.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit30.thread48.i
  %i.bz = or i64 %.sroa.0.2, 144115188075855872
  br label %_ZNK12_GLOBAL__N_122X86InstructionSelector32computeAvailableFunctionFeaturesEPKN4llvm12X86SubtargetEPKNS1_15MachineFunctionE.exit

_ZNK12_GLOBAL__N_122X86InstructionSelector32computeAvailableFunctionFeaturesEPKN4llvm12X86SubtargetEPKNS1_15MachineFunctionE.exit: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i
  %.sroa.0.3 = phi i64 [ %i.bz, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread.i ], [ %.sroa.0.2, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit35.thread52.i ] ; 2 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !702, !noalias !695
  %i.cd = tail call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.cc, ptr nonnull @.str, i64 24) #21, !noalias !695
  %.not.i = icmp eq ptr %i.cd, null
  %i.ce = or i64 %.sroa.0.3, 137438953472
  %spec.select5 = select i1 %.not.i, i64 %.sroa.0.3, i64 %i.ce ; 2 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !702, !noalias !695
  %i.ci = tail call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ch, ptr nonnull @.str, i64 24) #21, !noalias !695
  %.not19.i = icmp eq ptr %i.ci, null
  %i.cj = or i64 %spec.select5, 34359738368
  %.sroa.0.5 = select i1 %.not19.i, i64 %i.cj, i64 %spec.select5
  %i.ck = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !703, !noalias !695
  %i.cn = lshr i16 %i.cm, 4
  %i.co = and i16 %i.cn, 1023
  %i.cp = zext nneg i16 %i.co to i32
  %i.cq = tail call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.b, i32 noundef %i.cp), !noalias !695
  %i.cr = or i64 %i.at, 16777216
  %spec.select.i = select i1 %i.cq, i64 %i.cr, i64 %i.at ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !703, !noalias !695
  %i.cv = lshr i16 %i.cu, 4
  %i.cw = and i16 %i.cv, 1023
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = tail call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.b, i32 noundef %i.cx), !noalias !695
  %i.cz = or i64 %spec.select.i, 8388608
  %i.da = select i1 %i.cy, i64 %spec.select.i, i64 %i.cz
  %i.db = load ptr, ptr %1, align 8, !tbaa !394, !noalias !695, !nonnull !169, !align !392
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !703, !noalias !695
  %i.de = and i16 %i.dd, 16368
  %i.df = icmp eq i16 %i.de, 176
  %.sink62.i = select i1 %i.df, i64 4194304, i64 2097152
  %i.dg = or i64 %.sink62.i, %i.da
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.0.5, ptr %i.dh, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.dg, ptr %.sroa.103.0..sroa_idx, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20GIMatchTableExecutor7setupMFERNS_15MachineFunctionEPNS_18GISelValueTrackingEPNS_15CodeGenCoverageEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !704
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !457
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !451
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.e, align 8, !tbaa !452
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !402
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK12_GLOBAL__N_122X86InstructionSelector13getMatchTableEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZZNK12_GLOBAL__N_122X86InstructionSelector13getMatchTableEvE11MatchTable0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122X86InstructionSelector20testImmPredicate_I64Ejl(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %3
    i32 10, label %bb.l
    i32 11, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %2, 1
  %i.b = and i64 %i.a, %2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = icmp ugt i64 %2, 4294967295
  %spec.select = and i1 %i.d, %i.c
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %2, 2147483648
  %i.f = icmp ult i64 %i.e, 4294967296
  br i1 %i.f, label %_ZN4llvm13isPowerOf2_64Em.exit19, label %_ZN4llvm13isPowerOf2_64Em.exit

_ZN4llvm13isPowerOf2_64Em.exit:                   ; preds = %bb.c
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.h = icmp samesign ult i64 %i.g, 2
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %2, 2147483648
  %or.cond = icmp ult i64 %i.i, 6442450944
  br i1 %or.cond, label %_ZN4llvm13isPowerOf2_64Em.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.k = icmp samesign ugt i64 %i.j, 62
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.f:                                             ; preds = %bb.a
  %i.l = add i64 %2, 128
  %i.m = icmp ult i64 %i.l, 256
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.g:                                             ; preds = %bb.a
  %i.n = add i64 %2, 128
  %i.o = icmp ult i64 %i.n, 256
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.h:                                             ; preds = %bb.a
  %i.p = add i64 %2, 128
  %i.q = icmp ult i64 %i.p, 256
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.i:                                             ; preds = %bb.a
  %i.r = add i64 %2, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.j:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %2, 4294967296
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

3:                                                ; preds = %bb.a
  %4 = icmp ult i64 %2, 4294967296
  br i1 %4, label %bb.k, label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.k:                                             ; preds = %3
  %sext = shl nuw i64 %2, 32
  %5 = ashr exact i64 %sext, 32
  %6 = add nsw i64 %5, 128
  %i.u = icmp ult i64 %6, 256
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.l:                                             ; preds = %bb.a
  %i.v = add i64 %2, 2147483648
  %i.w = icmp ult i64 %i.v, 4294967296
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.m:                                             ; preds = %bb.a
  %i.x = and i64 %2, -256
  %i.y = icmp eq i64 %i.x, 65280
  br label %_ZN4llvm13isPowerOf2_64Em.exit19

bb.n:                                             ; preds = %bb.a
  unreachable

_ZN4llvm13isPowerOf2_64Em.exit19:                 ; preds = %bb.b, %bb.e, %3, %bb.k, %bb.d, %bb.c, %_ZN4llvm13isPowerOf2_64Em.exit, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i1 [ %i.y, %bb.m ], [ false, %3 ], [ %i.h, %_ZN4llvm13isPowerOf2_64Em.exit ], [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.t, %bb.j ], [ %i.u, %bb.k ], [ %i.w, %bb.l ], [ %spec.select, %bb.b ], [ false, %bb.c ], [ %i.k, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122X86InstructionSelector22testImmPredicate_APIntEjRKN4llvm5APIntE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122X86InstructionSelector24testImmPredicate_APFloatEjRKN4llvm7APFloatE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !281
  %.not.i.i.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.c, ptr %2
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.e = load i8, ptr %i.d, align 4               ; 4 uses
  switch i32 %1, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = and i8 %i.e, 15
  %i.g = icmp eq i8 %i.f, 3
  br label %_ZNK4llvm7APFloat10isMinusOneEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = and i8 %i.e, 8
  %.not.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4llvm7APFloat5isOneEv.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef i32 @_ZNK4llvm6detail9IEEEFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  br label %_ZNK4llvm7APFloat5isOneEv.exit

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  br label %_ZNK4llvm7APFloat5isOneEv.exit

_ZNK4llvm7APFloat5isOneEv.exit:                   ; preds = %bb.c, %bb.e, %bb.f
  %i.k = phi i32 [ -2147483648, %bb.c ], [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  %i.l = icmp eq i32 %i.k, 0
  br label %_ZNK4llvm7APFloat10isMinusOneEv.exit

bb.g:                                             ; preds = %bb.a
  %i.m = and i8 %i.e, 15
  %i.n = icmp eq i8 %i.m, 11
  br label %_ZNK4llvm7APFloat10isMinusOneEv.exit

bb.h:                                             ; preds = %bb.a
  %i.o = and i8 %i.e, 8
  %.not2.i.i = icmp eq i8 %i.o, 0
  br i1 %.not2.i.i, label %_ZNK4llvm7APFloat10isMinusOneEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @_ZNK4llvm6detail9IEEEFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  br label %_ZNK4llvm7APFloat15getExactLog2AbsEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.q = tail call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  br label %_ZNK4llvm7APFloat15getExactLog2AbsEv.exit.i.i

_ZNK4llvm7APFloat15getExactLog2AbsEv.exit.i.i:    ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.p, %bb.j ], [ %i.q, %bb.k ]
  %i.r = icmp eq i32 %.0.i.i.i, 0
  br label %_ZNK4llvm7APFloat10isMinusOneEv.exit

bb.l:                                             ; preds = %bb.a
  unreachable

_ZNK4llvm7APFloat10isMinusOneEv.exit:             ; preds = %_ZNK4llvm7APFloat15getExactLog2AbsEv.exit.i.i, %bb.h, %bb.g, %_ZNK4llvm7APFloat5isOneEv.exit, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ %i.l, %_ZNK4llvm7APFloat5isOneEv.exit ], [ %i.n, %bb.g ], [ false, %bb.h ], [ %i.r, %_ZNK4llvm7APFloat15getExactLog2AbsEv.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122X86InstructionSelector18testMIPredicate_MIEjRKN4llvm12MachineInstrERKNS1_20GIMatchTableExecutor12MatcherStateE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !467
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !468  ; 4 uses
  switch i32 %1, label %bb.al [
    i32 1, label %_ZNK4llvm13GMemOperation8isSimpleEv.exit
    i32 2, label %_ZNK4llvm13GMemOperation8isSimpleEv.exit
    i32 3, label %_ZNK4llvm13GMemOperation8isSimpleEv.exit
    i32 4, label %_ZNK4llvm13GMemOperation8isSimpleEv.exit
    i32 5, label %bb.b
    i32 6, label %bb.c
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.u
    i32 10, label %bb.ak
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !469
  %i.i = and i32 %i.h, 16
  %i.j = icmp ne i32 %i.i, 0
  br label %_ZNK4llvm13GMemOperation8isSimpleEv.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZNK4llvm13GMemOperation8isSimpleEv.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !470
  %i.m = icmp eq i32 %i.l, 99
  br label %_ZNK4llvm13GMemOperation8isSimpleEv.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !471
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !281  ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.f:                                             ; preds = %bb.e
  %i.s = and i32 %i.q, 2147483647                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.u = load i32, ptr %i.t, align 8, !tbaa !472
  %i.v = icmp ugt i32 %i.u, %i.s
  br i1 %i.v, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.x = zext nneg i32 %i.s to i64
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !473
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !281
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.04.0.i = phi i64 [ %i.aa, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ] ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !281 ; 6 uses
  %i.ad = icmp ugt i64 %i.ac, 7
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %i.ac, 7
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ag = inttoptr i64 %i.ac to ptr               ; 2 uses
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !281
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit.i

bb.i:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ah = and i64 %i.ac, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !475
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit.i

_ZNK4llvm13GMemOperation6getMMOEv.exit.i:         ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.ag, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 12 uses
  %i.an = icmp eq i64 %i.am, 1152921504606846976
  %i.ao = and i64 %i.am, 1152921504606846975
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit

bb.j:                                             ; preds = %_ZNK4llvm13GMemOperation6getMMOEv.exit.i
  %.mask.i.i.i.i = and i64 %i.am, -1152921504606846976
  %i.ar = icmp eq i64 %.mask.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = lshr i64 %i.am, 60
  %.off.i.i.i.i = add nsw i64 %i.as, -1
  %switch.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %switch.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = icmp slt i64 %i.am, -8070450532247928832
  %spec.select.i.i.i.i.i = or i1 %i.at, %i.ar
  %i.au = lshr i64 %i.am, 44
  %i.av = and i64 %i.au, 65535
  %i.aw = lshr i64 %i.am, 28
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = select i1 %spec.select.i.i.i.i.i, i64 %i.av, i64 %i.ax
  br label %_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit

end_hunk_0
