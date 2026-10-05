Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsyncRuntimeRefCountingOpt?download=true
inline.NumInlined: 1359
inline.NumDeleted: 806
begin_hunk_0_@_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE:bb.a
  switch i32 %i.x, label %bb.c [
    i32 2, label %.thread66.us107.us
    i32 0, label %.thread84
  ]

bb.c:                                             ; preds = %.lr.ph97.us117
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 32 ; 2 uses
  %.sroa.038.091.us100.us = load ptr, ptr %i.y, align 8, !tbaa !45 ; 2 uses
  %.not8892.us101.us = icmp eq ptr %.sroa.038.091.us100.us, %i.z
  br i1 %.not8892.us101.us, label %.thread66.us107.us, label %.lr.ph.us102.us

.lr.ph.us102.us:                                  ; preds = %bb.c, %bb.d
  %.sroa.038.093.us103.us = phi ptr [ %.sroa.038.0.us104.us, %bb.d ], [ %.sroa.038.091.us100.us, %bb.c ] ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093.us103.us) #17
  %i.ab = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.aa, ptr %1, i64 %2, i32 noundef 0)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread84, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us102.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.093.us103.us, i64 8
  %.sroa.038.0.us104.us = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %.not88.us105.us = icmp eq ptr %.sroa.038.0.us104.us, %i.z
  br i1 %.not88.us105.us, label %.thread66.us107.us, label %.lr.ph.us102.us

.thread66.us107.us:                               ; preds = %bb.d, %bb.c, %.lr.ph97.us117
  %.not87.us108.us = icmp eq ptr %i.v, %.034110.us115
  br i1 %.not87.us108.us, label %._crit_edge98.split.split.us.us, label %.lr.ph97.us117

._crit_edge98.split.split.us.us:                  ; preds = %.thread66.us107.us, %.lr.ph114.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.034110.us115, i64 32 ; 2 uses
  %.not.us118 = icmp eq ptr %i.ae, %i.d
  br i1 %.not.us118, label %.thread84, label %.lr.ph114.split.split.us

.lr.ph114.split.split:                            ; preds = %.lr.ph114, %._crit_edge98.split.split
  %.034110 = phi ptr [ %i.ap, %._crit_edge98.split.split ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.034110, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %.not8794 = icmp eq ptr %i.ag, %.034110
  br i1 %.not8794, label %._crit_edge98.split.split, label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph114.split.split, %.thread66
  %.sroa.044.095 = phi ptr [ %i.ai, %.thread66 ], [ %i.ag, %.lr.ph114.split.split ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 32 ; 2 uses
  %.sroa.038.091 = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %.not8892 = icmp eq ptr %.sroa.038.091, %i.ak
  br i1 %.not8892, label %.thread66, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.038.093, i64 8
  %.sroa.038.0 = load ptr, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %.not88 = icmp eq ptr %.sroa.038.0, %i.ak
  br i1 %.not88, label %.thread66, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph97, %bb.e
  %.sroa.038.093 = phi ptr [ %.sroa.038.0, %bb.e ], [ %.sroa.038.091, %.lr.ph97 ] ; 2 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093) #17
  %i.an = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.am, ptr %1, i64 %2, i32 noundef %3)
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread84, label %bb.e

.thread66:                                        ; preds = %bb.e, %.lr.ph97
  %.not87 = icmp eq ptr %i.ai, %.034110
  br i1 %.not87, label %._crit_edge98.split.split, label %.lr.ph97

._crit_edge98.split.split:                        ; preds = %.thread66, %.lr.ph114.split.split
  %i.ap = getelementptr inbounds nuw i8, ptr %.034110, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.d
  br i1 %.not, label %.thread84, label %.lr.ph114.split.split

.thread84:                                        ; preds = %._crit_edge98.split.split.us.us, %.lr.ph97.us117, %.lr.ph.us102.us, %._crit_edge98.split.us.us.split, %._crit_edge.us.us, %.lr.ph.us.us, %._crit_edge98.split.split, %.lr.ph, %bb.a
  %.sroa.033.10 = phi i32 [ %i.x, %.lr.ph97.us117 ], [ 1, %bb.a ], [ 1, %._crit_edge98.split.us.us.split ], [ 0, %._crit_edge.us.us ], [ 1, %._crit_edge98.split.split ], [ 0, %.lr.ph.us102.us ], [ 0, %.lr.ph.us.us ], [ 0, %.lr.ph ], [ 1, %._crit_edge98.split.split.us.us ]
  ret i32 %.sroa.033.10
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_5BlockEEE11callback_fnIZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvE3$_0EES2_lS4_"(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.a, align 8, !tbaa !131 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 64
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %.val, %.val1
  br i1 %.not9.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.010.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.e = load i64, ptr %.010.i, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !11 ; 3 uses
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5async9TokenTypeEvE2idE
  %i.m = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5async9ValueTypeEvE2idE
  %or.cond.i.i.i = or i1 %i.l, %i.m
  %i.n = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5async9GroupTypeEvE2idE
  %spec.select.i.i.i = or i1 %i.n, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !133, !nonnull !25, !align !49
  %i.p = tail call fastcc i8 @_ZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEE(ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.o)
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %.val1
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit", label %bb.b

"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit": ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.011.3.i = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.sroa.011.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i8 @_ZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 3 uses
  %3 = alloca %"class.llvm::DenseMap.113", align 8 ; 9 uses
  %4 = alloca %"class.mlir::async::RuntimeAddRefOp", align 8 ; 7 uses
  %5 = alloca %"class.mlir::async::RuntimeDropRefOp", align 8 ; 8 uses
  store ptr %0, ptr %2, align 8
  %i.a = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %2, align 8, !tbaa !164
  %.sroa.013.066 = load ptr, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %.not2967 = icmp eq ptr %.sroa.013.066, null
  br i1 %.not2967, label %._crit_edge94, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.val2.i.pre = load ptr, ptr %3, align 8, !tbaa !52, !noalias !167
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53, !noalias !167 ; 4 uses
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.val.i.pre = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !54, !noalias !167 ; 2 uses
  %.phi.trans.insert125 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.pre = load i32, ptr %.phi.trans.insert125, align 8, !tbaa !55, !noalias !167
  %i.c = icmp eq i32 %.val3.i.pre, 0
  %i.d = zext i32 %.val.i.pre to i64              ; 4 uses
  %.idx193.a = mul nuw nsw i64 %i.d, 152          ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %.val.i.pre, 0
  %or.cond28 = select i1 %i.c, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond28, label %._crit_edge94, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = add nuw nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5                         ; 2 uses
  %i.g = load i32, ptr %.val1.i.pre, align 4, !tbaa !30, !noalias !168 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %._crit_edge94, label %.lr.ph220

.lr.ph.i.i.i:                                     ; preds = %.lr.ph220
  %i.j = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %._crit_edge94, label %.lr.ph220, !llvm.loop !138

.lr.ph220:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.l = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.pre, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30, !noalias !168 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !138

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph220
  %i.p = mul i64 %i.l, 4864
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.p, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.n, %._crit_edge.i.loopexit.i.i ]
  %i.q = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.q, 152
  %.idx192 = zext nneg i32 %narrow to i64
  %i.r = add i64 %.012.lcssa.i.i.i, %.idx192      ; 2 uses
  %.not3091 = icmp eq i64 %i.r, %.idx193.a
  br i1 %.not3091, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = add nuw nsw i64 %i.d, 31
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.013.068 = phi ptr [ %.sroa.013.0, %bb.e ], [ %.sroa.013.066, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.068, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.d, %.lr.ph
  %.068 = phi ptr [ %i.z, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN4mlir9Operation15getParentRegionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.ac = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ab) #17
  br label %_ZN4mlir9Operation15getParentRegionEv.exit

_ZN4mlir9Operation15getParentRegionEv.exit:       ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit ]
  %.not77 = icmp eq ptr %i.ad, %i.a
  call fastcc void @"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_1clES6_"(ptr nonnull %3, ptr noundef nonnull %.068)
  br i1 %.not77, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation15getParentRegionEv.exit
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !69, !nonnull !25, !noundef !25
  %i.af = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ae) #17
  br label %_ZN4mlir9Operation11getParentOpEv.exit, !llvm.loop !139

bb.e:                                             ; preds = %_ZN4mlir9Operation15getParentRegionEv.exit
  %.sroa.013.0 = load ptr, ptr %.sroa.013.068, align 8, !tbaa !166 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.013.0, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

._crit_edge94:                                    ; preds = %.lr.ph.i.i.i, %._crit_edge90, %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit
  call fastcc void @_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i8 1

bb.f:                                             ; preds = %.lr.ph93, %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.r, %.lr.ph93 ], [ %i.ft, %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.09.192 = getelementptr i8, ptr %.val2.i.pre, i64 %.pn ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.192, i64 8 ; 2 uses
  %.val.i87 = load ptr, ptr %i.ag, align 8, !tbaa !13 ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.192, i64 16 ; 2 uses
  %.val4.i = load i32, ptr %i.ah, align 8, !tbaa !38 ; 4 uses
  %i.ai = zext i32 %.val4.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i87, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val4.i, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIN4mlir5async15RuntimeAddRefOpELj4EEEZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESC_Lj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SC_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SJ_E14BlockUsersInfoEUlSC_SC_E_EEvOT_T0_.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = ptrtoint ptr %.val.i87 to i64
  %i.al = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = xor i64 %i.am, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4mlir5async15RuntimeAddRefOpElN9__gnu_cxx5__ops15_Iter_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_SQ_T0_T1_"(ptr noundef %.val.i87, ptr noundef nonnull %i.aj, i64 noundef %i.an)
  %i.ao = icmp ugt i32 %.val4.i, 16
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val.i87, i64 8 ; 2 uses
  br i1 %i.ao, label %.preheader.i.i.i.i, label %bb.m

.preheader.i.i.i.i:                               ; preds = %bb.g, %bb.l
  %.021.i.idx.i.i.i.i.i.i = phi i64 [ %.021.i.add.i.i.i.i.i.i, %bb.l ], [ 8, %bb.g ] ; 4 uses
  %.pn20.i.i.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i.i.i, %bb.l ], [ %.val.i87, %bb.g ] ; 3 uses
  %.021.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i87, i64 %.021.i.idx.i.i.i.i.i.i ; 6 uses
  %.0.val.i.i.i.i.i.i.i = load ptr, ptr %.021.i.ptr.i.i.i.i.i.i, align 8, !tbaa !71
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val.i87, align 8, !tbaa !71
  %i.ap = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0.val.i.i.i.i.i.i.i, ptr noundef %.val.i.i.i.i.i.i.i) #17
  br i1 %i.ap, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.preheader.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.021.i.ptr.i.i.i.i.i.i, align 8
  %i.aq = icmp samesign ugt i64 %.021.i.idx.i.i.i.i.i.i, 8
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !72

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val.i87, i64 %.021.i.idx.i.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i.i, i64 8
  %i.as = load i64, ptr %.val.i87, align 8
  store i64 %i.as, ptr %i.ar, align 8
  br label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i

_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %.val.i87, align 8
  br label %bb.l

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %i.at = load i64, ptr %.021.i.ptr.i.i.i.i.i.i, align 8 ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %.0.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.pn20.i.i.i.i.i.i.i, align 8, !tbaa !71
  %i.av = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef %.0.val11.i.i.i.i.i.i.i.i) #17
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %.0912.i.i.i.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i.i.i, %bb.k ]
  %i.aw = load i64, ptr %.013.i.i.i.i.i.i.i.i, align 8
  store i64 %i.aw, ptr %.0912.i.i.i.i.i.i.i.i, align 8
  %.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !71
  %i.ax = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef %.0.val.i.i.i.i.i.i.i.i) #17
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i.i.i.i.i.i.i", !llvm.loop !140

"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.k
  %.09.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i.i.i, %bb.k ], [ %.013.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  store i64 %i.at, ptr %.09.lcssa.i.i.i.i.i.i.i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i.i.i.i.i.i.i", %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i
  %.021.i.add.i.i.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops15_Iter_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_SQ_T0_.exit.i.i.i.i.i.i", label %.preheader.i.i.i.i, !llvm.loop !141

"_ZSt16__insertion_sortIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops15_Iter_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_SQ_T0_.exit.i.i.i.i.i.i": ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i87, i64 128
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i14.i.i.i.i.i.i", %"_ZSt16__insertion_sortIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops15_Iter_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_SQ_T0_.exit.i.i.i.i.i.i"
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.be, %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i14.i.i.i.i.i.i" ], [ %i.ay, %"_ZSt16__insertion_sortIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops15_Iter_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_SQ_T0_.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.az = load i64, ptr %.07.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %.010.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val11.i.i13.i.i.i.i.i.i = load ptr, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !71
  %i.bb = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef %.0.val11.i.i13.i.i.i.i.i.i) #17
  br i1 %i.bb, label %.lr.ph.i.i17.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i14.i.i.i.i.i.i"

.lr.ph.i.i17.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i
  %.013.i.i18.i.i.i.i.i.i = phi ptr [ %.0.i.i20.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %.0912.i.i19.i.i.i.i.i.i = phi ptr [ %.013.i.i18.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = load i64, ptr %.013.i.i18.i.i.i.i.i.i, align 8
  store i64 %i.bc, ptr %.0912.i.i19.i.i.i.i.i.i, align 8
  %.0.i.i20.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i18.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i21.i.i.i.i.i.i = load ptr, ptr %.0.i.i20.i.i.i.i.i.i, align 8, !tbaa !71
  %i.bd = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef %.0.val.i.i21.i.i.i.i.i.i) #17
  br i1 %i.bd, label %.lr.ph.i.i17.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i14.i.i.i.i.i.i", !llvm.loop !140

"_ZSt25__unguarded_linear_insertIPN4mlir5async15RuntimeAddRefOpEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_T0_.exit.i14.i.i.i.i.i.i": ; preds = %.lr.ph.i.i17.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.lcssa.i.i15.i.i.i.i.i.i = phi ptr [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i18.i.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.i.i ]
  store i64 %i.az, ptr %.09.lcssa.i.i15.i.i.i.i.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i16.i.i.i.i.i.i = icmp eq ptr %i.be, %i.aj
  br i1 %.not.i16.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIN4mlir5async15RuntimeAddRefOpELj4EEEZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESC_Lj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SC_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SJ_E14BlockUsersInfoEUlSC_SC_E_EEvOT_T0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !142

bb.m:                                             ; preds = %bb.g
  %.not19.i.i.i.i.i.i.i = icmp eq i32 %.val4.i, 1
  br i1 %.not19.i.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIN4mlir5async15RuntimeAddRefOpELj4EEEZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESC_Lj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SC_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SJ_E14BlockUsersInfoEUlSC_SC_E_EEvOT_T0_.exit.i", label %.lr.ph.i23.i.i.i.i.i.i

.lr.ph.i23.i.i.i.i.i.i:                           ; preds = %bb.m, %bb.s
  %.021.i24.i.i.i.i.i.i = phi ptr [ %.0.i31.i.i.i.i.i.i, %bb.s ], [ %scevgep.i.i.i.i.i.i, %bb.m ] ; 8 uses
  %.pn20.i25.i.i.i.i.i.i = phi ptr [ %.021.i24.i.i.i.i.i.i, %bb.s ], [ %.val.i87, %bb.m ] ; 4 uses
  %.0.val.i26.i.i.i.i.i.i = load ptr, ptr %.021.i24.i.i.i.i.i.i, align 8, !tbaa !71
  %.val.i27.i.i.i.i.i.i = load ptr, ptr %.val.i87, align 8, !tbaa !71
  %i.bf = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0.val.i26.i.i.i.i.i.i, ptr noundef %.val.i27.i.i.i.i.i.i) #17
  br i1 %i.bf, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.lr.ph.i23.i.i.i.i.i.i
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i = load ptr, ptr %.021.i24.i.i.i.i.i.i, align 8
  %i.bg = ptrtoint ptr %.021.i24.i.i.i.i.i.i to i64
  %i.bh = sub i64 %i.bg, %i.ak                    ; 3 uses
  %i.bi = ashr exact i64 %i.bh, 3                 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !72

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn20.i25.i.i.i.i.i.i, i64 16
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %.val.i87, i64 %i.bh, i1 false)
  br label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i39.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bn = icmp eq i64 %i.bh, 8
  br i1 %i.bn, label %bb.q, label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i39.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn20.i25.i.i.i.i.i.i, i64 8
  %i.bp = load i64, ptr %.val.i87, align 8
  store i64 %i.bp, ptr %i.bo, align 8
  br label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i39.i.i.i.i.i.i

_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i39.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  store ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i, ptr %.val.i87, align 8
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i23.i.i.i.i.i.i
  %i.bq = load i64, ptr %.021.i24.i.i.i.i.i.i, align 8 ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %.0.val11.i.i28.i.i.i.i.i.i = load ptr, ptr %.pn20.i25.i.i.i.i.i.i, align 8, !tbaa !71
  %i.bs = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef %.0.val11.i.i28.i.i.i.i.i.i) #17
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEE:bb.a
  %.010.i.i.i.i.i.i.i69.i = getelementptr inbounds i8, ptr %.02.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val11.i.i11.i.i.i.i.i.i = load ptr, ptr %.010.i.i.i.i.i.i.i69.i, align 8, !tbaa !73
  %i.ed = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef %.0.val11.i.i11.i.i.i.i.i.i) #17
  br i1 %i.ed, label %.lr.ph.i.i13.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPPN4mlir9OperationEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIS2_S2_Lj4ENSA_12DenseMapInfoIS2_vEENSA_6detail12DenseMapPairIS2_S2_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SI_E14BlockUsersInfoEUlS2_S2_E0_EEEvT_T0_.exit.i.i.i.i.i.i.i"

.lr.ph.i.i13.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i68.i, %.lr.ph.i.i13.i.i.i.i.i.i
  %.013.i.i14.i.i.i.i.i.i = phi ptr [ %.0.i.i16.i.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i69.i, %.lr.ph.i.i.i.i.i.i68.i ] ; 4 uses
  %.0912.i.i15.i.i.i.i.i.i = phi ptr [ %.013.i.i14.i.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i.i ], [ %.02.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i68.i ]
  %i.ee = load ptr, ptr %.013.i.i14.i.i.i.i.i.i, align 8, !tbaa !73
  store ptr %i.ee, ptr %.0912.i.i15.i.i.i.i.i.i, align 8, !tbaa !73
  %.0.i.i16.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i14.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i17.i.i.i.i.i.i = load ptr, ptr %.0.i.i16.i.i.i.i.i.i, align 8, !tbaa !73
  %i.ef = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef %.0.val.i.i17.i.i.i.i.i.i) #17
  br i1 %i.ef, label %.lr.ph.i.i13.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPPN4mlir9OperationEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIS2_S2_Lj4ENSA_12DenseMapInfoIS2_vEENSA_6detail12DenseMapPairIS2_S2_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SI_E14BlockUsersInfoEUlS2_S2_E0_EEEvT_T0_.exit.i.i.i.i.i.i.i", !llvm.loop !146

"_ZSt25__unguarded_linear_insertIPPN4mlir9OperationEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIS2_S2_Lj4ENSA_12DenseMapInfoIS2_vEENSA_6detail12DenseMapPairIS2_S2_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SI_E14BlockUsersInfoEUlS2_S2_E0_EEEvT_T0_.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i68.i
  %.09.lcssa.i.i.i.i.i.i.i70.i = phi ptr [ %.02.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i68.i ], [ %.013.i.i14.i.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i.i ]
  store ptr %i.ec, ptr %.09.lcssa.i.i.i.i.i.i.i70.i, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i12.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.dn
  br i1 %.not.i12.i.i.i.i.i.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit", label %.lr.ph.i.i.i.i.i.i68.i, !llvm.loop !148

bb.al:                                            ; preds = %bb.ag
  %.not19.i.i.i.i.i.i58.i = icmp eq i32 %.val8.i, 1
  br i1 %.not19.i.i.i.i.i.i58.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit", label %.lr.ph.i19.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i:                           ; preds = %bb.al, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i
  %.021.i20.i.i.i.i.i.i = phi ptr [ %.0.i27.i.i.i.i.i.i, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i57.i, %bb.al ] ; 7 uses
  %.pn20.i21.i.i.i.i.i.i = phi ptr [ %.021.i20.i.i.i.i.i.i, %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i ], [ %.val7.i, %bb.al ] ; 4 uses
  %.0.val.i22.i.i.i.i.i.i = load ptr, ptr %.021.i20.i.i.i.i.i.i, align 8, !tbaa !73
  %.val.i23.i.i.i.i.i.i = load ptr, ptr %.val7.i, align 8, !tbaa !73
  %i.eh = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0.val.i22.i.i.i.i.i.i, ptr noundef %.val.i23.i.i.i.i.i.i) #17
  %i.ei = load ptr, ptr %.021.i20.i.i.i.i.i.i, align 8, !tbaa !73 ; 3 uses
  br i1 %i.eh, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.lr.ph.i19.i.i.i.i.i.i
  %i.ej = ptrtoint ptr %.021.i20.i.i.i.i.i.i to i64
  %i.ek = sub i64 %i.ej, %i.do                    ; 3 uses
  %i.el = ashr exact i64 %i.ek, 3                 ; 2 uses
  %i.em = icmp sgt i64 %i.el, 1
  br i1 %i.em, label %bb.an, label %bb.ao, !prof !72

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr inbounds nuw i8, ptr %.pn20.i21.i.i.i.i.i.i, i64 16
  %i.eo = sub nsw i64 0, %i.el
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %.val7.i, i64 %i.ek, i1 false)
  br label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.eq = icmp eq i64 %i.ek, 8
  br i1 %i.eq, label %bb.ap, label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %.pn20.i21.i.i.i.i.i.i, i64 8
  %i.es = load ptr, ptr %.val7.i, align 8, !tbaa !73
  store ptr %i.es, ptr %i.er, align 8, !tbaa !73
  br label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i

bb.aq:                                            ; preds = %.lr.ph.i19.i.i.i.i.i.i
  %.0.val11.i.i24.i.i.i.i.i.i = load ptr, ptr %.pn20.i21.i.i.i.i.i.i, align 8, !tbaa !73
  %i.et = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef %.0.val11.i.i24.i.i.i.i.i.i) #17
  br i1 %i.et, label %.lr.ph.i.i29.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i

.lr.ph.i.i29.i.i.i.i.i.i:                         ; preds = %bb.aq, %.lr.ph.i.i29.i.i.i.i.i.i
  %.013.i.i30.i.i.i.i.i.i = phi ptr [ %.0.i.i32.i.i.i.i.i.i, %.lr.ph.i.i29.i.i.i.i.i.i ], [ %.pn20.i21.i.i.i.i.i.i, %bb.aq ] ; 4 uses
  %.0912.i.i31.i.i.i.i.i.i = phi ptr [ %.013.i.i30.i.i.i.i.i.i, %.lr.ph.i.i29.i.i.i.i.i.i ], [ %.021.i20.i.i.i.i.i.i, %bb.aq ]
  %i.eu = load ptr, ptr %.013.i.i30.i.i.i.i.i.i, align 8, !tbaa !73
  store ptr %i.eu, ptr %.0912.i.i31.i.i.i.i.i.i, align 8, !tbaa !73
  %.0.i.i32.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i30.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i33.i.i.i.i.i.i = load ptr, ptr %.0.i.i32.i.i.i.i.i.i, align 8, !tbaa !73
  %i.ev = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef %.0.val.i.i33.i.i.i.i.i.i) #17
  br i1 %i.ev, label %.lr.ph.i.i29.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i, !llvm.loop !146

_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i: ; preds = %.lr.ph.i.i29.i.i.i.i.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sink.i26.i.i.i.i.i.i = phi ptr [ %.val7.i, %bb.ap ], [ %.val7.i, %bb.an ], [ %.val7.i, %bb.ao ], [ %.021.i20.i.i.i.i.i.i, %bb.aq ], [ %.013.i.i30.i.i.i.i.i.i, %.lr.ph.i.i29.i.i.i.i.i.i ]
  store ptr %i.ei, ptr %.sink.i26.i.i.i.i.i.i, align 8, !tbaa !73
  %.0.i27.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i20.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i28.i.i.i.i.i.i = icmp eq ptr %.0.i27.i.i.i.i.i.i, %i.dn
  br i1 %.not.i28.i.i.i.i.i.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit", label %.lr.ph.i19.i.i.i.i.i.i, !llvm.loop !147

"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit": ; preds = %_ZSt13move_backwardIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit.i25.i.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIPPN4mlir9OperationEN9__gnu_cxx5__ops14_Val_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIS2_S2_Lj4ENSA_12DenseMapInfoIS2_vEENSA_6detail12DenseMapPairIS2_S2_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SI_E14BlockUsersInfoEUlS2_S2_E0_EEEvT_T0_.exit.i.i.i.i.i.i.i", %"_ZN4llvm4sortIRNS_11SmallVectorIN4mlir5async16RuntimeDropRefOpELj4EEEZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESC_Lj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SC_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SJ_E14BlockUsersInfoEUlSC_SC_E_EEvOT_T0_.exit.i", %bb.al
  %i.ew = load ptr, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ex = load i32, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %.idx = shl nuw nsw i64 %i.ey, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx
  %.not87 = icmp eq i32 %i.ex, 0
  br i1 %.not87, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %.loopexit, %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit"
  %i.fa = add i64 %.pn, 152
  %i.fb = sdiv exact i64 %i.fa, 152               ; 3 uses
  %.not.i.i = icmp ult i64 %i.fb, %i.d
  br i1 %.not.i.i, label %bb.ar, label %._crit_edge94

bb.ar:                                            ; preds = %._crit_edge90
  %i.fc = lshr i64 %i.fb, 5                       ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.pre, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !30
  %i.ff = trunc nuw i64 %i.fb to i32
  %i.fg = and i32 %i.ff, 31
  %i.fh = shl nsw i32 -1, %i.fg
  %i.fi = and i32 %i.fe, %i.fh                    ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ar
  %i.fk = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %i.x
  br i1 %i.fl, label %._crit_edge94, label %.lr.ph221

.lr.ph.i.i:                                       ; preds = %.lr.ph221
  %i.fm = add i64 %i.fo, 1                        ; 2 uses
  %i.fn = icmp eq i64 %i.fm, %i.x
  br i1 %i.fn, label %._crit_edge94, label %.lr.ph221, !llvm.loop !138

.lr.ph221:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.fo = phi i64 [ %i.fm, %.lr.ph.i.i ], [ %i.fk, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.pre, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !30 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit, !llvm.loop !138

_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit: ; preds = %.lr.ph221, %bb.ar
  %.012.lcssa.i.i = phi i64 [ %i.fc, %bb.ar ], [ %i.fo, %.lr.ph221 ]
  %.0.lcssa.i.i = phi i32 [ %i.fi, %bb.ar ], [ %i.fq, %.lr.ph221 ]
  %i.fs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i88 = mul i64 %.012.lcssa.i.i, 4864
  %narrow195 = mul nuw nsw i32 %i.fs, 152
  %.idx194 = zext nneg i32 %narrow195 to i64
  %i.ft = add i64 %.idx.i.i88, %.idx194           ; 2 uses
  %.not30 = icmp eq i64 %i.ft, %.idx193.a
  br i1 %.not30, label %._crit_edge94, label %bb.f

.lr.ph89:                                         ; preds = %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit", %.loopexit
  %.06388 = phi ptr [ %i.kp, %.loopexit ], [ %i.ew, %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_0clERZNS0_25optimizeReferenceCountingES2_SD_E14BlockUsersInfo.exit" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.fu = load i64, ptr %.06388, align 8
  store i64 %i.fu, ptr %4, align 8
  %i.fv = load ptr, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %i.fw = load i32, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %.idx95 = shl nuw nsw i64 %i.fx, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx95
  %.not7183 = icmp eq i32 %i.fw, 0
  br i1 %.not7183, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph89, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit
  %.06284 = phi ptr [ %i.ko, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit ], [ %i.fv, %.lr.ph89 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.fz = load i64, ptr %.06284, align 8
  store i64 %i.fz, ptr %5, align 8
  %i.ga = call noundef i64 @_ZN4mlir5async16RuntimeDropRefOp8getCountEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %i.gb = call noundef i64 @_ZN4mlir5async15RuntimeAddRefOp8getCountEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %.not72 = icmp eq i64 %i.ga, %i.gb
  br i1 %.not72, label %bb.as, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit

bb.as:                                            ; preds = %.lr.ph86
  %i.gc = load ptr, ptr %5, align 8, !tbaa !71
  %i.gd = load ptr, ptr %4, align 8, !tbaa !71
  %i.ge = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gc, ptr noundef %i.gd) #17
  br i1 %i.ge, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = load ptr, ptr %i.dk, align 8, !tbaa !13 ; 2 uses
  %i.gg = load i32, ptr %i.dl, align 8, !tbaa !38 ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %.idx96 = shl nuw nsw i64 %i.gh, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx96
  %.not7369 = icmp eq i32 %i.gg, 0
  br i1 %.not7369, label %._crit_edge75.thread, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.at, %bb.bc
  %.072 = phi ptr [ %i.gv, %bb.bc ], [ %i.gf, %bb.at ] ; 2 uses
  %.05771 = phi ptr [ %.2.ph, %bb.bc ], [ null, %bb.at ] ; 9 uses
  %.05870 = phi ptr [ %.260.ph, %bb.bc ], [ null, %bb.at ] ; 9 uses
  %i.gj = load ptr, ptr %.072, align 8, !tbaa !73 ; 11 uses
  %i.gk = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %.lr.ph74
  %i.gm = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gj, ptr noundef %i.gk) #17
  br i1 %i.gm, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = load ptr, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.go = icmp eq ptr %i.gj, %i.gn
  br i1 %i.go, label %._crit_edge75, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull %i.gj) #17
  br i1 %i.gp, label %._crit_edge75, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.gq, align 8, !tbaa !35
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !37
  %.not32 = icmp eq ptr %i.gs, @_ZN4mlir6detail14TypeIDResolverINS_4func6CallOpEvE2idE
  br i1 %.not32, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %.not75 = icmp eq ptr %.05870, null
  br i1 %.not75, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gj, ptr noundef nonnull %.05870) #17
  br i1 %i.gt, label %bb.bc, label %bb.bb

.critedge:                                        ; preds = %bb.ax
  %.not76 = icmp eq ptr %.05771, null
  br i1 %.not76, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.critedge
  %i.gu = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.05771, ptr noundef nonnull %i.gj) #17
  br i1 %i.gu, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph74, %bb.au, %bb.ay, %bb.bb, %bb.az, %bb.ba, %.critedge
  %.260.ph = phi ptr [ %.05870, %.critedge ], [ %.05870, %bb.ba ], [ %i.gj, %bb.az ], [ %.05870, %bb.bb ], [ %i.gj, %bb.ay ], [ %.05870, %bb.au ], [ %.05870, %.lr.ph74 ] ; 2 uses
  %.2.ph = phi ptr [ %i.gj, %.critedge ], [ %i.gj, %bb.ba ], [ %.05771, %bb.az ], [ %.05771, %bb.bb ], [ %.05771, %bb.ay ], [ %.05771, %bb.au ], [ %.05771, %.lr.ph74 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.072, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.gv, %i.gi
  br i1 %.not73, label %._crit_edge75, label %.lr.ph74

._crit_edge75:                                    ; preds = %bb.bc, %bb.av, %bb.aw
  %.058.lcssa = phi ptr [ %.05870, %bb.aw ], [ %.260.ph, %bb.bc ], [ %.05870, %bb.av ] ; 2 uses
  %.057.lcssa = phi ptr [ %.05771, %bb.aw ], [ %.2.ph, %bb.bc ], [ %.05771, %bb.av ] ; 2 uses
  %i.gw = icmp ne ptr %.058.lcssa, null
  %i.gx = icmp ne ptr %.057.lcssa, null
  %or.cond = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond, label %bb.bd, label %._crit_edge75.thread

bb.bd:                                            ; preds = %._crit_edge75
  %i.gy = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.058.lcssa, ptr noundef nonnull %.057.lcssa) #17
  br i1 %i.gy, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit, label %._crit_edge75.thread

._crit_edge75.thread:                             ; preds = %bb.at, %bb.bd, %._crit_edge75
  %i.gz = load ptr, ptr %5, align 8, !tbaa !71    ; 5 uses
  %i.ha = load ptr, ptr %4, align 8, !tbaa !71
  %i.hb = load i32, ptr %1, align 8, !noalias !172 ; 2 uses
  %i.hc = and i32 %i.hb, 1
  %.not.i.i.i.i = icmp eq i32 %i.hc, 0            ; 3 uses
  %i.hd = load ptr, ptr %i.s, align 8, !noalias !172
  %i.he = load ptr, ptr %i.t, align 8, !noalias !172
  %i.hf = load i32, ptr %i.u, align 8, !noalias !172
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.hd, ptr %i.s ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.he, ptr %i.v ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.hf, i32 4 ; 4 uses
  %i.hg = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.hg, label %.loopexit.i, label %bb.be

bb.be:                                            ; preds = %._crit_edge75.thread
  %i.hh = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.hi = ptrtoint ptr %i.gz to i64
  %i.hj = mul i64 %i.hi, -4658895280553007687     ; 2 uses
  %i.hk = lshr i64 %i.hj, 31
  %i.hl = xor i64 %i.hk, %i.hj
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = and i32 %i.hh, %i.hm                    ; 3 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.ho ; 2 uses
  %i.hq = lshr i64 %i.ho, 5
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !30, !noalias !173
  %i.ht = and i32 %i.hn, 31
  %i.hu = lshr i32 %i.hs, %i.ht
  %i.hv = trunc i32 %i.hu to i1
  br i1 %i.hv, label %.lr.ph.i.i93, label %.loopexit.i, !prof !74

.lr.ph.i.i93:                                     ; preds = %bb.be, %bb.bf
  %i.hw = phi ptr [ %i.ic, %bb.bf ], [ %i.hp, %bb.be ]
  %.024.i.i = phi i32 [ %i.ia, %bb.bf ], [ %i.hn, %bb.be ]
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !73, !noalias !173
  %i.hy = icmp eq ptr %i.gz, %i.hx
  br i1 %i.hy, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit, label %bb.bf, !prof !72

bb.bf:                                            ; preds = %.lr.ph.i.i93
  %i.hz = add nuw i32 %.024.i.i, 1
  %i.ia = and i32 %i.hz, %i.hh                    ; 3 uses
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.ib ; 2 uses
  %i.id = lshr i64 %i.ib, 5
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !30, !noalias !173
  %i.ig = and i32 %i.ia, 31
  %i.ih = lshr i32 %i.if, %i.ig
  %i.ii = trunc i32 %i.ih to i1
  br i1 %i.ii, label %.lr.ph.i.i93, label %.loopexit.i, !prof !75, !llvm.loop !157

.loopexit.i:                                      ; preds = %bb.be, %._crit_edge75.thread, %bb.bf
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ic, %bb.bf ], [ null, %._crit_edge75.thread ], [ %i.hp, %bb.be ]
  %i.ij = shl i32 %i.hb, 1
  %i.ik = and i32 %i.ij, -4
  %i.il = add i32 %i.ik, 4
  %i.im = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i89 = icmp ult i32 %i.il, %i.im
  br i1 %.not.i.i89, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i, label %bb.bg, !prof !72

bb.bg:                                            ; preds = %.loopexit.i
  %i.in = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.in), !noalias !173
  %i.io = load i32, ptr %1, align 8, !noalias !174
  %i.ip = and i32 %i.io, 1
  %.not.i.i.i = icmp eq i32 %i.ip, 0              ; 3 uses
  %i.iq = load ptr, ptr %i.s, align 8, !noalias !174
  %i.ir = load ptr, ptr %i.t, align 8, !noalias !174
  %i.is = load i32, ptr %i.u, align 8, !noalias !174
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.iq, ptr %i.s ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.ir, ptr %i.v ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.is, i32 4 ; 2 uses
  %i.it = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.it)
  %i.iu = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.iv = ptrtoint ptr %i.gz to i64
  %i.iw = mul i64 %i.iv, -4658895280553007687     ; 2 uses
  %i.ix = lshr i64 %i.iw, 31
  %i.iy = xor i64 %i.ix, %i.iw
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = and i32 %i.iu, %i.iz                    ; 3 uses
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.jb ; 2 uses
  %i.jd = lshr i64 %i.jb, 5
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !30, !noalias !173
  %i.jg = and i32 %i.ja, 31
  %i.jh = lshr i32 %i.jf, %i.jg
  %i.ji = trunc i32 %i.jh to i1
  br i1 %i.ji, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i, !prof !74

.lr.ph.i:                                         ; preds = %bb.bg, %bb.bh
  %i.jj = phi ptr [ %i.jp, %bb.bh ], [ %i.jc, %bb.bg ] ; 2 uses
  %.024.i = phi i32 [ %i.jn, %bb.bh ], [ %i.ja, %bb.bg ]
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !73, !noalias !173
  %i.jl = icmp eq ptr %i.gz, %i.jk
  br i1 %i.jl, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i, label %bb.bh, !prof !72

bb.bh:                                            ; preds = %.lr.ph.i
  %i.jm = add nuw i32 %.024.i, 1
  %i.jn = and i32 %i.jm, %i.iu                    ; 3 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.jo ; 2 uses
  %i.jq = lshr i64 %i.jo, 5
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !30, !noalias !173
  %i.jt = and i32 %i.jn, 31
  %i.ju = lshr i32 %i.js, %i.jt
  %i.jv = trunc i32 %i.ju to i1
  br i1 %i.jv, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i, !prof !75, !llvm.loop !157

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i: ; preds = %bb.bh, %.lr.ph.i, %bb.bg, %.loopexit.i
  %.pre-phi127 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.bg ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.bh ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.bg ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.bh ]
  %i.jw = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.jc, %bb.bg ], [ %i.jp, %bb.bh ], [ %i.jj, %.lr.ph.i ] ; 3 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %.pre-phi127 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = ashr exact i64 %i.jz, 4                 ; 2 uses
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = and i32 %i.kb, 31
  %i.kd = shl nuw i32 1, %i.kc
  %i.ke = lshr i64 %i.ka, 5
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !30, !noalias !173
  %i.kh = or i32 %i.kd, %i.kg
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !30, !noalias !173
  %i.ki = load i32, ptr %1, align 8, !noalias !173 ; 2 uses
  %i.kj = and i32 %i.ki, -2
  %i.kk = add i32 %i.kj, 2
  %i.kl = and i32 %i.ki, 1
  %i.km = or disjoint i32 %i.kk, %i.kl
  store i32 %i.km, ptr %1, align 8, !noalias !173
  store ptr %i.gz, ptr %i.jw, align 8, !tbaa !73, !noalias !173
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %i.ha, ptr %i.kn, align 8, !tbaa !73, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i93, %.lr.ph86, %bb.as, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ko = getelementptr inbounds nuw i8, ptr %.06284, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.ko, %i.fy
  br i1 %.not71, label %.loopexit, label %.lr.ph86

.loopexit:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_.exit, %.lr.ph89, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN4mlir9OperationES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.kp = getelementptr inbounds nuw i8, ptr %.06388, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.kp, %i.ez
  br i1 %.not, label %._crit_edge90, label %.lr.ph89
}

declare noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_1clES6_"(ptr nofree captures(none) %.0.val, ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 4 uses
  %i.d = load ptr, ptr %.0.val, align 8, !tbaa !52, !noalias !179 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !179 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54, !noalias !179 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [152 x i8], ptr %i.d, i64 %i.q ; 2 uses
  %i.s = lshr i64 %i.q, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30
  %i.v = and i32 %i.p, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !74

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.ae, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %.05.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = icmp eq ptr %i.c, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit.loopexit, label %bb.c, !prof !72

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add nuw i32 %.05.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [152 x i8], ptr %i.d, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ai = and i32 %i.ac, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !75, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ], [ %i.ae, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !77
  %i.al = getelementptr i8, ptr %.0.val, i64 16   ; 3 uses
  %.val6.i.i.i = load i32, ptr %i.al, align 8, !tbaa !55
  %i.am = shl i32 %.val6.i.i.i, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.h, 3
  %.not.i.i.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E22findBucketForInsertionIS4_EEPSK_RKT_SO_.exit.i.i, label %bb.d, !prof !72

bb.d:                                             ; preds = %.loopexit.i.i
  %i.ap = shl i32 %i.h, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %.0.val, i32 noundef %i.ap)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E15LookupBucketForIS4_EEbRKT_RPSK_(ptr noundef nonnull align 1 dereferenceable(1) %.0.val, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  %.val4.i.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !53
  %.val5.i.pre.i.i = load ptr, ptr %.0.val, align 8, !tbaa !52
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E22findBucketForInsertionIS4_EEPSK_RKT_SO_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E22findBucketForInsertionIS4_EEPSK_RKT_SO_.exit.i.i: ; preds = %bb.d, %.loopexit.i.i
  %.val5.i.i.i = phi ptr [ %.val5.i.pre.i.i, %bb.d ], [ %i.d, %.loopexit.i.i ]
  %.val4.i.i.i = phi ptr [ %.val4.i.pre.i.i, %bb.d ], [ %i.f, %.loopexit.i.i ]
  %i.aq = phi ptr [ %.pre.i.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 13 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.val5.i.i.i to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 152               ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = lshr i64 %i.au, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = or i32 %i.ax, %i.ba
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !30
  %.val.i.i.i.i = load i32, ptr %i.al, align 8, !tbaa !55
  %i.bc = add i32 %.val.i.i.i.i, 1
  store i32 %i.bc, ptr %i.al, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.aq, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.be, i8 0, i64 128, i1 false)
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 0, ptr %i.bf, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  store i32 4, ptr %i.bg, align 4, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  store i32 4, ptr %i.bj, align 4, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  store i32 4, ptr %i.bm, align 4, !tbaa !14
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E22findBucketForInsertionIS4_EEPSK_RKT_SO_.exit.i.i
  %i.bn = phi i32 [ 4, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E22findBucketForInsertionIS4_EEPSK_RKT_SO_.exit.i.i ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit.loopexit ]
  %.sroa.0.0.i.i = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E22findBucketForInsertionIS4_EEPSK_RKT_SO_.exit.i.i ], [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit.loopexit ] ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 112 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp ult i32 %i.br, %i.bn
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !72

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull %0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_EixEOS4_.exit
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  store ptr %0, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.bq, align 8, !tbaa !38
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bq, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit: ; preds = %bb.e, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.ca = icmp ne ptr %i.bz, @_ZN4mlir6detail14TypeIDResolverINS_5async15RuntimeAddRefOpEvE2idE
  %.not2 = icmp eq ptr %0, null                   ; 2 uses
  %.not = or i1 %.not2, %i.ca
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  %.not.i9 = icmp ult i32 %i.cc, %i.ce
  br i1 %.not.i9, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr nonnull %0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE9push_backES3_.exit

bb.i:                                             ; preds = %bb.g
  %i.cf = zext i32 %i.cc to i64
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  store ptr %0, ptr %i.ch, align 1
  %i.ci = load i32, ptr %i.cb, align 8, !tbaa !38
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cb, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE9push_backES3_.exit: ; preds = %bb.i, %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i10 = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i10, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37
  %i.cm = icmp ne ptr %i.cl, @_ZN4mlir6detail14TypeIDResolverINS_5async16RuntimeDropRefOpEvE2idE
  %.not3 = or i1 %.not2, %i.cm
  br i1 %.not3, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async16RuntimeDropRefOpELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE9push_backES3_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !38 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 68
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14
  %.not.i12 = icmp ult i32 %i.cp, %i.cr
  br i1 %.not.i12, label %bb.l, label %bb.k, !prof !72

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async16RuntimeDropRefOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr nonnull %0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async16RuntimeDropRefOpELb1EE9push_backES3_.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  store ptr %0, ptr %i.cu, align 1
  %i.cv = load i32, ptr %i.co, align 8, !tbaa !38
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.co, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async16RuntimeDropRefOpELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async16RuntimeDropRefOpELb1EE9push_backES3_.exit: ; preds = %bb.l, %bb.k, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5async15RuntimeAddRefOpELb1EE9push_backES3_.exit
  ret void
}

declare noundef i64 @_ZN4mlir5async16RuntimeDropRefOp8getCountEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef i64 @_ZN4mlir5async15RuntimeAddRefOp8getCountEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.val2.i = load i32, ptr %i.a, align 4, !tbaa !54 ; 2 uses
  %i.b = icmp eq i32 %.val2.i, 0
  br i1 %i.b, label %_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEE17deallocateBucketsEv.exit, label %.lr.ph11.preheader.i

.lr.ph11.preheader.i:                             ; preds = %bb.a
  %.val4.i = load ptr, ptr %0, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.d = zext i32 %.val2.i to i64
  %i.e = add nuw nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %._crit_edge.i, %.lr.ph11.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30   ; 2 uses
  %.not11.i6.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph11.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.i = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i7.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.aa, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i, i1 true)
  %i.k = or disjoint i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [152 x i8], ptr %.val4.i, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.p) #17
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIN4mlir5async16RuntimeDropRefOpELj4EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.t) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5async16RuntimeDropRefOpELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN4mlir5async16RuntimeDropRefOpELj4EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i.i
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5async16RuntimeDropRefOpELj4EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.w) #17
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorIN4mlir5async16RuntimeDropRefOpELj4EED2Ev.exit.i.i.i
  %i.z = add i32 %.0.i7.i, -1
  %i.aa = and i32 %i.z, %.0.i7.i                  ; 2 uses
  %.not11.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !180

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph11.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEv.exit, label %.lr.ph11.i, !llvm.loop !181

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !54   ; 2 uses
  %i.ab = icmp eq i32 %.pr, 0
  br i1 %i.ab, label %_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEv.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !52
  %i.ad = zext i32 %.pr to i64                    ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 152
  %i.af = add nuw nsw i64 %i.ad, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E10destroyAllEv.exit, %bb.f
  ret void
}

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E15LookupBucketForIS4_EEbRKT_RPSK_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52, !noalias !186 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !noalias !186 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54, !noalias !186 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !74

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !72

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !75, !llvm.loop !0

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #10 align 2 {
_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEEC2EjNS_12DenseMapBaseISK_S3_SH_SI_SJ_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.113", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
end_hunk_1
