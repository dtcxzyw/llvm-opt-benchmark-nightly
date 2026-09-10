Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GlobalOpt?download=true
inline.NumInlined: 6591
inline.NumDeleted: 3632
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL21processInternalGlobalPN4llvm14GlobalVariableERKNS_12GlobalStatusENS_12function_refIFRNS_19TargetTransformInfoERNS_8FunctionEEEENS5_IFRNS_17TargetLibraryInfoES9_EEENS5_IFRNS_13DominatorTreeES9_EEE:bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 25 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !782, !range !37, !noundef !38
  %i.hh = or i8 %i.hg, %.1.i78.i.i
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !782
  br label %bb.bc

bb.bc:                                            ; preds = %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_1clEPNS_5ValueEPNS_8ConstantE.exit.i.i", %bb.az, %bb.ay, %_ZN4llvm16getLoadStoreTypeEPKNS_5ValueE.exit.i.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.hi = phi i1 [ false, %_ZN4llvm5APIntC2Ejmbb.exit.i.i ], [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ], [ false, %_ZN4llvm16getLoadStoreTypeEPKNS_5ValueE.exit.i.i ], [ false, %bb.ay ], [ true, %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_1clEPNS_5ValueEPNS_8ConstantE.exit.i.i" ], [ false, %bb.az ]
  %i.hj = load i32, ptr %i.dm, align 8, !tbaa !179
  %i.hk = icmp ugt i32 %i.hj, 64
  br i1 %i.hk, label %bb.bd, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.hl = load ptr, ptr %13, align 8, !tbaa !104  ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.hl) #23
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.be, %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br i1 %i.hi, label %.backedge.i.i, label %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i"

.backedge.i.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_3UseELb1EE9push_backES2_.exit.i63.i.i, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.thread181.i.i, %_ZN4llvm5APIntD2Ev.exit.i.i, %_ZNK4llvm11GEPOperator21hasAllConstantIndicesEv.exit.thread.i.i
  %i.hn = load i32, ptr %i.ci, align 8, !tbaa !167 ; 2 uses
  %.not.i55.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not.i55.i.i, label %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i", label %bb.ae

_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.i.i: ; preds = %_ZNK4llvm11GEPOperator21hasAllConstantIndicesEv.exit.i.i, %bb.af
  %i.ho = icmp ugt i8 %i.dz, 22
  br i1 %i.ho, label %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i", label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.thread181.i.i

_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.thread181.i.i: ; preds = %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.i.i, %bb.ag
  %i.hp = call noundef zeroext i1 @_ZN4llvm23isSafeToDestroyConstantEPKNS_8ConstantE(ptr noundef nonnull %i.dy) #20
  br i1 %i.hp, label %.backedge.i.i, label %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i"

"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i": ; preds = %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.thread181.i.i, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.i.i, %.backedge.i.i, %_ZN4llvm5APIntD2Ev.exit.i.i, %bb.ao, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i, %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit.i.i", %_ZNK4llvm4Type17isSingleValueTypeEv.exit149
  %.not.i55.lcssa.i.i = phi i1 [ true, %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit.i.i" ], [ true, %_ZNK4llvm4Type17isSingleValueTypeEv.exit149 ], [ false, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i ], [ false, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.thread181.i.i ], [ false, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.thread.i.i ], [ false, %bb.ao ], [ true, %.backedge.i.i ], [ false, %_ZN4llvm5APIntD2Ev.exit.i.i ]
  %i.hq = load i8, ptr %i.cn, align 8, !tbaa !36, !range !37, !noundef !38
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i"
  %i.hs = load ptr, ptr %12, align 8, !tbaa !39
  call void @free(ptr noundef %i.hs) #20
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.bf, %"_ZZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutEENK3$_0clEPNS_5ValueE.exit74.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ht = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ch
  br i1 %i.hu, label %_ZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutE.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  call void @free(ptr noundef %i.ht) #20
  br label %_ZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutE.exit.i

_ZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutE.exit.i: ; preds = %bb.bg, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.not.i55.lcssa.i.i, label %bb.bh, label %bb.eq

bb.bh:                                            ; preds = %_ZL15collectSRATypesRN4llvm8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEEEPNS_14GlobalVariableERKNS_10DataLayoutE.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !244
  switch i32 %i.hw, label %..critedge_crit_edge.i [
    i32 0, label %bb.eq
    i32 1, label %bb.bi
  ]

..critedge_crit_edge.i:                           ; preds = %bb.bh
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !245, !noalias !783
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre292.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !246, !noalias !783
  %.phi.trans.insert293.i = getelementptr inbounds nuw i8, ptr %15, i64 20
  %.pre294.i = load i32, ptr %.phi.trans.insert293.i, align 4, !tbaa !247, !noalias !783 ; 2 uses
  %.pre300.i = zext i32 %.pre294.i to i64
  br label %.critedge.i

bb.bi:                                            ; preds = %bb.bh
  %i.hx = load ptr, ptr %15, align 8, !tbaa !245, !noalias !784 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !246, !noalias !784 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !247, !noalias !784 ; 3 uses
  %i.ic = zext i32 %i.ib to i64                   ; 3 uses
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %i.ic ; 3 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ie = add nuw nsw i64 %i.ic, 31
  %i.if = lshr i64 %i.ie, 5                       ; 2 uses
  %i.ig = load i32, ptr %i.hz, align 4, !tbaa !84, !noalias !785 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bj
  %i.ii = icmp eq i64 %i.if, 1
  br i1 %i.ii, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i, label %.lr.ph227

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph227
  %i.ij = add nuw nsw i64 %i.il, 1                ; 2 uses
  %i.ik = icmp eq i64 %i.ij, %i.if
  br i1 %i.ik, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i, label %.lr.ph227, !llvm.loop !734

.lr.ph227:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.il = phi i64 [ %i.ij, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !84, !noalias !785 ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !734

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph227
  %i.ip = shl i64 %i.il, 10
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.bj
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.bj ], [ %i.ip, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.ig, %bb.bj ], [ %i.in, %._crit_edge.i.loopexit.i.i.i ]
  %i.iq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr i8, ptr %i.hx, i64 %.012.lcssa.i.i.i.i
  %i.it = getelementptr [32 x i8], ptr %i.is, i64 %i.ir
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge.i.i.i.i, %bb.bi
  %storemerge16.i.i.i.i = phi ptr [ %i.id, %bb.bi ], [ %i.it, %._crit_edge.i.i.i.i ], [ %i.id, %.lr.ph.i.i.i.i.preheader ], [ %i.id, %.lr.ph.i.i.i.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !779
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !71
  %i.iy = icmp eq ptr %i.iv, %i.ix
  br i1 %i.iy, label %bb.eq, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i, %..critedge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre300.i, %..critedge_crit_edge.i ], [ %i.ic, %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i ] ; 4 uses
  %i.iz = phi i32 [ %.pre294.i, %..critedge_crit_edge.i ], [ %i.ib, %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i ]
  %i.ja = phi ptr [ %.pre292.i, %..critedge_crit_edge.i ], [ %i.hz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i ] ; 8 uses
  %i.jb = phi ptr [ %.pre.i, %..critedge_crit_edge.i ], [ %i.hx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit.i ] ; 2 uses
  %.idx8.i.i = shl nuw nsw i64 %.pre-phi.i, 5     ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.thread.i", label %bb.bk

"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.thread.i": ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.jc, ptr %16, align 8, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.jd, align 8, !tbaa !167
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 16, ptr %i.je, align 4, !tbaa !168
  br label %._crit_edge261.thread.i

bb.bk:                                            ; preds = %.critedge.i
  %i.jf = add nuw nsw i64 %.pre-phi.i, 31
  %i.jg = lshr i64 %i.jf, 5                       ; 8 uses
  %i.jh = load i32, ptr %i.ja, align 4, !tbaa !84, !noalias !786 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bk
  %i.jj = icmp eq i64 %i.jg, 1
  br i1 %i.jj, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i", label %.lr.ph228

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph228
  %i.jk = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %i.jl = icmp eq i64 %i.jk, %i.jg
  br i1 %i.jl, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i", label %.lr.ph228, !llvm.loop !734

.lr.ph228:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.jm = phi i64 [ %i.jk, %.lr.ph.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !84, !noalias !786 ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i, !llvm.loop !734

._crit_edge.i.loopexit.i.i.i.i.i.i:               ; preds = %.lr.ph228
  %i.jq = shl i64 %i.jm, 10
  br label %_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i

_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i, %bb.bk
  %.012.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.jq, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.jh, %bb.bk ], [ %i.jo, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %i.jr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.js = shl nuw nsw i32 %i.jr, 5
  %.idx.i.i = zext nneg i32 %i.js to i64
  %i.jt = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i, %.idx.i.i ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.jt, %.idx8.i.i
  br i1 %.not3.i.i.i.i, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i", label %.lr.ph.i.i.i121.i

.lr.ph.i.i.i121.i:                                ; preds = %_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i, %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i
  %.04.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i ], [ 0, %_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i ]
  %.pn.i.i = phi i64 [ %i.kt, %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i ], [ %i.jt, %_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i ] ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jb, i64 %.pn.i.i ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  %.val.val.i.i.i.i = load i8, ptr %i.jv, align 8, !tbaa !781, !range !37, !noundef !38
  %i.jw = getelementptr i8, ptr %i.ju, i64 25
  %.val.val2.i.i.i.i = load i8, ptr %i.jw, align 1
  %31 = trunc nuw i8 %.val.val.i.i.i.i to i1
  %i.jx = and i8 %.val.val2.i.i.i.i, 1
  %32 = select i1 %31, i8 %i.jx, i8 0
  %i.jy = zext nneg i8 %32 to i32
  %spec.select.i.i.i.i = add i32 %.04.i.i.i.i, %i.jy ; 2 uses
  %i.jz = add i64 %.pn.i.i, 32
  %i.ka = ashr exact i64 %i.jz, 5                 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.ka, %.pre-phi.i
  br i1 %.not.i.i.i.i.i.i, label %bb.bl, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.i"

bb.bl:                                            ; preds = %.lr.ph.i.i.i121.i
  %i.kb = lshr i64 %i.ka, 5                       ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !84
  %i.ke = trunc nuw i64 %i.ka to i32
  %i.kf = and i32 %i.ke, 31
  %i.kg = shl nsw i32 -1, %i.kf
  %i.kh = and i32 %i.kd, %i.kg                    ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bl
  %i.kj = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %i.kk = icmp eq i64 %i.kj, %i.jg
  br i1 %i.kk, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.i", label %.lr.ph229

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph229
  %i.kl = add i64 %i.kn, 1                        ; 2 uses
  %i.km = icmp eq i64 %i.kl, %i.jg
  br i1 %i.km, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.i", label %.lr.ph229, !llvm.loop !734

.lr.ph229:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.kn = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i.i ], [ %i.kj, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !84 ; 2 uses
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i, !llvm.loop !734

_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i: ; preds = %.lr.ph229, %bb.bl
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ %i.kb, %bb.bl ], [ %i.kn, %.lr.ph229 ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.kh, %bb.bl ], [ %i.kp, %.lr.ph229 ]
  %i.kr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %.idx.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i, 10
  %i.ks = shl nuw nsw i32 %i.kr, 5
  %.idx9.i.i = zext nneg i32 %i.ks to i64
  %i.kt = or disjoint i64 %.idx.i.i.i.i.i.i, %.idx9.i.i ; 2 uses
  %.not.i.i.i123.i = icmp eq i64 %i.kt, %.idx8.i.i
  br i1 %.not.i.i.i123.i, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.i", label %.lr.ph.i.i.i121.i, !llvm.loop !737

"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.i": ; preds = %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i.i.i.i, %.lr.ph.i.i.i121.i, %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.ku = icmp ugt i32 %spec.select.i.i.i.i, 16
  br i1 %i.ku, label %bb.eq, label %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i"

"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.i", %_ZN4llvm9adl_beginIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  store ptr %i.kv, ptr %16, align 8, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  store i32 0, ptr %i.kw, align 8, !tbaa !167
  %i.kx = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 16, ptr %i.kx, align 4, !tbaa !168
  %i.ky = load i32, ptr %i.ja, align 4, !tbaa !84, !noalias !787 ; 2 uses
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %.lr.ph.i.i.i130.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit133.i

.lr.ph.i.i.i130.i.preheader:                      ; preds = %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i"
  %i.la = icmp eq i64 %i.jg, 1
  br i1 %i.la, label %._crit_edge261.thread.i, label %.lr.ph231

.lr.ph.i.i.i130.i:                                ; preds = %.lr.ph231
  %i.lb = add nuw nsw i64 %i.ld, 1                ; 2 uses
  %i.lc = icmp eq i64 %i.lb, %i.jg
  br i1 %i.lc, label %._crit_edge261.thread.i, label %.lr.ph231, !llvm.loop !734

.lr.ph231:                                        ; preds = %.lr.ph.i.i.i130.i.preheader, %.lr.ph.i.i.i130.i
  %i.ld = phi i64 [ %i.lb, %.lr.ph.i.i.i130.i ], [ 1, %.lr.ph.i.i.i130.i.preheader ] ; 3 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !84, !noalias !787 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph.i.i.i130.i, label %._crit_edge.i.loopexit.i.i132.i, !llvm.loop !734

._crit_edge.i.loopexit.i.i132.i:                  ; preds = %.lr.ph231
  %i.lh = shl i64 %i.ld, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit133.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit133.i: ; preds = %._crit_edge.i.loopexit.i.i132.i, %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i"
  %.012.lcssa.i.i.i126.i = phi i64 [ 0, %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i" ], [ %i.lh, %._crit_edge.i.loopexit.i.i132.i ]
  %.0.lcssa.i.i.i127.i = phi i32 [ %i.ky, %"_ZN4llvm8count_ifIRNS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEZL9SRAGlobalPNS_14GlobalVariableERKNS_10DataLayoutEE3$_0EEDaOT_T0_.exit.thread.i" ], [ %i.lf, %._crit_edge.i.loopexit.i.i132.i ]
  %i.li = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i127.i, i1 true)
  %i.lj = shl nuw nsw i32 %i.li, 5
  %.idx412.i = zext nneg i32 %i.lj to i64
  %i.lk = or disjoint i64 %.012.lcssa.i.i.i126.i, %.idx412.i ; 2 uses
  %.not237255.i = icmp eq i64 %i.lk, %.idx8.i.i
  br i1 %.not237255.i, label %._crit_edge261.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E5beginEv.exit133.i
  %i.ll = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lm = ptrtoint ptr %17 to i64
  br label %bb.bm

._crit_edge.i:                                    ; preds = %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE9push_backEOS6_.exit.i, %.lr.ph.i.i138.i.preheader, %.lr.ph.i.i138.i
  %.not.i.i.i.i134.i = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i.i.i134.i, label %._crit_edge261.thread.i, label %_ZN4llvm4sortIRNS_11SmallVectorISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELj16EEENS_10less_firstEEEvOT_T0_.exit.i

_ZN4llvm4sortIRNS_11SmallVectorISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELj16EEENS_10less_firstEEEvOT_T0_.exit.i: ; preds = %._crit_edge.i
  %i.ln = zext i32 %i.mq to i64                   ; 2 uses
  %.idx.i135.i = mul nuw nsw i64 %i.ln, 24
  %i.lo = getelementptr inbounds nuw i8, ptr %.pre3.i296.i, i64 %.idx.i135.i ; 2 uses
  %i.lp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ln, i1 true)
  %i.lq = shl nuw nsw i64 %i.lp, 1
  %i.lr = xor i64 %i.lq, 126
  call void @_ZSt16__introsort_loopIPSt5tupleIJmPN4llvm4TypeEPNS1_8ConstantEEElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SD_T0_T1_(ptr noundef %.pre3.i296.i, ptr noundef nonnull %i.lo, i64 noundef %i.lr)
  call void @_ZSt22__final_insertion_sortIPSt5tupleIJmPN4llvm4TypeEPNS1_8ConstantEEEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SD_T0_(ptr noundef %.pre3.i296.i, ptr noundef nonnull %i.lo)
  %.pre297.i = load ptr, ptr %16, align 8, !tbaa !41 ; 2 uses
  %.pre298.i = load i32, ptr %i.kw, align 8, !tbaa !167 ; 2 uses
  %i.ls = zext i32 %.pre298.i to i64
  %.idx.i = mul nuw nsw i64 %i.ls, 24
  %i.lt = getelementptr inbounds nuw i8, ptr %.pre297.i, i64 %.idx.i
  %.not257.i = icmp eq i32 %.pre298.i, 0
  br i1 %.not257.i, label %._crit_edge261.thread.i, label %.lr.ph260.i

bb.bm:                                            ; preds = %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i, %.lr.ph.i
  %.pre3.i.i = phi ptr [ %i.kv, %.lr.ph.i ], [ %.pre3.i296.i, %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i ] ; 4 uses
  %i.lu = phi i32 [ 0, %.lr.ph.i ], [ %i.mq, %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i ] ; 2 uses
  %.pn.i = phi i64 [ %i.lk, %.lr.ph.i ], [ %i.nl, %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.0210.0256.i = getelementptr i8, ptr %i.jb, i64 %.pn.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0210.0256.i, i64 8
  %i.lw = load <2 x ptr>, ptr %i.lv, align 8, !tbaa !46
  %i.lx = shufflevector <2 x ptr> %i.lw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.lx, ptr %17, align 16, !tbaa !46
  %i.ly = load i64, ptr %.sroa.0210.0256.i, align 8, !tbaa !61
  store i64 %i.ly, ptr %i.ll, align 16, !tbaa !789
  %i.lz = zext i32 %i.lu to i64                   ; 2 uses
  %i.ma = add nuw nsw i64 %i.lz, 1                ; 2 uses
  %i.mb = load i32, ptr %i.kx, align 4, !tbaa !168
  %.not.i.i.not.i.i = icmp ult i32 %i.lu, %i.mb
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE9push_backEOS6_.exit.i, label %bb.bn, !prof !88

bb.bn:                                            ; preds = %bb.bm
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %.pre3.i.i, i64 %i.lz
  %i.md = icmp uge ptr %17, %.pre3.i.i
  %i.me = icmp ult ptr %17, %i.mc
  %spec.select.i.i.i.i.i.i = and i1 %i.md, %i.me
  br i1 %spec.select.i.i.i.i.i.i, label %bb.bo, label %.critedge.i.i.i.i, !prof !248

bb.bo:                                            ; preds = %bb.bn
  %i.mf = ptrtoint ptr %.pre3.i.i to i64
  %i.mg = sub i64 %i.lm, %i.mf
  call void @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.ma)
  %i.mh = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.mg
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE9push_backEOS6_.exit.i

.critedge.i.i.i.i:                                ; preds = %bb.bn
  call void @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.ma)
  %.pre.i136.i = load ptr, ptr %16, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE9push_backEOS6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE9push_backEOS6_.exit.i: ; preds = %.critedge.i.i.i.i, %bb.bo, %bb.bm
  %.pre3.i296.i = phi ptr [ %.pre3.i.i, %bb.bm ], [ %i.mh, %bb.bo ], [ %.pre.i136.i, %.critedge.i.i.i.i ] ; 5 uses
  %.016.i.i.i.i = phi ptr [ %17, %bb.bm ], [ %i.mi, %bb.bo ], [ %17, %.critedge.i.i.i.i ] ; 2 uses
  %i.mj = load i32, ptr %i.kw, align 8, !tbaa !167 ; 2 uses
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %.pre3.i296.i, i64 %i.mk ; 2 uses
  %i.mm = load <2 x i64>, ptr %.016.i.i.i.i, align 8, !tbaa !46
  store <2 x i64> %i.mm, ptr %i.ml, align 8, !tbaa !46
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !61
  store i64 %i.mp, ptr %i.mn, align 8, !tbaa !61
  %i.mq = add i32 %i.mj, 1                        ; 4 uses
  store i32 %i.mq, ptr %i.kw, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.mr = add i64 %.pn.i, 32
  %i.ms = ashr exact i64 %i.mr, 5                 ; 3 uses
  %.not.i.i137.i = icmp ult i64 %i.ms, %.pre-phi.i
  br i1 %.not.i.i137.i, label %bb.bp, label %._crit_edge.i

bb.bp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJmPNS_4TypeEPNS_8ConstantEEELb0EE9push_backEOS6_.exit.i
  %i.mt = lshr i64 %i.ms, 5                       ; 3 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !84
  %i.mw = trunc nuw i64 %i.ms to i32
  %i.mx = and i32 %i.mw, 31
  %i.my = shl nsw i32 -1, %i.mx
  %i.mz = and i32 %i.mv, %i.my                    ; 2 uses
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i138.i.preheader, label %_ZN4llvm16DenseMapIteratorIm10GlobalPartNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EELb0EEppEv.exit.i

.lr.ph.i.i138.i.preheader:                        ; preds = %bb.bp
  %i.nb = add nuw nsw i64 %i.mt, 1                ; 2 uses
  %i.nc = icmp eq i64 %i.nb, %i.jg
  br i1 %i.nc, label %._crit_edge.i, label %.lr.ph232

.lr.ph.i.i138.i:                                  ; preds = %.lr.ph232
  %i.nd = add i64 %i.nf, 1                        ; 2 uses
  %i.ne = icmp eq i64 %i.nd, %i.jg
  br i1 %i.ne, label %._crit_edge.i, label %.lr.ph232, !llvm.loop !734

.lr.ph232:                                        ; preds = %.lr.ph.i.i138.i.preheader, %.lr.ph.i.i138.i
  %i.nf = phi i64 [ %i.nd, %.lr.ph.i.i138.i ], [ %i.nb, %.lr.ph.i.i138.i.preheader ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !84 ; 2 uses
end_hunk_0
