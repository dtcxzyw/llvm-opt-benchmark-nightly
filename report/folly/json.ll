Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN5folly4json12_GLOBAL__N_110parseValueINS1_14DefaultOptsPtrEEENS_7dynamicERNS1_5InputIT_EEPSt13unordered_mapIPKS4_NS0_14parse_metadataESt4hashISB_ESt8equal_toISB_ESaISt4pairIKSB_SC_EEE:bb.a
  %.not.i.i130.i = icmp eq i64 %i.wl, 0
  br i1 %.not.i.i130.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i, %_ZNK5folly5RangeIPKcE10startsWithERKS3_.exit.i118.i
  %i.wq = phi i64 [ %i.wl, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.vu, %_ZNK5folly5RangeIPKcE10startsWithERKS3_.exit.i118.i ] ; 3 uses
  %i.wr = phi i64 [ %i.wm, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.vs, %_ZNK5folly5RangeIPKcE10startsWithERKS3_.exit.i118.i ] ; 4 uses
  %i.ws = phi ptr [ %i.wn, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.vr, %_ZNK5folly5RangeIPKcE10startsWithERKS3_.exit.i118.i ] ; 6 uses
  %i.wt = phi ptr [ %i.wo, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.vq, %_ZNK5folly5RangeIPKcE10startsWithERKS3_.exit.i118.i ] ; 4 uses
  %i.wu = phi i1 [ %i.wp, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ true, %_ZNK5folly5RangeIPKcE10startsWithERKS3_.exit.i118.i ] ; 4 uses
  %i.wv = load i8, ptr %i.ws, align 1, !tbaa !37, !noalias !1203 ; 2 uses
  %i.ww = add i8 %i.wv, -48
  %or.cond.i.i.peel.i.i = icmp ult i8 %i.ww, 10
  br i1 %or.cond.i.i.peel.i.i, label %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i, label %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i

_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i: ; preds = %.lr.ph.i.preheader.i.i
  switch i8 %i.wv, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425 [
    i8 45, label %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i
    i8 43, label %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i
  ]

_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i: ; preds = %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i, %.lr.ph.i.preheader.i.i
  %exitcond.not.i.peel.i.i = icmp eq i64 %i.wq, 1
  br i1 %exitcond.not.i.peel.i.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i
  %.09.i.i.i = phi i64 [ %i.xa, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i ], [ 1, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i ] ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ws, i64 %.09.i.i.i
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !37, !noalias !1203
  %i.wz = add i8 %i.wy, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.wz, 10
  br i1 %or.cond.i.i.i.i, label %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425

_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.xa = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.xa, %i.wq
  br i1 %exitcond.not.i.i.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425, label %.lr.ph.i.i.i, !llvm.loop !1174

_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425:     ; preds = %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i, %.lr.ph.i.i.i, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i
  %i.xb = phi i64 [ %i.wm, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.wr, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i ], [ %i.wr, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i ], [ %i.wr, %.lr.ph.i.i.i ], [ %i.wr, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i ] ; 2 uses
  %i.xc = phi ptr [ %i.wn, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.ws, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i ], [ %i.ws, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i ], [ %i.ws, %.lr.ph.i.i.i ], [ %i.ws, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i ] ; 5 uses
  %i.xd = phi ptr [ %i.wo, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.wt, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i ], [ %i.wt, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i ], [ %i.wt, %.lr.ph.i.i.i ], [ %i.wt, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i ] ; 6 uses
  %i.xe = phi i1 [ %i.wp, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ %i.wu, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i ], [ %i.wu, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i ], [ %i.wu, %.lr.ph.i.i.i ], [ %i.wu, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i ] ; 2 uses
  %.0821.i.i.i = phi i64 [ 0, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE7consumeENS_5RangeIPKcEE.exit122.thread.i ], [ 1, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.peel.i.i ], [ 0, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.i.peel.i.i ], [ %i.wq, %_ZZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEvENKUlcE_clEc.exit.thread.i.i.i ], [ %.09.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 %.0821.i.i.i ; 8 uses
  store ptr %i.xf, ptr %1, align 8, !tbaa !400, !noalias !1203
  %i.xg = icmp eq ptr %i.xf, %i.xd
  br i1 %i.xg, label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.thread.i, label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.i

_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.i: ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425
  %i.xh = load i8, ptr %i.xf, align 1, !tbaa !37, !noalias !1203 ; 2 uses
  %i.xi = sext i8 %i.xh to i32
  store i32 %i.xi, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  %i.xj = icmp ult i64 %.0821.i.i.i, 2
  %or.cond261.i = and i1 %i.xe, %i.xj
  br i1 %or.cond261.i, label %.invoke965, label %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i

_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.thread.i: ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i.i425
  store i32 -1, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  %i.xk = icmp ult i64 %.0821.i.i.i, 2
  %or.cond261293.i = and i1 %i.xe, %i.xk
  br i1 %or.cond261293.i, label %.invoke965, label %_ZN5folly4json18serialization_optsD2Ev.exit183.i

.invoke965:                                       ; preds = %bb.hh, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.i, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.thread.i
  %i.xl = phi ptr [ @.str.118, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.i ], [ @.str.118, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.thread.i ], [ @.str.80, %bb.hh ]
  invoke fastcc void @_ZNK5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE5errorEPKc(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull %i.xl) #36
          to label %.cont966 unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

.cont966:                                         ; preds = %.invoke965
  unreachable

_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i: ; preds = %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.i
  switch i8 %i.xh, label %_ZN5folly4json18serialization_optsD2Ev.exit183.i [
    i8 101, label %.thread258.thread.i
    i8 69, label %.thread258.thread.i
    i8 46, label %bb.gl
  ]

_ZN5folly4json18serialization_optsD2Ev.exit183.i: ; preds = %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE17skipSignAndDigitsEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !1203
  store ptr %i.xc, ptr %9, align 8, !noalias !1203
  %i.xm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.xf, ptr %i.xm, align 8, !noalias !1203
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !1203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !1206
  store ptr %i.xc, ptr %8, align 8, !noalias !1207
  %i.xn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.xf, ptr %i.xn, align 8, !noalias !1207
  %i.xo = call { i64, i64 } @_ZN5folly6detail15str_to_integralIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %8) #34, !noalias !1207 ; 2 uses
  %i.xp = extractvalue { i64, i64 } %i.xo, 0      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.xq = and i64 %i.xp, 255
  %i.xr = icmp eq i64 %i.xq, 1
  br i1 %i.xr, label %bb.gi, label %bb.gk, !prof !82

bb.gi:                                            ; preds = %_ZN5folly4json18serialization_optsD2Ev.exit183.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !88, !noalias !1210 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.xn, align 8, !tbaa !88, !noalias !1210 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %10, align 8, !alias.scope !1211, !noalias !1203
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1211, !noalias !1203
  %i.xs = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.xs, align 8, !alias.scope !1211, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1206
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34, !noalias !1203
  %.not14.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i, label %_ZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.gj:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.xt, %.sroa.2.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.gi, %bb.gj
  %.0915.i.i.i.i.i.i = phi ptr [ %i.xt, %bb.gj ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.gi ] ; 2 uses
  %i.xu = load i8, ptr %.0915.i.i.i.i.i.i, align 1, !tbaa !37, !noalias !1203
  %i.xv = sext i8 %i.xu to i32
  %i.xw = call i32 @isspace(i32 noundef %i.xv) #39, !noalias !1203
  %.not12.not.i.i.i.i.i.i = icmp eq i32 %i.xw, 0
  br i1 %.not12.not.i.i.i.i.i.i, label %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIlEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i, label %bb.gj

bb.gk:                                            ; preds = %_ZN5folly4json18serialization_optsD2Ev.exit183.i
  %.sroa.01.1.extract.shift.i.i.i.i = lshr i64 %i.xp, 8
  %.sroa.01.1.extract.trunc.i.i.i.i = trunc i64 %.sroa.01.1.extract.shift.i.i.i.i to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1206
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34, !noalias !1203
  store ptr %9, ptr %11, align 8, !tbaa !117, !noalias !1203
  invoke void @_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef zeroext %.sroa.01.1.extract.trunc.i.i.i.i)
          to label %.noexc436.invoke unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIlEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34, !noalias !1203
  store ptr %10, ptr %12, align 8, !tbaa !119, !noalias !1203
  invoke void @_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef zeroext 10)
          to label %.noexc436.invoke unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

_ZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i: ; preds = %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !1203
  invoke fastcc void @_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEE14skipWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
          to label %.noexc433 unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

.noexc433:                                        ; preds = %_ZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i
  %i.xx = extractvalue { i64, i64 } %i.xo, 1
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %0, align 8, !tbaa !64, !alias.scope !1203
  store i64 %i.xx, ptr %i.xy, align 8, !tbaa !39, !alias.scope !1203
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.gl:                                            ; preds = %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xf, i64 1 ; 6 uses
  store ptr %i.xz, ptr %1, align 8, !tbaa !400, !noalias !1203
  %i.ya = icmp eq ptr %i.xz, %i.xd
  br i1 %i.ya, label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.yb = load i8, ptr %i.xz, align 1, !tbaa !37, !noalias !1203
  %i.yc = sext i8 %i.yb to i32
  br label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426

_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426: ; preds = %bb.gm, %bb.gl
  %i.yd = phi i32 [ %i.yc, %bb.gm ], [ -1, %bb.gl ]
  store i32 %i.yd, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  %i.ye = ptrtoint ptr %i.xz to i64
  %i.yf = sub i64 %i.xb, %i.ye                    ; 3 uses
  %.not.i.i189.i = icmp eq i64 %i.yf, 0
  br i1 %.not.i.i189.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i, label %.lr.ph.i.i190.i

.lr.ph.i.i190.i:                                  ; preds = %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426, %bb.gn
  %.03.i.i.i = phi i64 [ %i.yk, %bb.gn ], [ 0, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426 ] ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.03.i.i.i
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !37, !noalias !1203
  %i.yi = add i8 %i.yh, -48
  %i.yj = icmp ult i8 %i.yi, 10
  br i1 %i.yj, label %bb.gn, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i

bb.gn:                                            ; preds = %.lr.ph.i.i190.i
  %i.yk = add nuw i64 %.03.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i194.i = icmp eq i64 %i.yk, %i.yf
  br i1 %exitcond.not.i.i194.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i, label %.lr.ph.i.i190.i, !llvm.loop !1183

_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i:     ; preds = %bb.gn, %.lr.ph.i.i190.i, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426
  %.0.lcssa15.i.i.i = phi i64 [ 0, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit.i426 ], [ %.03.i.i.i, %.lr.ph.i.i190.i ], [ %i.yf, %bb.gn ]
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.0.lcssa15.i.i.i ; 7 uses
  store ptr %i.yl, ptr %1, align 8, !tbaa !400, !noalias !1203
  %i.ym = icmp eq ptr %i.yl, %i.xd
  br i1 %i.ym, label %_ZN5folly4json18serialization_optsD2Ev.exit211.i.sink.split, label %.thread258.i

.thread258.i:                                     ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i
  %i.yn = load i8, ptr %i.yl, align 1, !tbaa !37, !noalias !1203 ; 2 uses
  %i.yo = sext i8 %i.yn to i32
  store i32 %i.yo, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  switch i8 %i.yn, label %_ZN5folly4json18serialization_optsD2Ev.exit211.i [
    i8 101, label %.thread258.thread.i
    i8 69, label %.thread258.thread.i
  ]

.thread258.thread.i:                              ; preds = %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i, %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i, %.thread258.i, %.thread258.i
  %i.yp = phi ptr [ %i.yl, %.thread258.i ], [ %i.yl, %.thread258.i ], [ %i.xf, %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i ], [ %i.xf, %_ZN5follyeqINS_5RangeIPKcEEA3_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit144.thread.i ] ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 1 ; 5 uses
  store ptr %i.yq, ptr %1, align 8, !tbaa !400, !noalias !1203
  %i.yr = icmp eq ptr %i.yq, %i.xd
  br i1 %i.yr, label %.sink.split.i, label %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit196.i

_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit196.i: ; preds = %.thread258.thread.i
  %i.ys = load i8, ptr %i.yq, align 1, !tbaa !37, !noalias !1203 ; 2 uses
  %i.yt = sext i8 %i.ys to i32
  store i32 %i.yt, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  switch i8 %i.ys, label %bb.gq [
    i8 43, label %bb.go
    i8 45, label %bb.go
  ]

bb.go:                                            ; preds = %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit196.i, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit196.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yp, i64 2 ; 5 uses
  store ptr %i.yu, ptr %1, align 8, !tbaa !400, !noalias !1203
  %i.yv = icmp eq ptr %i.yu, %i.xd
  br i1 %i.yv, label %.sink.split.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.yw = load i8, ptr %i.yu, align 1, !tbaa !37, !noalias !1203
  %i.yx = sext i8 %i.yw to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.gp, %bb.go, %.thread258.thread.i
  %.sink.i = phi i32 [ -1, %.thread258.thread.i ], [ %i.yx, %bb.gp ], [ -1, %bb.go ]
  %.ph.i = phi ptr [ %i.yq, %.thread258.thread.i ], [ %i.yu, %bb.gp ], [ %i.yu, %bb.go ]
  store i32 %.sink.i, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  br label %bb.gq

bb.gq:                                            ; preds = %.sink.split.i, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit196.i
  %i.yy = phi ptr [ %i.yq, %_ZN5folly4json12_GLOBAL__N_15InputINS1_14DefaultOptsPtrEEppEv.exit196.i ], [ %.ph.i, %.sink.split.i ] ; 3 uses
  %i.yz = ptrtoint ptr %i.yy to i64
  %i.za = sub i64 %i.xb, %i.yz                    ; 3 uses
  %.not.i.i199.i = icmp eq i64 %i.za, 0
  br i1 %.not.i.i199.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i, label %.lr.ph.i.i200.i

.lr.ph.i.i200.i:                                  ; preds = %bb.gq, %bb.gr
  %.03.i.i201.i = phi i64 [ %i.zf, %bb.gr ], [ 0, %bb.gq ] ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 %.03.i.i201.i
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !37, !noalias !1203
  %i.zd = add i8 %i.zc, -48
  %i.ze = icmp ult i8 %i.zd, 10
  br i1 %i.ze, label %bb.gr, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i

bb.gr:                                            ; preds = %.lr.ph.i.i200.i
  %i.zf = add nuw i64 %.03.i.i201.i, 1            ; 2 uses
  %exitcond.not.i.i206.i = icmp eq i64 %i.zf, %i.za
  br i1 %exitcond.not.i.i206.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i, label %.lr.ph.i.i200.i, !llvm.loop !1183

_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i:     ; preds = %bb.gr, %.lr.ph.i.i200.i, %bb.gq
  %.0.lcssa15.i.i203.i = phi i64 [ 0, %bb.gq ], [ %.03.i.i201.i, %.lr.ph.i.i200.i ], [ %i.za, %bb.gr ]
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yy, i64 %.0.lcssa15.i.i203.i ; 5 uses
  store ptr %i.zg, ptr %1, align 8, !tbaa !400, !noalias !1203
  %i.zh = icmp eq ptr %i.zg, %i.xd
  br i1 %i.zh, label %_ZN5folly4json18serialization_optsD2Ev.exit211.i.sink.split, label %bb.gs

bb.gs:                                            ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i
  %i.zi = load i8, ptr %i.zg, align 1, !tbaa !37, !noalias !1203
  %i.zj = sext i8 %i.zi to i32
  br label %_ZN5folly4json18serialization_optsD2Ev.exit211.i.sink.split

_ZN5folly4json18serialization_optsD2Ev.exit211.i.sink.split: ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i, %bb.gs, %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i
  %.sink = phi i32 [ -1, %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i ], [ %i.zj, %bb.gs ], [ -1, %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i ]
  %.091.i.ph = phi ptr [ %i.yl, %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i191.i ], [ %i.zg, %bb.gs ], [ %i.zg, %_ZN5folly5RangeIPKcE7advanceEm.exit.i.i202.i ]
  store i32 %.sink, ptr %i.i, align 4, !tbaa !409, !noalias !1203
  br label %_ZN5folly4json18serialization_optsD2Ev.exit211.i

_ZN5folly4json18serialization_optsD2Ev.exit211.i: ; preds = %_ZN5folly4json18serialization_optsD2Ev.exit211.i.sink.split, %.thread258.i
  %.091.i = phi ptr [ %i.yl, %.thread258.i ], [ %.091.i.ph, %_ZN5folly4json18serialization_optsD2Ev.exit211.i.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1203
  store ptr %i.xc, ptr %4, align 8, !noalias !1203
  %i.zk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.091.i, ptr %i.zk, align 8, !noalias !1203
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !1203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1214
  store ptr %i.xc, ptr %3, align 8, !noalias !1215
  %i.zl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.091.i, ptr %i.zl, align 8, !noalias !1215
  %i.zm = call { i64, double } @_ZN5folly6detail15str_to_floatingIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %3) #34, !noalias !1215 ; 2 uses
  %i.zn = extractvalue { i64, double } %i.zm, 0   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.zo = and i64 %i.zn, 255
  %i.zp = icmp eq i64 %i.zo, 1
  br i1 %i.zp, label %bb.gt, label %bb.gv, !prof !82

bb.gt:                                            ; preds = %_ZN5folly4json18serialization_optsD2Ev.exit211.i
  %.sroa.0.0.copyload.i.i.i.i.i.i221.i = load ptr, ptr %3, align 8, !tbaa !88, !noalias !1218 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i222.i = load ptr, ptr %i.zl, align 8, !tbaa !88, !noalias !1218 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i221.i, ptr %5, align 8, !alias.scope !1219, !noalias !1203
  %.sroa.46.0..sroa_idx.i.i.i.i.i223.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i222.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i223.i, align 8, !alias.scope !1219, !noalias !1203
  %i.zq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.zq, align 8, !alias.scope !1219, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !1203
  %.not14.i.i.i.i.i224.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i221.i, %.sroa.2.0.copyload.i.i.i.i.i.i222.i
  br i1 %.not14.i.i.i.i.i224.i, label %_ZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i, label %.lr.ph.i.i.i.i.i225.i

bb.gu:                                            ; preds = %.lr.ph.i.i.i.i.i225.i
  %i.zr = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i226.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i228.i = icmp eq ptr %i.zr, %.sroa.2.0.copyload.i.i.i.i.i.i222.i
  br i1 %.not.i.i.i.i.i228.i, label %_ZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i, label %.lr.ph.i.i.i.i.i225.i

.lr.ph.i.i.i.i.i225.i:                            ; preds = %bb.gt, %bb.gu
  %.0915.i.i.i.i.i226.i = phi ptr [ %i.zr, %bb.gu ], [ %.sroa.0.0.copyload.i.i.i.i.i.i221.i, %bb.gt ] ; 2 uses
  %i.zs = load i8, ptr %.0915.i.i.i.i.i226.i, align 1, !tbaa !37, !noalias !1203
  %i.zt = sext i8 %i.zs to i32
  %i.zu = call i32 @isspace(i32 noundef %i.zt) #39, !noalias !1203
  %.not12.not.i.i.i.i.i227.i = icmp eq i32 %i.zu, 0
  br i1 %.not12.not.i.i.i.i.i227.i, label %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIdEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i, label %bb.gu

bb.gv:                                            ; preds = %_ZN5folly4json18serialization_optsD2Ev.exit211.i
  %.sroa.01.1.extract.shift.i.i.i219.i = lshr i64 %i.zn, 8
  %.sroa.01.1.extract.trunc.i.i.i220.i = trunc i64 %.sroa.01.1.extract.shift.i.i.i219.i to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !1203
  store ptr %4, ptr %6, align 8, !tbaa !117, !noalias !1203
  invoke void @_ZZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef zeroext %.sroa.01.1.extract.trunc.i.i.i220.i)
          to label %.noexc436.invoke unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIdEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i225.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !1203
  store ptr %5, ptr %7, align 8, !tbaa !119, !noalias !1203
  invoke void @_ZZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef zeroext 10)
          to label %.noexc436.invoke unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

.noexc436.invoke:                                 ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIdEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i, %bb.gv, %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIlEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i, %bb.gk
  %i.zv = phi i8 [ %.sroa.01.1.extract.trunc.i.i.i220.i, %bb.gv ], [ 10, %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIlEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i ], [ %.sroa.01.1.extract.trunc.i.i.i.i, %bb.gk ], [ 10, %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIdEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit.i.i ]
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %i.zv) #7
          to label %.noexc436.cont unwind label %_ZN5folly4json18serialization_optsD2Ev.exit114

.noexc436.cont:                                   ; preds = %.noexc436.invoke
  unreachable

_ZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_.exit.i: ; preds = %bb.gu, %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !1203
  %i.zw = extractvalue { i64, double } %i.zm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1203
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %0, align 8, !tbaa !64, !alias.scope !1203
  store double %i.zw, ptr %i.zx, align 8, !tbaa !115, !alias.scope !1203
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

.thread206:                                       ; preds = %bb.gf
  %.not.i.i438 = icmp ult i64 %i.vo, 4
  br i1 %.not.i.i438, label %bb.hg, label %bb.gw

bb.gw:                                            ; preds = %.thread206
  %i.zy = load i32, ptr %i.vl, align 1
  %i.zz = icmp ne i32 %i.zy, 1702195828
  %i.aaa = zext i1 %i.zz to i32
  %i.aab = icmp eq i32 %i.aaa, 0
  br i1 %i.aab, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i439, label %bb.gz

_ZN5folly5RangeIPKcE7advanceEm.exit.i439:         ; preds = %bb.gw
  %i.aac = getelementptr inbounds nuw i8, ptr %i.vl, i64 4 ; 3 uses
  store ptr %i.aac, ptr %1, align 8, !tbaa !400
  %i.aad = icmp eq ptr %i.aac, %i.vk
  br i1 %i.aad, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit.i439
  %i.aae = load i8, ptr %i.aac, align 1, !tbaa !37
  %i.aaf = sext i8 %i.aae to i32
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %_ZN5folly5RangeIPKcE7advanceEm.exit.i439
  %i.aag = phi i32 [ %i.aaf, %bb.gx ], [ -1, %_ZN5folly5RangeIPKcE7advanceEm.exit.i439 ]
  store i32 %i.aag, ptr %i.i, align 4, !tbaa !409
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.aah, align 8, !tbaa !37
  store i32 2, ptr %0, align 8, !tbaa !64
  store i8 1, ptr %i.aah, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.gz:                                            ; preds = %bb.gw
  %.not.i.i440 = icmp eq i64 %i.vo, 4
  br i1 %.not.i.i440, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aai = load i32, ptr %i.vl, align 1
  %i.aaj = xor i32 %i.aai, 1936482662
  %i.aak = getelementptr i8, ptr %i.vl, i64 4
  %i.aal = load i8, ptr %i.aak, align 1
  %i.aam = zext i8 %i.aal to i32
  %i.aan = xor i32 %i.aam, 101
  %i.aao = or i32 %i.aaj, %i.aan
  %i.aap = icmp ne i32 %i.aao, 0
  %i.aaq = zext i1 %i.aap to i32
  %i.aar = icmp eq i32 %i.aaq, 0
  br i1 %i.aar, label %_ZN5folly5RangeIPKcE7advanceEm.exit.i442, label %bb.hd

end_hunk_0
