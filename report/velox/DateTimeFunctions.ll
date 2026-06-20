inline.NumInlined: 12061
inline.NumDeleted: 3883
begin_hunk_0_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEESA_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSE_EEEE7iterateIJNS1_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_:bb.a
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = sext i32 %i.ag to i64                   ; 5 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !1881
  %.sroa.0.0.copyload.i10.pre.i = load i64, ptr %.pre.i, align 8, !tbaa !138, !noalias !1884 ; 3 uses
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i10.pre.i, -1
  %i.al = udiv i64 %.nonneg.i, 86400
  %i.am = xor i64 %i.al, -1
  %i.an = udiv i64 %.sroa.0.0.copyload.i10.pre.i, 86400
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !1887, !nonnull !78, !align !199
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1888, !nonnull !78, !align !199
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !514 ; 3 uses
  %i.as = icmp slt i64 %.sroa.0.0.copyload.i10.pre.i, 0
  %..i = select i1 %i.as, i64 %i.am, i64 %i.an
  %i.at = trunc i64 %..i to i32                   ; 3 uses
  %i.au = xor i32 %i.ag, -1
  %i.av = add i32 %i.ae, %i.au                    ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.av, 7
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.av, 31
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, 8589934560              ; 4 uses
  %i.ay = add nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ar, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.az, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader, label %vec.epilog.ph, !prof !605

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.ax, 8589934584            ; 3 uses
  %i.bd = add nsw i64 %n.vec14, %i.ak
  %broadcast.splatinsert15 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep21 = getelementptr [4 x i8], ptr %i.ar, i64 %i.ak
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %gep22 = getelementptr [4 x i8], ptr %invariant.gep21, i64 %index17
  store <8 x i32> %broadcast.splat16, ptr %gep22, align 4, !tbaa !3
  %index.next18 = add nuw i64 %index17, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1891

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.ax, %n.vec14
  br i1 %cmp.n19, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit20.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i ], [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i32 %i.at, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ae, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1892

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !544   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !765
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !767
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.bl, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !1893
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !1896
  store i8 1, ptr %4, align 8, !tbaa !1897
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !1899
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSH_EEEE7iterateIJNS4_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull byval(%class.anon.1311) align 8 %3, ptr noundef nonnull byval(%class.anon.1312) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSH_EEEE7iterateIJNS4_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1311) align 8 %2, ptr noundef byval(%class.anon.1312) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1893, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1896
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1900 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre38.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1881
  %.sroa.0.0.copyload.i16.pre.i = load i64, ptr %.pre38.i, align 8, !tbaa !138, !noalias !1901 ; 3 uses
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i16.pre.i, -1
  %i.ac = udiv i64 %.nonneg.i, 86400
  %i.ad = xor i64 %i.ac, -1
  %i.ae = udiv i64 %.sroa.0.0.copyload.i16.pre.i, 86400
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1887, !nonnull !78, !align !199
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1888, !nonnull !78, !align !199
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !514
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.aj, i64 %4
  %i.ak = icmp slt i64 %.sroa.0.0.copyload.i16.pre.i, 0
  %..i = select i1 %i.ak, i64 %i.ad, i64 %i.ae
  %i.al = trunc i64 %..i to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i

_ZN8facebook5velox6StatusD2Ev.exit26.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i, %.preheader.i
  %.037.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %_ZN8facebook5velox6StatusD2Ev.exit26.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.037.i, i1 true)
  %i.an = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.am
  store i32 %i.al, ptr %i.an, align 4, !tbaa !3
  %i.ao = add nsw i64 %.037.i, -1
  %i.ap = and i64 %i.ao, %.037.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit26.i, !llvm.loop !1904

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1893, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1896
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !138
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %5 = sext i32 %i.bj to i64
  %.pre.i38 = load ptr, ptr %i.bi, align 8, !tbaa !1900 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre38.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !1881
  %.sroa.0.0.copyload.i16.pre.i41 = load i64, ptr %.pre38.i40, align 8, !tbaa !138, !noalias !1905 ; 3 uses
  %.nonneg.i42 = xor i64 %.sroa.0.0.copyload.i16.pre.i41, -1
  %i.bk = udiv i64 %.nonneg.i42, 86400
  %i.bl = xor i64 %i.bk, -1
  %i.bm = udiv i64 %.sroa.0.0.copyload.i16.pre.i41, 86400
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1887, !nonnull !78, !align !199
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1888, !nonnull !78, !align !199
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !514
  %invariant.gep.i43 = getelementptr [4 x i8], ptr %i.br, i64 %5
  %i.bs = icmp slt i64 %.sroa.0.0.copyload.i16.pre.i41, 0
  %..i45 = select i1 %i.bs, i64 %i.bl, i64 %i.bm
  %i.bt = trunc i64 %..i45 to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i43

_ZN8facebook5velox6StatusD2Ev.exit26.i43:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i43, %.preheader.i37
  %.037.i44 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %_ZN8facebook5velox6StatusD2Ev.exit26.i43 ] ; 3 uses
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.037.i44, i1 true)
  %i.bv = getelementptr [4 x i8], ptr %invariant.gep.i43, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !3
  %i.bw = add i64 %.037.i44, -1
  %i.bx = and i64 %i.bw, %.037.i44                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47, label %_ZN8facebook5velox6StatusD2Ev.exit26.i43, !llvm.loop !1904

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i43, %bb.e, %bb.d
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47
  %i.bz = load i8, ptr %3, align 8, !tbaa !1897, !range !77, !noundef !78
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1899
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i48 = load ptr, ptr %i.cf, align 8        ; 2 uses
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  %i.ch = phi i32 [ %i.by, %.lr.ph ], [ %i.dz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %.069 = phi i32 [ %i.c, %.lr.ph ], [ %i.ch, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %i.ci = sdiv i32 %.069, 64                      ; 3 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !138
  %i.cm = xor i64 %i.cl, %i.ce                    ; 2 uses
  switch i64 %i.cm, label %.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.f
  %i.cn = shl nsw i32 %i.ci, 6
  %6 = sext i32 %i.cn to i64
  %.pre98.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !1881
  %.sroa.0.0.copyload.i47.pre.i = load i64, ptr %.pre98.i, align 8, !tbaa !138, !noalias !1908 ; 3 uses
  %.nonneg86.i = xor i64 %.sroa.0.0.copyload.i47.pre.i, -1
  %i.co = udiv i64 %.nonneg86.i, 86400
  %i.cp = xor i64 %i.co, -1
  %i.cq = udiv i64 %.sroa.0.0.copyload.i47.pre.i, 86400
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !1887, !nonnull !78, !align !199
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1888, !nonnull !78, !align !199
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !514
  %invariant.gep.i54 = getelementptr [4 x i8], ptr %i.cu, i64 %6
  %i.cv = icmp slt i64 %.sroa.0.0.copyload.i47.pre.i, 0
  %.102.i = select i1 %i.cv, i64 %i.cp, i64 %i.cq
  %i.cw = trunc i64 %.102.i to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit63.i

bb.g:                                             ; preds = %bb.f
  %i.cx = shl nsw i32 %i.ci, 6                    ; 2 uses
  %i.cy = add i32 %i.cx, 64
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %.0.off = add i32 %.069, 127
  %.not93.i = icmp ult i32 %.0.off, 64
  br i1 %.not93.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.da = sext i32 %i.cx to i64                   ; 6 uses
  %.pre95.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !1881
  %.sroa.0.0.copyload.i29.pre.i = load i64, ptr %.pre95.i, align 8, !tbaa !138, !noalias !1911 ; 3 uses
  %.nonneg.i50 = xor i64 %.sroa.0.0.copyload.i29.pre.i, -1
  %i.db = udiv i64 %.nonneg.i50, 86400
  %i.dc = xor i64 %i.db, -1
  %i.dd = udiv i64 %.sroa.0.0.copyload.i29.pre.i, 86400
  %i.de = load ptr, ptr %i.cg, align 8, !tbaa !1887, !nonnull !78, !align !199
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1888, !nonnull !78, !align !199
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !514 ; 3 uses
  %i.di = icmp slt i64 %.sroa.0.0.copyload.i29.pre.i, 0
  %..i51 = select i1 %i.di, i64 %i.dc, i64 %i.dd
  %i.dj = trunc i64 %..i51 to i32                 ; 2 uses
  %i.dk = or disjoint i64 %i.da, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.cz) ; 2 uses
  %i.dl = sub i64 %umax, %i.da                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dl, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i64 %i.dl, 32
  %n.mod.vf86 = and i64 %umax, 1                  ; 3 uses
  %n.vec87 = sub nuw i64 %i.dl, %n.mod.vf86       ; 3 uses
  %i.dm = add i64 %n.vec87, %i.da                 ; 2 uses
  %broadcast.splatinsert88 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat89 = shufflevector <8 x i32> %broadcast.splatinsert88, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check85, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr [4 x i8], ptr %i.dh, i64 %i.da
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep96 = getelementptr [4 x i8], ptr %i.dh, i64 %i.da
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat89, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat89, ptr %i.dn, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat89, ptr %i.do, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat89, ptr %i.dp, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec87
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1914

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf86, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index90 = phi i64 [ %index.next91, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep97 = getelementptr [4 x i8], ptr %invariant.gep96, i64 %index90
  store <8 x i32> %broadcast.splat89, ptr %gep97, align 4, !tbaa !3
  %index.next91 = add nuw i64 %index90, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1915

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %n.mod.vf86, 0
  br i1 %cmp.n92, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.091.i.ph = phi i64 [ %i.dm, %middle.block ], [ %i.da, %iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.091.i = phi i64 [ %i.dt, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.091.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.091.i
  store i32 %i.dj, ptr %i.ds, align 4, !tbaa !3
  %i.dt = add nuw i64 %.091.i, 1                  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.cz
  br i1 %i.du, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, !llvm.loop !1916

_ZN8facebook5velox6StatusD2Ev.exit63.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit63.i, %.lr.ph.i
  %.01590.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %i.dy, %_ZN8facebook5velox6StatusD2Ev.exit63.i ] ; 3 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01590.i, i1 true)
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep.i54, i64 %i.dv
  store i32 %i.cw, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add i64 %.01590.i, -1
  %i.dy = and i64 %i.dx, %.01590.i                ; 2 uses
  %.not.i52 = icmp eq i64 %i.dy, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit63.i, !llvm.loop !1917

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit63.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.dz = add nsw i32 %i.ch, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1918

bb.h:                                             ; preds = %._crit_edge
  %i.ea = ashr i32 %1, 6
  %i.eb = and i32 %1, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i53 = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i53, -1
  %i.ee = load i8, ptr %2, align 8, !tbaa !1893, !range !77, !noundef !78
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1896
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !138
  %i.ek = xor i8 %i.ee, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = and i64 %i.en, %i.ed                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.eo, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = sext i32 %i.d to i64
  %.pre.i56 = load ptr, ptr %i.ep, align 8, !tbaa !1900 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre38.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !1881
  %.sroa.0.0.copyload.i16.pre.i59 = load i64, ptr %.pre38.i58, align 8, !tbaa !138, !noalias !1919 ; 3 uses
  %.nonneg.i60 = xor i64 %.sroa.0.0.copyload.i16.pre.i59, -1
  %i.eq = udiv i64 %.nonneg.i60, 86400
  %i.er = xor i64 %i.eq, -1
  %i.es = udiv i64 %.sroa.0.0.copyload.i16.pre.i59, 86400
  %i.et = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1887, !nonnull !78, !align !199
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1888, !nonnull !78, !align !199
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !514
  %invariant.gep.i65 = getelementptr [4 x i8], ptr %i.ex, i64 %7
  %i.ey = icmp slt i64 %.sroa.0.0.copyload.i16.pre.i59, 0
  %..i63 = select i1 %i.ey, i64 %i.er, i64 %i.es
  %i.ez = trunc i64 %..i63 to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i61

_ZN8facebook5velox6StatusD2Ev.exit26.i61:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i61, %.preheader.i55
  %.037.i62 = phi i64 [ %i.eo, %.preheader.i55 ], [ %i.fd, %_ZN8facebook5velox6StatusD2Ev.exit26.i61 ] ; 3 uses
  %i.fa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.037.i62, i1 true)
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep.i65, i64 %i.fa
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !3
  %i.fc = add nsw i64 %.037.i62, -1
  %i.fd = and i64 %i.fc, %.037.i62                ; 2 uses
  %.not10.i64 = icmp eq i64 %i.fd, 0
  br i1 %.not10.i64, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit26.i61, !llvm.loop !1904

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i61, %_ZN8facebook5velox6StatusD2Ev.exit26.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEESA_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSE_EEEE7iterateIJNS1_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1322) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1337, align 8           ; 8 uses
  %4 = alloca %class.anon.1338, align 8           ; 8 uses
  %5 = alloca %class.anon.1334, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !764, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !52, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !765
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !768
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !544    ; 2 uses
  %.not.i.i5.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i.i10.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i.i10.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i11, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.o
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !769

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i11 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i11, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !769

.critedge.i.i.i.i:                                ; preds = %bb.f, %bb.e
  %.not38.i.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = sext i32 %i.ag to i64
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !1922
  %.pre26.i = load ptr, ptr %.pre.i, align 8, !tbaa !527, !noalias !1924
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !1927, !nonnull !78, !align !199
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1928, !nonnull !78, !align !199
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN8facebook5velox6StatusD2Ev.exit13.i ] ; 3 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %.pre26.i, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !tbaa !138, !noalias !1924 ; 3 uses
  %i.aq = icmp sgt i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = udiv i64 %.sroa.0.0.copyload.i.i, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit13.i

bb.k:                                             ; preds = %bb.i
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i.i, -1
  %i.as = udiv i64 %.nonneg.i, 86400
  %i.at = xor i64 %i.as, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit13.i

_ZN8facebook5velox6StatusD2Ev.exit13.i:           ; preds = %bb.k, %bb.j
  %i.au = phi i64 [ %i.ar, %bb.j ], [ %i.at, %bb.k ]
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ae, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit, label %bb.i, !llvm.loop !1930

bb.l:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ax = load ptr, ptr %1, align 8, !tbaa !544   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !765
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !767
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.bc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bd, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !1931
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !1934
  store i8 1, ptr %4, align 8, !tbaa !1935
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !1937
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSH_EEEE7iterateIJNS4_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull byval(%class.anon.1337) align 8 %3, ptr noundef nonnull byval(%class.anon.1338) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSH_EEEE7iterateIJNS4_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1337) align 8 %2, ptr noundef byval(%class.anon.1338) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1931, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1934
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1938 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre31.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1922
  %.pre32.i = load ptr, ptr %.pre31.i, align 8, !tbaa !527, !noalias !1939
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1927, !nonnull !78, !align !199
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1928, !nonnull !78, !align !199
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !514
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ar, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %5 = or disjoint i64 %i.ah, %4                  ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %.pre32.i, i64 %5
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !tbaa !138, !noalias !1939 ; 3 uses
  %i.aj = icmp sgt i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = udiv i64 %.sroa.0.0.copyload.i.i, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

bb.f:                                             ; preds = %bb.d
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i.i, -1
  %i.al = udiv i64 %.nonneg.i, 86400
  %i.am = xor i64 %i.al, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %i.ak, %bb.e ], [ %i.am, %bb.f ]
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %5
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add nsw i64 %.030.i, -1
  %i.ar = and i64 %i.aq, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ar, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1942

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = sdiv i32 %0, 64                         ; 2 uses
  %i.at = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i35, -1
  %i.aw = sub nsw i32 64, %i.at
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.av, %i.ax
  %i.az = load i8, ptr %2, align 8, !tbaa !1931, !range !77, !noundef !78
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1934
  %i.bc = sext i32 %i.as to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !138
  %i.bf = xor i8 %i.az, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = xor i64 %i.be, %i.bh
  %i.bj = and i64 %i.bi, %i.ay                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bj, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = shl nsw i32 %i.as, 6
  %6 = sext i32 %i.bl to i64
  %.pre.i38 = load ptr, ptr %i.bk, align 8, !tbaa !1938 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre31.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !1922
  %.pre32.i41 = load ptr, ptr %.pre31.i40, align 8, !tbaa !527, !noalias !1943
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1927, !nonnull !78, !align !199
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1928, !nonnull !78, !align !199
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i45, %.preheader.i37
  %.030.i42 = phi i64 [ %i.bj, %.preheader.i37 ], [ %i.cb, %_ZN8facebook5velox6StatusD2Ev.exit19.i45 ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i42, i1 true)
  %7 = or disjoint i64 %i.br, %6                  ; 2 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %.pre32.i41, i64 %7
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.bs, align 8, !tbaa !138, !noalias !1943 ; 3 uses
  %i.bt = icmp sgt i64 %.sroa.0.0.copyload.i.i43, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = udiv i64 %.sroa.0.0.copyload.i.i43, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i45

bb.k:                                             ; preds = %bb.i
  %.nonneg.i44 = xor i64 %.sroa.0.0.copyload.i.i43, -1
  %i.bv = udiv i64 %.nonneg.i44, 86400
  %i.bw = xor i64 %i.bv, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i45

_ZN8facebook5velox6StatusD2Ev.exit19.i45:         ; preds = %bb.k, %bb.j
  %i.bx = phi i64 [ %i.bu, %bb.j ], [ %i.bw, %bb.k ]
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %7
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = add i64 %.030.i42, -1
  %i.cb = and i64 %i.ca, %.030.i42                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.cb, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47, label %bb.i, !llvm.loop !1942

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i45, %bb.h, %bb.g
  %i.cc = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.cc, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47
  %i.cd = load i8, ptr %3, align 8, !tbaa !1935, !range !77, !noundef !78
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1937
  %i.cg = xor i8 %i.cd, 1
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i48 = load ptr, ptr %i.cj, align 8        ; 2 uses
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit47
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.t

bb.l:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  %i.cl = phi i32 [ %i.cc, %.lr.ph ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %.069 = phi i32 [ %i.c, %.lr.ph ], [ %i.cl, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %i.cm = sdiv i32 %.069, 64                      ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !138
  %i.cq = xor i64 %i.cp, %i.ci                    ; 2 uses
  switch i64 %i.cq, label %.lr.ph.i [
    i64 -1, label %bb.m
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.l
  %i.cr = shl nsw i32 %i.cm, 6
  %8 = sext i32 %i.cr to i64
  %.pre92.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !1922
  %.pre93.i = load ptr, ptr %.pre92.i, align 8, !tbaa !527, !noalias !1946
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !1927, !nonnull !78, !align !199
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1928, !nonnull !78, !align !199
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !514
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cw = shl nsw i32 %i.cm, 6                    ; 2 uses
  %i.cx = add i32 %i.cw, 64
  %i.cy = sext i32 %i.cx to i64
  %.0.off = add i32 %.069, 127
  %.not86.i = icmp ult i32 %.0.off, 64
  br i1 %.not86.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %bb.m
  %i.cz = sext i32 %i.cw to i64
  %.pre88.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !1922
  %.pre89.i = load ptr, ptr %.pre88.i, align 8, !tbaa !527, !noalias !1949
  %i.da = load ptr, ptr %i.ck, align 8, !tbaa !1927, !nonnull !78, !align !199
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1928, !nonnull !78, !align !199
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !514
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %.lr.ph85.i
  %.084.i = phi i64 [ %i.cz, %.lr.ph85.i ], [ %i.dn, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.084.i, 32
  %i.de = ashr exact i64 %sext.i, 28
  %i.df = getelementptr inbounds i8, ptr %.pre89.i, i64 %i.de
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %i.df, align 8, !tbaa !138, !noalias !1949 ; 3 uses
  %i.dg = icmp sgt i64 %.sroa.0.0.copyload.i.i50, -1
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = udiv i64 %.sroa.0.0.copyload.i.i50, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

bb.p:                                             ; preds = %bb.n
  %.nonneg.i51 = xor i64 %.sroa.0.0.copyload.i.i50, -1
  %i.di = udiv i64 %.nonneg.i51, 86400
  %i.dj = xor i64 %i.di, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %bb.p, %bb.o
  %i.dk = phi i64 [ %i.dh, %bb.o ], [ %i.dj, %bb.p ]
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.084.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !3
  %i.dn = add nuw i64 %.084.i, 1                  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.cy
  br i1 %i.do, label %bb.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, !llvm.loop !1952

bb.q:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit56.i, %.lr.ph.i
  %.01583.i = phi i64 [ %i.cq, %.lr.ph.i ], [ %i.dz, %_ZN8facebook5velox6StatusD2Ev.exit56.i ] ; 3 uses
  %i.dp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583.i, i1 true)
  %9 = or disjoint i64 %i.dp, %8                  ; 2 uses
  %i.dq = getelementptr inbounds [16 x i8], ptr %.pre93.i, i64 %9
  %.sroa.0.0.copyload.i40.i = load i64, ptr %i.dq, align 8, !tbaa !138, !noalias !1946 ; 3 uses
  %i.dr = icmp sgt i64 %.sroa.0.0.copyload.i40.i, -1
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = udiv i64 %.sroa.0.0.copyload.i40.i, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

bb.s:                                             ; preds = %bb.q
  %.nonneg79.i = xor i64 %.sroa.0.0.copyload.i40.i, -1
  %i.dt = udiv i64 %.nonneg79.i, 86400
  %i.du = xor i64 %i.dt, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

_ZN8facebook5velox6StatusD2Ev.exit56.i:           ; preds = %bb.s, %bb.r
  %i.dv = phi i64 [ %i.ds, %bb.r ], [ %i.du, %bb.s ]
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %9
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !3
  %i.dy = add i64 %.01583.i, -1
  %i.dz = and i64 %i.dy, %.01583.i                ; 2 uses
  %.not.i52 = icmp eq i64 %i.dz, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %bb.q, !llvm.loop !1953

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit56.i, %bb.l, %bb.m
  %i.ea = add nsw i32 %i.cl, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.l, !llvm.loop !1954

bb.t:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i53 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i53, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !1931, !range !77, !noundef !78
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1934
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !138
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.ep, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = sext i32 %i.d to i64
  %.pre.i56 = load ptr, ptr %i.eq, align 8, !tbaa !1938 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre31.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !1922
  %.pre32.i59 = load ptr, ptr %.pre31.i58, align 8, !tbaa !527, !noalias !1955
  %i.er = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1927, !nonnull !78, !align !199
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1928, !nonnull !78, !align !199
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !514
  br label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i63, %.preheader.i55
  %.030.i60 = phi i64 [ %i.ep, %.preheader.i55 ], [ %i.fg, %_ZN8facebook5velox6StatusD2Ev.exit19.i63 ] ; 3 uses
  %i.ew = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i60, i1 true)
  %11 = or disjoint i64 %i.ew, %10                ; 2 uses
  %i.ex = getelementptr inbounds [16 x i8], ptr %.pre32.i59, i64 %11
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.ex, align 8, !tbaa !138, !noalias !1955 ; 3 uses
  %i.ey = icmp sgt i64 %.sroa.0.0.copyload.i.i61, -1
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = udiv i64 %.sroa.0.0.copyload.i.i61, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i63

bb.w:                                             ; preds = %bb.u
  %.nonneg.i62 = xor i64 %.sroa.0.0.copyload.i.i61, -1
  %i.fa = udiv i64 %.nonneg.i62, 86400
  %i.fb = xor i64 %i.fa, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i63

_ZN8facebook5velox6StatusD2Ev.exit19.i63:         ; preds = %bb.w, %bb.v
  %i.fc = phi i64 [ %i.ez, %bb.v ], [ %i.fb, %bb.w ]
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %11
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %i.ff = add nsw i64 %.030.i60, -1
  %i.fg = and i64 %i.ff, %.030.i60                ; 2 uses
  %.not10.i64 = icmp eq i64 %i.fg, 0
  br i1 %.not10.i64, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.u, !llvm.loop !1942

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i63, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.t, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1362) align 8 %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1363, align 8           ; 6 uses
  %3 = alloca %class.anon.1364, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !764, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !52, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !765
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !768
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !544    ; 2 uses
  %.not.i.i6 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i36.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i36.not, label %.critedge.i.i.i, label %.lr.ph38

bb.f:                                             ; preds = %.lr.ph38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i37, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph38, label %.critedge.i.i.i, !llvm.loop !769

.lr.ph38:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i37, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !769

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph38, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph38 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1958, !nonnull !78, !align !199 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1959
  %.pre30 = load ptr, ptr %.pre, align 8, !tbaa !941 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre30, i64 16
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !943
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %.pre30, i64 58
  %.pre33 = load i8, ptr %.phi.trans.insert32, align 2, !tbaa !944, !range !77
  %i.am = trunc nuw i8 %.pre33 to i1
  %i.an = getelementptr inbounds nuw i8, ptr %.pre30, i64 59
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre30, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre30, i64 64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !1961, !nonnull !78, !align !199
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1962, !nonnull !78, !align !199
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit17
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit17 ] ; 4 uses
  %i.au = trunc nsw i64 %indvars.iv to i32
  br i1 %i.am, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.an, align 1, !tbaa !945, !range !77, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !946
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !947
  %i.az = shl nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.ax, %bb.k ], [ %i.au, %bb.i ]
  %i.bc = sext i32 %.0.i.i.i to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %.pre31, i64 %i.bc
  %.sroa.0.0.copyload.i.i7 = load i64, ptr %i.bd, align 8, !tbaa !138 ; 3 uses
  %i.be = icmp sgt i64 %.sroa.0.0.copyload.i.i7, -1
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc5
  %i.bf = udiv i64 %.sroa.0.0.copyload.i.i7, 86400
  br label %_ZN8facebook5velox6StatusD2Ev.exit17

bb.n:                                             ; preds = %.noexc5
  %.nonneg = xor i64 %.sroa.0.0.copyload.i.i7, -1
  %i.bg = udiv i64 %.nonneg, 86400
  %i.bh = xor i64 %i.bg, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit17

_ZN8facebook5velox6StatusD2Ev.exit17:             ; preds = %bb.m, %bb.n
  %i.bi = phi i64 [ %i.bf, %bb.m ], [ %i.bh, %bb.n ]
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1964

bb.o:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !544   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !765
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !767
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1965
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bl, ptr %i.bs, align 8, !tbaa !1967
  store i8 1, ptr %3, align 8, !tbaa !1968
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bl, ptr %i.bt, align 8, !tbaa !1970
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.bn, i32 noundef %i.bp, ptr noundef nonnull byval(%class.anon.1363) align 8 %2, ptr noundef nonnull byval(%class.anon.1364) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17, %bb.h, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJNS0_9TimestampEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1363) align 8 %2, ptr noundef byval(%class.anon.1364) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEESA_NS0_4DateENS0_15ConstantCheckerIJSC_EEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = sext i32 %i.ag to i64                   ; 5 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !2047
  %.pre28.i = load i32, ptr %.pre.i, align 4, !tbaa !3, !noalias !2050 ; 3 uses
  %.pre29.i = load ptr, ptr %i.aj, align 8, !tbaa !2053
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre29.i, i64 16
  %.pre30.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2054
  %.pre31.i = load ptr, ptr %.pre30.i, align 8, !tbaa !514 ; 3 uses
  %i.al = xor i32 %i.ag, -1
  %i.am = add i32 %i.ae, %i.al                    ; 3 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.am, 7
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.am, 31
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 24
  %n.vec = and i64 %i.ao, 8589934560              ; 4 uses
  %i.ap = add nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.pre28.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.pre31.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ar, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.as, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !2056

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader, label %vec.epilog.ph, !prof !605

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.ao, 8589934584            ; 3 uses
  %i.au = add nsw i64 %n.vec14, %i.ak
  %broadcast.splatinsert15 = insertelement <8 x i32> poison, i32 %.pre28.i, i64 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep21 = getelementptr [4 x i8], ptr %.pre31.i, i64 %i.ak
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %gep22 = getelementptr [4 x i8], ptr %invariant.gep21, i64 %index17
  store <8 x i32> %broadcast.splat16, ptr %gep22, align 4, !tbaa !3
  %index.next18 = add nuw i64 %index17, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2057

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.ao, %n.vec14
  br i1 %cmp.n19, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit16.i

_ZN8facebook5velox6StatusD2Ev.exit16.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit16.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i ], [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit16.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %.pre31.i, i64 %indvars.iv.i
  store i32 %.pre28.i, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ae, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit16.i, !llvm.loop !2058

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ax = load ptr, ptr %1, align 8, !tbaa !544   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !765
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !767
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.bc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bd, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !2059
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !2062
  store i8 1, ptr %4, align 8, !tbaa !2063
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !2065
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJSF_EEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull byval(%class.anon.1437) align 8 %3, ptr noundef nonnull byval(%class.anon.1438) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJSF_EEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1437) align 8 %2, ptr noundef byval(%class.anon.1438) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2059, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2062
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2066 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre33.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2047
  %.pre34.i = load i32, ptr %.pre33.i, align 4, !tbaa !3, !noalias !2067
  %.phi.trans.insert35.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre36.i = load ptr, ptr %.phi.trans.insert35.i, align 8, !tbaa !2053
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %.pre36.i, i64 16
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !2054
  %.pre39.i = load ptr, ptr %.pre38.i, align 8, !tbaa !514
  %invariant.gep.i = getelementptr [4 x i8], ptr %.pre39.i, i64 %4
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i

_ZN8facebook5velox6StatusD2Ev.exit22.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.af, %_ZN8facebook5velox6StatusD2Ev.exit22.i ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  %i.ad = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ac
  store i32 %.pre34.i, ptr %i.ad, align 4, !tbaa !3
  %i.ae = add nsw i64 %.032.i, -1
  %i.af = and i64 %i.ae, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.af, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit22.i, !llvm.loop !2070

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = sdiv i32 %0, 64                         ; 2 uses
  %i.ah = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ai
  %i.aj = xor i64 %notmask.i.i35, -1
  %i.ak = sub nsw i32 64, %i.ah
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.aj, %i.al
  %i.an = load i8, ptr %2, align 8, !tbaa !2059, !range !77, !noundef !78
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2062
  %i.aq = sext i32 %i.ag to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !138
  %i.at = xor i8 %i.an, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = xor i64 %i.as, %i.av
  %i.ax = and i64 %i.aw, %i.am                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ax, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = shl nsw i32 %i.ag, 6
  %5 = sext i32 %i.az to i64
  %.pre.i38 = load ptr, ptr %i.ay, align 8, !tbaa !2066 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre33.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !2047
  %.pre34.i41 = load i32, ptr %.pre33.i40, align 4, !tbaa !3, !noalias !2071
  %.phi.trans.insert35.i42 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %.pre36.i43 = load ptr, ptr %.phi.trans.insert35.i42, align 8, !tbaa !2053
  %.phi.trans.insert37.i44 = getelementptr inbounds nuw i8, ptr %.pre36.i43, i64 16
  %.pre38.i45 = load ptr, ptr %.phi.trans.insert37.i44, align 8, !tbaa !2054
  %.pre39.i46 = load ptr, ptr %.pre38.i45, align 8, !tbaa !514
  %invariant.gep.i47 = getelementptr [4 x i8], ptr %.pre39.i46, i64 %5
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i47

_ZN8facebook5velox6StatusD2Ev.exit22.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i47, %.preheader.i37
  %.032.i48 = phi i64 [ %i.ax, %.preheader.i37 ], [ %i.bd, %_ZN8facebook5velox6StatusD2Ev.exit22.i47 ] ; 3 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i48, i1 true)
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %i.ba
  store i32 %.pre34.i41, ptr %i.bb, align 4, !tbaa !3
  %i.bc = add i64 %.032.i48, -1
  %i.bd = and i64 %i.bc, %.032.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.bd, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit22.i47, !llvm.loop !2070

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i47, %bb.e, %bb.d
  %i.be = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3372 = icmp sgt i32 %i.be, %i.d
  br i1 %.not3372, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50
  %i.bf = load i8, ptr %3, align 8, !tbaa !2063, !range !77, !noundef !78
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2065
  %i.bi = xor i8 %i.bf, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i51 = load ptr, ptr %i.bl, align 8        ; 2 uses
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 8 ; 2 uses
  %.phi.trans.insert81.i = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.bm = phi i32 [ %i.be, %.lr.ph ], [ %i.cm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.073 = phi i32 [ %i.c, %.lr.ph ], [ %i.bm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.bn = sdiv i32 %.073, 64                      ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !138
  %i.br = xor i64 %i.bq, %i.bk                    ; 2 uses
  switch i64 %i.br, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_20ConstantVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_20ConstantVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i: ; preds = %bb.f
  %i.bs = shl nsw i32 %i.bn, 6
  %6 = sext i32 %i.bs to i64
  %.pre88.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !2047
  %.pre89.i = load i32, ptr %.pre88.i, align 4, !tbaa !3, !noalias !2074
  %.pre91.i = load ptr, ptr %.phi.trans.insert81.i, align 8, !tbaa !2053
  %.phi.trans.insert92.i = getelementptr inbounds nuw i8, ptr %.pre91.i, i64 16
  %.pre93.i = load ptr, ptr %.phi.trans.insert92.i, align 8, !tbaa !2054
  %.pre94.i = load ptr, ptr %.pre93.i, align 8, !tbaa !514
  %invariant.gep.i55 = getelementptr [4 x i8], ptr %.pre94.i, i64 %6
  br label %_ZN8facebook5velox6StatusD2Ev.exit54.i

bb.g:                                             ; preds = %bb.f
  %i.bt = shl nsw i32 %i.bn, 6                    ; 2 uses
  %i.bu = add i32 %i.bt, 64
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %.0.off = add i32 %.073, 127
  %.not77.i = icmp ult i32 %.0.off, 64
  br i1 %.not77.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.bw = sext i32 %i.bt to i64                   ; 6 uses
  %.pre79.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !2047
  %.pre80.i = load i32, ptr %.pre79.i, align 4, !tbaa !3, !noalias !2077 ; 2 uses
  %.pre82.i = load ptr, ptr %.phi.trans.insert81.i, align 8, !tbaa !2053
  %.phi.trans.insert83.i = getelementptr inbounds nuw i8, ptr %.pre82.i, i64 16
  %.pre84.i = load ptr, ptr %.phi.trans.insert83.i, align 8, !tbaa !2054
  %.pre85.i = load ptr, ptr %.pre84.i, align 8, !tbaa !514 ; 3 uses
  %i.bx = or disjoint i64 %i.bw, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bv) ; 2 uses
  %i.by = sub i64 %umax, %i.bw                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check89 = icmp ult i64 %i.by, 32
  %n.mod.vf90 = and i64 %umax, 1                  ; 3 uses
  %n.vec91 = sub nuw i64 %i.by, %n.mod.vf90       ; 3 uses
  %i.bz = add i64 %n.vec91, %i.bw                 ; 2 uses
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %.pre80.i, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check89, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr [4 x i8], ptr %.pre85.i, i64 %i.bw
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep100 = getelementptr [4 x i8], ptr %.pre85.i, i64 %i.bw
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat93, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat93, ptr %i.ca, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat93, ptr %i.cb, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat93, ptr %i.cc, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec91
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !2080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf90, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index94 = phi i64 [ %index.next95, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep101 = getelementptr [4 x i8], ptr %invariant.gep100, i64 %index94
  store <8 x i32> %broadcast.splat93, ptr %gep101, align 4, !tbaa !3
  %index.next95 = add nuw i64 %index94, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2081

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %n.mod.vf90, 0
  br i1 %cmp.n96, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader: ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.076.i.ph = phi i64 [ %i.bz, %middle.block ], [ %i.bw, %iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35.i
  %.076.i = phi i64 [ %i.cg, %_ZN8facebook5velox6StatusD2Ev.exit35.i ], [ %.076.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit35.i.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.pre85.i, i64 %.076.i
  store i32 %.pre80.i, ptr %i.cf, align 4, !tbaa !3
  %i.cg = add nuw i64 %.076.i, 1                  ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.bv
  br i1 %i.ch, label %_ZN8facebook5velox6StatusD2Ev.exit35.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2082

_ZN8facebook5velox6StatusD2Ev.exit54.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_20ConstantVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i
  %.01575.i = phi i64 [ %i.br, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_20ConstantVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit54.i ] ; 3 uses
  %i.ci = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575.i, i1 true)
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep.i55, i64 %i.ci
  store i32 %.pre89.i, ptr %i.cj, align 4, !tbaa !3
  %i.ck = add i64 %.01575.i, -1
  %i.cl = and i64 %i.ck, %.01575.i                ; 2 uses
  %.not.i53 = icmp eq i64 %i.cl, 0
  br i1 %.not.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit54.i, !llvm.loop !2083

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i, %_ZN8facebook5velox6StatusD2Ev.exit54.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.cm = add nsw i32 %i.bm, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !2084

bb.h:                                             ; preds = %._crit_edge
  %i.cn = ashr i32 %1, 6
  %i.co = and i32 %1, 63
  %i.cp = zext nneg i32 %i.co to i64
  %notmask.i54 = shl nsw i64 -1, %i.cp
  %i.cq = xor i64 %notmask.i54, -1
  %i.cr = load i8, ptr %2, align 8, !tbaa !2059, !range !77, !noundef !78
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2062
  %i.cu = sext i32 %i.cn to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !138
  %i.cx = xor i8 %i.cr, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = xor i64 %i.cw, %i.cz
  %i.db = and i64 %i.da, %i.cq                    ; 2 uses
  %.not.i55 = icmp eq i64 %i.db, 0
  br i1 %.not.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i56

.preheader.i56:                                   ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = sext i32 %i.d to i64
  %.pre.i57 = load ptr, ptr %i.dc, align 8, !tbaa !2066 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 8
  %.pre33.i59 = load ptr, ptr %.phi.trans.insert.i58, align 8, !tbaa !2047
  %.pre34.i60 = load i32, ptr %.pre33.i59, align 4, !tbaa !3, !noalias !2085
  %.phi.trans.insert35.i61 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 24
  %.pre36.i62 = load ptr, ptr %.phi.trans.insert35.i61, align 8, !tbaa !2053
  %.phi.trans.insert37.i63 = getelementptr inbounds nuw i8, ptr %.pre36.i62, i64 16
  %.pre38.i64 = load ptr, ptr %.phi.trans.insert37.i63, align 8, !tbaa !2054
  %.pre39.i65 = load ptr, ptr %.pre38.i64, align 8, !tbaa !514
  %invariant.gep.i70 = getelementptr [4 x i8], ptr %.pre39.i65, i64 %7
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i66

_ZN8facebook5velox6StatusD2Ev.exit22.i66:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i66, %.preheader.i56
  %.032.i67 = phi i64 [ %i.db, %.preheader.i56 ], [ %i.dg, %_ZN8facebook5velox6StatusD2Ev.exit22.i66 ] ; 3 uses
  %i.dd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i67, i1 true)
  %i.de = getelementptr [4 x i8], ptr %invariant.gep.i70, i64 %i.dd
  store i32 %.pre34.i60, ptr %i.de, align 4, !tbaa !3
  %i.df = add nsw i64 %.032.i67, -1
  %i.dg = and i64 %i.df, %.032.i67                ; 2 uses
  %.not10.i68 = icmp eq i64 %i.dg, 0
  br i1 %.not10.i68, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit22.i66, !llvm.loop !2070

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i66, %_ZN8facebook5velox6StatusD2Ev.exit22.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEESA_NS0_4DateENS0_15ConstantCheckerIJSC_EEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1448) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1463, align 8           ; 8 uses
  %4 = alloca %class.anon.1464, align 8           ; 8 uses
  %5 = alloca %class.anon.1460, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !764, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !52, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !765
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !768
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !544    ; 2 uses
  %.not.i.i5.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i.i11.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i.i11.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i12, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.o
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !769

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i12 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i12, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !769

.critedge.i.i.i.i:                                ; preds = %bb.f, %bb.e
  %.not38.i.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = sext i32 %i.ag to i64                   ; 5 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !2088
  %.pre25.i = load ptr, ptr %.pre.i, align 8, !tbaa !1081, !noalias !2090 ; 8 uses
  %.pre26.i = load ptr, ptr %i.aj, align 8, !tbaa !2093
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre26.i, i64 16
  %.pre27.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2094
  %.pre28.i = load ptr, ptr %.pre27.i, align 8, !tbaa !514 ; 8 uses
  %i.al = xor i32 %i.ag, -1
  %i.am = add i32 %i.ae, %i.al                    ; 3 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.am, 7
  %.pre28.i13 = ptrtoaddr ptr %.pre28.i to i64
  %.pre25.i14 = ptrtoaddr ptr %.pre25.i to i64
  %i.ap = sub i64 %.pre28.i13, %.pre25.i14
  %diff.check = icmp ult i64 %i.ap, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i32 %i.am, 31
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 24
  %n.vec = and i64 %i.ao, 8589934560              ; 4 uses
  %i.aq = add nsw i64 %n.vec, %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add i64 %index, %i.ak                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %wide.load = load <8 x i32>, ptr %i.as, align 4, !tbaa !3, !noalias !2090
  %wide.load16 = load <8 x i32>, ptr %i.at, align 4, !tbaa !3, !noalias !2090
  %wide.load17 = load <8 x i32>, ptr %i.au, align 4, !tbaa !3, !noalias !2090
  %wide.load18 = load <8 x i32>, ptr %i.av, align 4, !tbaa !3, !noalias !2090
  %i.aw = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %i.ar ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  store <8 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !3
  store <8 x i32> %wide.load16, ptr %i.ax, align 4, !tbaa !3
  store <8 x i32> %wide.load17, ptr %i.ay, align 4, !tbaa !3
  store <8 x i32> %wide.load18, ptr %i.az, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !2096

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vec.epilog.ph, !prof !605

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.ao, 8589934584            ; 3 uses
  %i.bb = add nsw i64 %n.vec20, %i.ak
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = add i64 %index21, %i.ak                 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %i.bc
  %wide.load22 = load <8 x i32>, ptr %i.bd, align 4, !tbaa !3, !noalias !2090
  %i.be = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %i.bc
  store <8 x i32> %wide.load22, ptr %i.be, align 4, !tbaa !3
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next23, %n.vec20
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2097

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.ao, %n.vec20
  br i1 %cmp.n24, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 3 uses
  %i.bg = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.bh = sub i32 %i.ae, %i.bg
  %xtraiter = and i32 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol

_ZN8facebook5velox6StatusD2Ev.exit13.i.prol:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol ], [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol ], [ 0, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader ]
  %i.bi = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %indvars.iv.i.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3, !noalias !2090
  %i.bk = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %indvars.iv.i.prol
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol, !llvm.loop !2098

_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader ], [ %indvars.iv.next.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol ]
  %i.bl = sub i32 %i.bg, %i.ae
  %i.bm = icmp ugt i32 %i.bl, -4
  br i1 %i.bm, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i

_ZN8facebook5velox6StatusD2Ev.exit13.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit13.i ], [ %indvars.iv.i.unr, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3, !noalias !2090
  %i.bp = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %indvars.iv.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %indvars.iv.next.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !2090
  %i.bs = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %indvars.iv.next.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %indvars.iv.next.i.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !2090
  %i.bv = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %indvars.iv.next.i.1
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %.pre25.i, i64 %indvars.iv.next.i.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3, !noalias !2090
  %i.by = getelementptr inbounds [4 x i8], ptr %.pre28.i, i64 %indvars.iv.next.i.2
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %i.ae, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i, !llvm.loop !2099

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bz = load ptr, ptr %1, align 8, !tbaa !544   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !765
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !767
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.ce, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.cf, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !2100
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bz, ptr %i.cg, align 8, !tbaa !2103
  store i8 1, ptr %4, align 8, !tbaa !2104
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bz, ptr %i.ch, align 8, !tbaa !2106
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJSF_EEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.cb, i32 noundef %i.cd, ptr noundef nonnull byval(%class.anon.1463) align 8 %3, ptr noundef nonnull byval(%class.anon.1464) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJSF_EEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1463) align 8 %2, ptr noundef byval(%class.anon.1464) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2100, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2103
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2107 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre30.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2088
  %.pre31.i = load ptr, ptr %.pre30.i, align 8, !tbaa !1081, !noalias !2108
  %.phi.trans.insert32.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre33.i = load ptr, ptr %.phi.trans.insert32.i, align 8, !tbaa !2093
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %.pre33.i, i64 16
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !2094
  %.pre36.i = load ptr, ptr %.pre35.i, align 8, !tbaa !514
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ah, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %5 = or disjoint i64 %i.ac, %4                  ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %.pre31.i, i64 %5
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3, !noalias !2108
  %i.af = getelementptr inbounds [4 x i8], ptr %.pre36.i, i64 %5
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nsw i64 %.029.i, -1
  %i.ah = and i64 %i.ag, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ah, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !2111

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sdiv i32 %0, 64                         ; 2 uses
  %i.aj = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ak
  %i.al = xor i64 %notmask.i.i35, -1
  %i.am = sub nsw i32 64, %i.aj
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl i64 %i.al, %i.an
  %i.ap = load i8, ptr %2, align 8, !tbaa !2100, !range !77, !noundef !78
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2103
  %i.as = sext i32 %i.ai to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !138
  %i.av = xor i8 %i.ap, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = xor i64 %i.au, %i.ax
  %i.az = and i64 %i.ay, %i.ao                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.az, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = shl nsw i32 %i.ai, 6
  %6 = sext i32 %i.bb to i64
  %.pre.i38 = load ptr, ptr %i.ba, align 8, !tbaa !2107 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre30.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !2088
  %.pre31.i41 = load ptr, ptr %.pre30.i40, align 8, !tbaa !1081, !noalias !2112
  %.phi.trans.insert32.i42 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %.pre33.i43 = load ptr, ptr %.phi.trans.insert32.i42, align 8, !tbaa !2093
  %.phi.trans.insert34.i44 = getelementptr inbounds nuw i8, ptr %.pre33.i43, i64 16
  %.pre35.i45 = load ptr, ptr %.phi.trans.insert34.i44, align 8, !tbaa !2094
  %.pre36.i46 = load ptr, ptr %.pre35.i45, align 8, !tbaa !514
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i47

_ZN8facebook5velox6StatusD2Ev.exit19.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i47, %.preheader.i37
  %.029.i48 = phi i64 [ %i.az, %.preheader.i37 ], [ %i.bh, %_ZN8facebook5velox6StatusD2Ev.exit19.i47 ] ; 3 uses
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i48, i1 true)
  %7 = or disjoint i64 %i.bc, %6                  ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %.pre31.i41, i64 %7
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2112
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre36.i46, i64 %7
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add i64 %.029.i48, -1
  %i.bh = and i64 %i.bg, %.029.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.bh, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit19.i47, !llvm.loop !2111

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i47, %bb.e, %bb.d
  %i.bi = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3372 = icmp sgt i32 %i.bi, %i.d
  br i1 %.not3372, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50
  %i.bj = load i8, ptr %3, align 8, !tbaa !2104, !range !77, !noundef !78
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2106
  %i.bm = xor i8 %i.bj, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i51 = load ptr, ptr %i.bp, align 8        ; 2 uses
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 8 ; 2 uses
  %.phi.trans.insert78.i = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.bq = phi i32 [ %i.bi, %.lr.ph ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.073 = phi i32 [ %i.c, %.lr.ph ], [ %i.bq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.br = sdiv i32 %.073, 64                      ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !138
  %i.bv = xor i64 %i.bu, %i.bo                    ; 2 uses
  switch i64 %i.bv, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i: ; preds = %bb.f
  %i.bw = shl nsw i32 %i.br, 6
  %8 = sext i32 %i.bw to i64
  %.pre85.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !2088
  %.pre86.i = load ptr, ptr %.pre85.i, align 8, !tbaa !1081, !noalias !2115
  %.pre88.i = load ptr, ptr %.phi.trans.insert78.i, align 8, !tbaa !2093
  %.phi.trans.insert89.i = getelementptr inbounds nuw i8, ptr %.pre88.i, i64 16
  %.pre90.i = load ptr, ptr %.phi.trans.insert89.i, align 8, !tbaa !2094
  %.pre91.i = load ptr, ptr %.pre90.i, align 8, !tbaa !514
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.bx = shl nsw i32 %i.br, 6                    ; 4 uses
  %i.by = add i32 %i.bx, 64
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %.0.off = add i32 %.073, 127
  %.not74.i = icmp ult i32 %.0.off, 64
  br i1 %.not74.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.ca = sext i32 %i.bx to i64                   ; 11 uses
  %.pre76.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !2088
  %.pre77.i = load ptr, ptr %.pre76.i, align 8, !tbaa !1081, !noalias !2118 ; 4 uses
  %.pre77.i90 = ptrtoaddr ptr %.pre77.i to i64
  %.pre79.i = load ptr, ptr %.phi.trans.insert78.i, align 8, !tbaa !2093
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %.pre79.i, i64 16
  %.pre81.i = load ptr, ptr %.phi.trans.insert80.i, align 8, !tbaa !2094
  %.pre82.i = load ptr, ptr %.pre81.i, align 8, !tbaa !514 ; 4 uses
  %.pre82.i89 = ptrtoaddr ptr %.pre82.i to i64
  %i.cb = or disjoint i64 %i.ca, 1
  %umax91 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.bz) ; 2 uses
  %i.cc = sub i64 %umax91, %i.ca                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cd = or disjoint i64 %i.ca, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.bz)
  %i.ce = xor i64 %i.ca, -1
  %i.cf = add i64 %umax, %i.ce                    ; 2 uses
  %i.cg = sext i32 %i.bx to i34                   ; 2 uses
  %i.ch = shl nsw i34 %i.cg, 2
  %i.ci = trunc i64 %i.cf to i34
  %i.cj = add i34 %i.cg, %i.ci
  %i.ck = shl i34 %i.cj, 2
  %i.cl = icmp slt i34 %i.ck, %i.ch
  %i.cm = icmp ugt i64 %i.cf, 4294967295
  %i.cn = or i1 %i.cl, %i.cm
  br i1 %i.cn, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.co = shl nsw i64 %i.ca, 2
  %i.cp = add i64 %i.co, %.pre82.i89
  %i.cq = sext i32 %i.bx to i34
  %i.cr = shl nsw i34 %i.cq, 2
  %i.cs = sext i34 %i.cr to i64
  %i.ct = add i64 %.pre77.i90, %i.cs
  %i.cu = sub i64 %i.cp, %i.ct
  %diff.check = icmp ult i64 %i.cu, 128
  br i1 %diff.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check92 = icmp ult i64 %i.cc, 32
  %n.mod.vf96 = and i64 %umax91, 1                ; 3 uses
  %n.vec97 = sub i64 %i.cc, %n.mod.vf96           ; 3 uses
  %i.cv = add i64 %n.vec97, %i.ca                 ; 2 uses
  br i1 %min.iters.check92, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.cw = add i64 %index, %i.ca                   ; 2 uses
  %i.cx = shl i64 %i.cw, 32
  %i.cy = ashr exact i64 %i.cx, 30
  %i.cz = getelementptr inbounds i8, ptr %.pre77.i, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %wide.load = load <8 x i32>, ptr %i.cz, align 4, !tbaa !3, !noalias !2118
  %wide.load93 = load <8 x i32>, ptr %i.da, align 4, !tbaa !3, !noalias !2118
  %wide.load94 = load <8 x i32>, ptr %i.db, align 4, !tbaa !3, !noalias !2118
  %wide.load95 = load <8 x i32>, ptr %i.dc, align 4, !tbaa !3, !noalias !2118
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.pre82.i, i64 %i.cw ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  store <8 x i32> %wide.load, ptr %i.dd, align 4, !tbaa !3
  store <8 x i32> %wide.load93, ptr %i.de, align 4, !tbaa !3
  store <8 x i32> %wide.load94, ptr %i.df, align 4, !tbaa !3
  store <8 x i32> %wide.load95, ptr %i.dg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec97
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf96, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index98 = phi i64 [ %index.next100, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.di = add i64 %index98, %i.ca                 ; 2 uses
  %i.dj = shl i64 %i.di, 32
  %i.dk = ashr exact i64 %i.dj, 30
  %i.dl = getelementptr inbounds i8, ptr %.pre77.i, i64 %i.dk
  %wide.load99 = load <8 x i32>, ptr %i.dl, align 4, !tbaa !3, !noalias !2118
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.pre82.i, i64 %i.di
  store <8 x i32> %wide.load99, ptr %i.dm, align 4, !tbaa !3
  %index.next100 = add nuw i64 %index98, 8        ; 2 uses
  %i.dn = icmp eq i64 %index.next100, %n.vec97
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n101 = icmp eq i64 %n.mod.vf96, 0
  br i1 %cmp.n101, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.073.i.ph = phi i64 [ %i.cv, %middle.block ], [ %i.ca, %vector.scevcheck ], [ %i.ca, %vector.memcheck ], [ %i.ca, %iter.check ], [ %i.cv, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.073.i = phi i64 [ %i.ds, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.073.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.073.i, 32
  %i.do = ashr exact i64 %sext.i, 30
  %i.dp = getelementptr inbounds i8, ptr %.pre77.i, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3, !noalias !2118
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pre82.i, i64 %.073.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !3
  %i.ds = add nuw i64 %.073.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.bz
  br i1 %i.dt, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2123

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i
  %.01572.i = phi i64 [ %i.bv, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS1_10VectorExecEEES8_NS0_4DateENS0_15ConstantCheckerIJSA_EEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i ], [ %i.dz, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01572.i, i1 true)
  %9 = or disjoint i64 %i.du, %8                  ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %.pre86.i, i64 %9
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3, !noalias !2115
  %i.dx = getelementptr inbounds [4 x i8], ptr %.pre91.i, i64 %9
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !3
  %i.dy = add i64 %.01572.i, -1
  %i.dz = and i64 %i.dy, %.01572.i                ; 2 uses
  %.not.i53 = icmp eq i64 %i.dz, 0
  br i1 %.not.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !2124

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.ea = add nsw i32 %i.bq, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !2125

bb.h:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i54 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i54, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !2100, !range !77, !noundef !78
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !2103
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !138
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i55 = icmp eq i64 %i.ep, 0
  br i1 %.not.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i56

.preheader.i56:                                   ; preds = %bb.h
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = sext i32 %i.d to i64
  %.pre.i57 = load ptr, ptr %i.eq, align 8, !tbaa !2107 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 8
  %.pre30.i59 = load ptr, ptr %.phi.trans.insert.i58, align 8, !tbaa !2088
  %.pre31.i60 = load ptr, ptr %.pre30.i59, align 8, !tbaa !1081, !noalias !2126
  %.phi.trans.insert32.i61 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 24
  %.pre33.i62 = load ptr, ptr %.phi.trans.insert32.i61, align 8, !tbaa !2093
  %.phi.trans.insert34.i63 = getelementptr inbounds nuw i8, ptr %.pre33.i62, i64 16
  %.pre35.i64 = load ptr, ptr %.phi.trans.insert34.i63, align 8, !tbaa !2094
  %.pre36.i65 = load ptr, ptr %.pre35.i64, align 8, !tbaa !514
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i66

_ZN8facebook5velox6StatusD2Ev.exit19.i66:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i66, %.preheader.i56
  %.029.i67 = phi i64 [ %i.ep, %.preheader.i56 ], [ %i.ew, %_ZN8facebook5velox6StatusD2Ev.exit19.i66 ] ; 3 uses
  %i.er = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i67, i1 true)
  %11 = or disjoint i64 %i.er, %10                ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.pre31.i60, i64 %11
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3, !noalias !2126
  %i.eu = getelementptr inbounds [4 x i8], ptr %.pre36.i65, i64 %11
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !3
  %i.ev = add nsw i64 %.029.i67, -1
  %i.ew = and i64 %i.ev, %.029.i67                ; 2 uses
  %.not10.i68 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i68, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i66, !llvm.loop !2111

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i66, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1488) align 8 %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1489, align 8           ; 6 uses
  %3 = alloca %class.anon.1490, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !764, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !52, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !765
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !768
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !544    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i31.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i31.not, label %.critedge.i.i.i, label %.lr.ph33

bb.f:                                             ; preds = %.lr.ph33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i32, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph33, label %.critedge.i.i.i, !llvm.loop !769

.lr.ph33:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i32, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !769

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph33, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph33 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2129, !nonnull !78, !align !199 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !2130
  %.pre25 = load ptr, ptr %.pre, align 8, !tbaa !1216, !noalias !2132 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre25, i64 16
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !943, !noalias !2132
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %.pre25, i64 58
  %.pre28 = load i8, ptr %.phi.trans.insert27, align 2, !tbaa !944, !range !77, !noalias !2132
  %i.am = trunc nuw i8 %.pre28 to i1
  %i.an = getelementptr inbounds nuw i8, ptr %.pre25, i64 59
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre25, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre25, i64 64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !2135, !nonnull !78, !align !199
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2136, !nonnull !78, !align !199
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit13
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit13 ] ; 4 uses
  %i.au = trunc nsw i64 %indvars.iv to i32
  br i1 %i.am, label %_ZN8facebook5velox6StatusD2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.an, align 1, !tbaa !945, !range !77, !noalias !2132, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !946, !noalias !2132
  br label %_ZN8facebook5velox6StatusD2Ev.exit13

bb.l:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !947, !noalias !2132
  %i.az = shl nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !2132
  br label %_ZN8facebook5velox6StatusD2Ev.exit13

_ZN8facebook5velox6StatusD2Ev.exit13:             ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.ax, %bb.k ], [ %i.au, %bb.i ]
  %i.bc = sext i32 %.0.i.i.i to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.pre26, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2132
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !2138

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !544   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !765
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !767
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !2139
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !2141
  store i8 1, ptr %3, align 8, !tbaa !2142
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !2144
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJSF_EEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull byval(%class.anon.1489) align 8 %2, ptr noundef nonnull byval(%class.anon.1490) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS4_10VectorExecEEESD_NS0_4DateENS0_15ConstantCheckerIJSF_EEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1489) align 8 %2, ptr noundef byval(%class.anon.1490) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 8 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2139, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2141
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2129 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre30.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2130
  %.pre31.i = load ptr, ptr %.pre30.i, align 8, !tbaa !1216, !noalias !2145 ; 5 uses
  %.phi.trans.insert32.i = getelementptr inbounds nuw i8, ptr %.pre31.i, i64 16
  %.pre33.i = load ptr, ptr %.phi.trans.insert32.i, align 8, !tbaa !943, !noalias !2145
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %.pre31.i, i64 58
  %.pre35.i = load i8, ptr %.phi.trans.insert34.i, align 2, !tbaa !944, !range !77, !noalias !2145
  %i.ac = trunc nuw i8 %.pre35.i to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre31.i, i64 59
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre31.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre31.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2135, !nonnull !78, !align !199
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2136, !nonnull !78, !align !199
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !514
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bb, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = or disjoint i32 %i.d, %i.am             ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  br i1 %i.ac, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load i8, ptr %i.ad, align 1, !tbaa !945, !range !77, !noalias !2145, !noundef !78
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !946, !noalias !2145
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

bb.g:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !947, !noalias !2145
  %i.at = shl nsw i64 %i.ao, 2
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3, !noalias !2145
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.g ], [ %i.ar, %bb.f ], [ %i.an, %bb.d ]
  %i.aw = sext i32 %.0.i.i.i.i to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.pre33.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3, !noalias !2145
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ao
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = add nsw i64 %.029.i, -1
  %i.bb = and i64 %i.ba, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bb, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2148

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = sdiv i32 %0, 64                         ; 2 uses
  %i.bd = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask.i.i35, -1
  %i.bg = sub nsw i32 64, %i.bd
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %i.bf, %i.bh
  %i.bj = load i8, ptr %2, align 8, !tbaa !2139, !range !77, !noundef !78
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2141
  %i.bm = sext i32 %i.bc to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !138
  %i.bp = xor i8 %i.bj, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = xor i64 %i.bo, %i.br
  %i.bt = and i64 %i.bs, %i.bi                    ; 4 uses
  %.not.i36 = icmp eq i64 %i.bt, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = shl nsw i32 %i.bc, 6                    ; 3 uses
  %.pre.i38 = load ptr, ptr %i.bu, align 8, !tbaa !2129 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre30.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !2130
  %.pre31.i41 = load ptr, ptr %.pre30.i40, align 8, !tbaa !1216, !noalias !2149 ; 5 uses
  %.phi.trans.insert32.i42 = getelementptr inbounds nuw i8, ptr %.pre31.i41, i64 16
  %.pre33.i43 = load ptr, ptr %.phi.trans.insert32.i42, align 8, !tbaa !943, !noalias !2149 ; 3 uses
  %.phi.trans.insert34.i44 = getelementptr inbounds nuw i8, ptr %.pre31.i41, i64 58
  %.pre35.i45 = load i8, ptr %.phi.trans.insert34.i44, align 2, !tbaa !944, !range !77, !noalias !2149
  %i.bw = trunc nuw i8 %.pre35.i45 to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre31.i41, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.pre31.i41, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2135, !nonnull !78, !align !199
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2136, !nonnull !78, !align !199
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !514 ; 3 uses
  br i1 %i.bw, label %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us.preheader, label %.preheader.i37.split

_ZN8facebook5velox6StatusD2Ev.exit19.i47.us.preheader: ; preds = %.preheader.i37
  %4 = sext i32 %i.bv to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us

_ZN8facebook5velox6StatusD2Ev.exit19.i47.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us
  %.029.i46.us = phi i64 [ %i.cj, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us ], [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us.preheader ] ; 3 uses
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i46.us, i1 true)
  %5 = or disjoint i64 %i.ce, %4                  ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %.pre33.i43, i64 %5
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3, !noalias !2149
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %5
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !3
  %i.ci = add i64 %.029.i46.us, -1
  %i.cj = and i64 %i.ci, %.029.i46.us             ; 2 uses
  %.not10.i49.us = icmp eq i64 %i.cj, 0
  br i1 %.not10.i49.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us, !llvm.loop !2148

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre31.i41, i64 59
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !945, !range !77, !noalias !2149, !noundef !78
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74.preheader, label %.preheader.i37.split.split

_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74.preheader: ; preds = %.preheader.i37.split
  %6 = sext i32 %i.bv to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.cd, i64 %6
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74

_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74.preheader, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74
  %.029.i46.us73 = phi i64 [ %i.cu, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74 ], [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74.preheader ] ; 3 uses
  %i.cn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i46.us73, i1 true)
  %i.co = load i32, ptr %i.by, align 8, !tbaa !946, !noalias !2149
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %.pre33.i43, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3, !noalias !2149
  %i.cs = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cn
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !3
  %i.ct = add i64 %.029.i46.us73, -1
  %i.cu = and i64 %i.ct, %.029.i46.us73           ; 2 uses
  %.not10.i49.us76 = icmp eq i64 %i.cu, 0
  br i1 %.not10.i49.us76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74, !llvm.loop !2148

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.cv = load ptr, ptr %i.bx, align 8, !tbaa !947, !noalias !2149
  %7 = sext i32 %i.bv to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i47

_ZN8facebook5velox6StatusD2Ev.exit19.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i47, %.preheader.i37.split.split
  %.029.i46 = phi i64 [ %i.bt, %.preheader.i37.split.split ], [ %i.df, %_ZN8facebook5velox6StatusD2Ev.exit19.i47 ] ; 3 uses
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i46, i1 true)
  %8 = or disjoint i64 %i.cw, %7                  ; 2 uses
  %i.cx = shl nsw i64 %8, 2
  %i.cy = getelementptr inbounds i8, ptr %i.cv, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3, !noalias !2149
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %.pre33.i43, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !2149
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %8
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = add i64 %.029.i46, -1
  %i.df = and i64 %i.de, %.029.i46                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.df, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit19.i47, !llvm.loop !2148

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i47, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us74, %_ZN8facebook5velox6StatusD2Ev.exit19.i47.us, %bb.i, %bb.h
  %i.dg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3380 = icmp sgt i32 %i.dg, %i.d
  br i1 %.not3380, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50
  %i.dh = load i8, ptr %3, align 8, !tbaa !2142, !range !77, !noundef !78
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2144
  %i.dk = xor i8 %i.dh, 1
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i51 = load ptr, ptr %i.dn, align 8        ; 2 uses
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.dp = phi i32 [ %i.dg, %.lr.ph ], [ %i.hu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.081 = phi i32 [ %i.c, %.lr.ph ], [ %i.dp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.dq = sdiv i32 %.081, 64                      ; 3 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !138
  %i.du = xor i64 %i.dt, %i.dm                    ; 2 uses
  switch i64 %i.du, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.dv = shl nsw i32 %i.dq, 6
  %.pre88.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !2130
  %.pre89.i = load ptr, ptr %.pre88.i, align 8, !tbaa !1216, !noalias !2152 ; 5 uses
  %.phi.trans.insert90.i = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 16
  %.pre91.i = load ptr, ptr %.phi.trans.insert90.i, align 8, !tbaa !943, !noalias !2152
  %.phi.trans.insert92.i = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 58
  %.pre93.i = load i8, ptr %.phi.trans.insert92.i, align 2, !tbaa !944, !range !77, !noalias !2152
  %i.dw = trunc nuw i8 %.pre93.i to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 59
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 64
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !2135, !nonnull !78, !align !199
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2136, !nonnull !78, !align !199
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !514
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ee = shl nsw i32 %i.dq, 6                    ; 4 uses
  %i.ef = add i32 %i.ee, 64
  %i.eg = sext i32 %i.ef to i64                   ; 5 uses
  %.0.off = add i32 %.081, 127
  %.not78.i = icmp ult i32 %.0.off, 64
  br i1 %.not78.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %bb.k
  %i.eh = sext i32 %i.ee to i64                   ; 13 uses
  %.pre80.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !2130
  %.pre81.i = load ptr, ptr %.pre80.i, align 8, !tbaa !1216, !noalias !2155 ; 5 uses
  %.phi.trans.insert82.i = getelementptr inbounds nuw i8, ptr %.pre81.i, i64 16
  %.pre83.i = load ptr, ptr %.phi.trans.insert82.i, align 8, !tbaa !943, !noalias !2155 ; 6 uses
  %.pre83.i121 = ptrtoaddr ptr %.pre83.i to i64
  %.phi.trans.insert84.i = getelementptr inbounds nuw i8, ptr %.pre81.i, i64 58
  %.pre85.i = load i8, ptr %.phi.trans.insert84.i, align 2, !tbaa !944, !range !77, !noalias !2155
  %i.ei = trunc nuw i8 %.pre85.i to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre81.i, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre81.i, i64 64
  %i.el = load ptr, ptr %i.do, align 8, !tbaa !2135, !nonnull !78, !align !199
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2136, !nonnull !78, !align !199
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !514 ; 6 uses
  %i.ep = ptrtoaddr ptr %i.eo to i64
  br i1 %i.ei, label %iter.check, label %.lr.ph77.i.split

iter.check:                                       ; preds = %.lr.ph77.i
  %i.eq = or disjoint i64 %i.eh, 1
  %umax122 = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.eg) ; 2 uses
  %i.er = sub i64 %umax122, %i.eh                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.er, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.es = or disjoint i64 %i.eh, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.es, i64 %i.eg)
  %i.et = xor i64 %i.eh, -1
  %i.eu = add i64 %umax, %i.et                    ; 2 uses
  %i.ev = sext i32 %i.ee to i34                   ; 2 uses
  %i.ew = shl nsw i34 %i.ev, 2
  %i.ex = trunc i64 %i.eu to i34
  %i.ey = add i34 %i.ev, %i.ex
  %i.ez = shl i34 %i.ey, 2
  %i.fa = icmp slt i34 %i.ez, %i.ew
  %i.fb = icmp ugt i64 %i.eu, 4294967295
  %i.fc = or i1 %i.fa, %i.fb
  br i1 %i.fc, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fd = shl nsw i64 %i.eh, 2
  %i.fe = add i64 %i.fd, %i.ep
  %i.ff = sext i32 %i.ee to i34
  %i.fg = shl nsw i34 %i.ff, 2
  %i.fh = sext i34 %i.fg to i64
  %i.fi = add i64 %.pre83.i121, %i.fh
  %i.fj = sub i64 %i.fe, %i.fi
  %diff.check = icmp ult i64 %i.fj, 128
  br i1 %diff.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check123 = icmp ult i64 %i.er, 32
  %n.mod.vf127 = and i64 %umax122, 1              ; 3 uses
  %n.vec128 = sub i64 %i.er, %n.mod.vf127         ; 3 uses
  %i.fk = add i64 %n.vec128, %i.eh                ; 2 uses
  br i1 %min.iters.check123, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fl = add i64 %index, %i.eh                   ; 2 uses
  %i.fm = shl i64 %i.fl, 32
  %i.fn = ashr exact i64 %i.fm, 30
  %i.fo = getelementptr inbounds i8, ptr %.pre83.i, i64 %i.fn ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  %wide.load = load <8 x i32>, ptr %i.fo, align 4, !tbaa !3, !noalias !2155
  %wide.load124 = load <8 x i32>, ptr %i.fp, align 4, !tbaa !3, !noalias !2155
  %wide.load125 = load <8 x i32>, ptr %i.fq, align 4, !tbaa !3, !noalias !2155
  %wide.load126 = load <8 x i32>, ptr %i.fr, align 4, !tbaa !3, !noalias !2155
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fl ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  store <8 x i32> %wide.load, ptr %i.fs, align 4, !tbaa !3
  store <8 x i32> %wide.load124, ptr %i.ft, align 4, !tbaa !3
  store <8 x i32> %wide.load125, ptr %i.fu, align 4, !tbaa !3
  store <8 x i32> %wide.load126, ptr %i.fv, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec128
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !2158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf127, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index129 = phi i64 [ %index.next131, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fx = add i64 %index129, %i.eh                ; 2 uses
  %i.fy = shl i64 %i.fx, 32
  %i.fz = ashr exact i64 %i.fy, 30
  %i.ga = getelementptr inbounds i8, ptr %.pre83.i, i64 %i.fz
  %wide.load130 = load <8 x i32>, ptr %i.ga, align 4, !tbaa !3, !noalias !2155
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fx
  store <8 x i32> %wide.load130, ptr %i.gb, align 4, !tbaa !3
  %index.next131 = add nuw i64 %index129, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %n.mod.vf127, 0
  br i1 %cmp.n132, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader: ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.us.ph = phi i64 [ %i.fk, %middle.block ], [ %i.eh, %vector.scevcheck ], [ %i.eh, %vector.memcheck ], [ %i.eh, %iter.check ], [ %i.fk, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us

_ZN8facebook5velox6StatusD2Ev.exit32.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us
  %.076.i.us = phi i64 [ %i.gh, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us ], [ %.076.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.076.i.us, 32
  %i.gd = ashr exact i64 %sext, 30
  %i.ge = getelementptr inbounds i8, ptr %.pre83.i, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3, !noalias !2155
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.076.i.us
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %i.gh = add nuw i64 %.076.i.us, 1               ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.eg
  br i1 %i.gi, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2160

.lr.ph77.i.split:                                 ; preds = %.lr.ph77.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.pre81.i, i64 59
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !945, !range !77, !noalias !2155, !noundef !78
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78, label %.lr.ph77.i.split.split

_ZN8facebook5velox6StatusD2Ev.exit32.i.us78:      ; preds = %.lr.ph77.i.split, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78
  %.076.i.us77 = phi i64 [ %i.gr, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78 ], [ %i.eh, %.lr.ph77.i.split ] ; 2 uses
  %i.gm = load i32, ptr %i.ek, align 8, !tbaa !946, !noalias !2155
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %.pre83.i, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3, !noalias !2155
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.076.i.us77
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !3
  %i.gr = add nuw i64 %.076.i.us77, 1             ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.eg
  br i1 %i.gs, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2161

.lr.ph77.i.split.split:                           ; preds = %.lr.ph77.i.split
  %i.gt = load ptr, ptr %i.ej, align 8, !tbaa !947, !noalias !2155
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %.lr.ph77.i.split.split
  %.076.i = phi i64 [ %i.eh, %.lr.ph77.i.split.split ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i.i = shl i64 %.076.i, 32
  %i.gu = ashr exact i64 %sext.i.i, 30
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !2155
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.pre83.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !2155
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.076.i
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !3
  %i.hb = add nuw i64 %.076.i, 1                  ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.eg
  br i1 %i.hc, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2161

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54.i, %.lr.ph.i
  %.01575.i = phi i64 [ %i.du, %.lr.ph.i ], [ %i.ht, %_ZN8facebook5velox6StatusD2Ev.exit54.i ] ; 3 uses
  %i.hd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575.i, i1 true)
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = or disjoint i32 %i.dv, %i.he            ; 2 uses
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  br i1 %i.dw, label %_ZN8facebook5velox6StatusD2Ev.exit54.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hh = load i8, ptr %i.dx, align 1, !tbaa !945, !range !77, !noalias !2152, !noundef !78
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hj = load i32, ptr %i.dz, align 8, !tbaa !946, !noalias !2152
  br label %_ZN8facebook5velox6StatusD2Ev.exit54.i

bb.o:                                             ; preds = %bb.m
  %i.hk = load ptr, ptr %i.dy, align 8, !tbaa !947, !noalias !2152
  %i.hl = shl nsw i64 %i.hg, 2
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3, !noalias !2152
  br label %_ZN8facebook5velox6StatusD2Ev.exit54.i

_ZN8facebook5velox6StatusD2Ev.exit54.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i41.i = phi i32 [ %i.hn, %bb.o ], [ %i.hj, %bb.n ], [ %i.hf, %bb.l ]
  %i.ho = sext i32 %.0.i.i.i41.i to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %.pre91.i, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3, !noalias !2152
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.hg
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !3
  %i.hs = add i64 %.01575.i, -1
  %i.ht = and i64 %i.hs, %.01575.i                ; 2 uses
  %.not.i54 = icmp eq i64 %i.ht, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !2162

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us78, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us, %_ZN8facebook5velox6StatusD2Ev.exit54.i, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.hu = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.hu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !2163

bb.p:                                             ; preds = %._crit_edge
  %i.hv = ashr i32 %1, 6
  %i.hw = and i32 %1, 63
  %i.hx = zext nneg i32 %i.hw to i64
  %notmask.i55 = shl nsw i64 -1, %i.hx
  %i.hy = xor i64 %notmask.i55, -1
  %i.hz = load i8, ptr %2, align 8, !tbaa !2139, !range !77, !noundef !78
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !2141
  %i.ic = sext i32 %i.hv to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !138
  %i.if = xor i8 %i.hz, 1
  %i.ig = zext nneg i8 %i.if to i64
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = xor i64 %i.ie, %i.ih
  %i.ij = and i64 %i.ii, %i.hy                    ; 4 uses
  %.not.i56 = icmp eq i64 %i.ij, 0
  br i1 %.not.i56, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i57

.preheader.i57:                                   ; preds = %bb.p
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i58 = load ptr, ptr %i.ik, align 8, !tbaa !2129 ; 2 uses
  %.phi.trans.insert.i59 = getelementptr inbounds nuw i8, ptr %.pre.i58, i64 8
  %.pre30.i60 = load ptr, ptr %.phi.trans.insert.i59, align 8, !tbaa !2130
  %.pre31.i61 = load ptr, ptr %.pre30.i60, align 8, !tbaa !1216, !noalias !2164 ; 5 uses
  %.phi.trans.insert32.i62 = getelementptr inbounds nuw i8, ptr %.pre31.i61, i64 16
  %.pre33.i63 = load ptr, ptr %.phi.trans.insert32.i62, align 8, !tbaa !943, !noalias !2164 ; 3 uses
  %.phi.trans.insert34.i64 = getelementptr inbounds nuw i8, ptr %.pre31.i61, i64 58
  %.pre35.i65 = load i8, ptr %.phi.trans.insert34.i64, align 2, !tbaa !944, !range !77, !noalias !2164
  %i.il = trunc nuw i8 %.pre35.i65 to i1
  %i.im = getelementptr inbounds nuw i8, ptr %.pre31.i61, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.pre31.i61, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %.pre.i58, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !2135, !nonnull !78, !align !199
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2136, !nonnull !78, !align !199
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !514 ; 3 uses
  br i1 %i.il, label %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us.preheader, label %.preheader.i57.split

_ZN8facebook5velox6StatusD2Ev.exit19.i67.us.preheader: ; preds = %.preheader.i57
  %9 = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us

_ZN8facebook5velox6StatusD2Ev.exit19.i67.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us
  %.029.i66.us = phi i64 [ %i.iy, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us ], [ %i.ij, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us.preheader ] ; 3 uses
  %i.it = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i66.us, i1 true)
  %10 = or disjoint i64 %i.it, %9                 ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %.pre33.i63, i64 %10
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3, !noalias !2164
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.is, i64 %10
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !3
  %i.ix = add nsw i64 %.029.i66.us, -1
  %i.iy = and i64 %i.ix, %.029.i66.us             ; 2 uses
  %.not10.i69.us = icmp eq i64 %i.iy, 0
  br i1 %.not10.i69.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us, !llvm.loop !2148

.preheader.i57.split:                             ; preds = %.preheader.i57
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre31.i61, i64 59
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !945, !range !77, !noalias !2164, !noundef !78
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83.preheader, label %.preheader.i57.split.split

_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83.preheader: ; preds = %.preheader.i57.split
  %11 = sext i32 %i.d to i64
  %invariant.gep113 = getelementptr [4 x i8], ptr %i.is, i64 %11
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83

_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83.preheader, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83
  %.029.i66.us82 = phi i64 [ %i.jj, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83 ], [ %i.ij, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83.preheader ] ; 3 uses
  %i.jc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i66.us82, i1 true)
  %i.jd = load i32, ptr %i.in, align 8, !tbaa !946, !noalias !2164
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %.pre33.i63, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3, !noalias !2164
  %i.jh = getelementptr [4 x i8], ptr %invariant.gep113, i64 %i.jc
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !3
  %i.ji = add nsw i64 %.029.i66.us82, -1
  %i.jj = and i64 %i.ji, %.029.i66.us82           ; 2 uses
  %.not10.i69.us85 = icmp eq i64 %i.jj, 0
  br i1 %.not10.i69.us85, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83, !llvm.loop !2148

.preheader.i57.split.split:                       ; preds = %.preheader.i57.split
  %i.jk = load ptr, ptr %i.im, align 8, !tbaa !947, !noalias !2164
  %12 = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i67

_ZN8facebook5velox6StatusD2Ev.exit19.i67:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i67, %.preheader.i57.split.split
  %.029.i66 = phi i64 [ %i.ij, %.preheader.i57.split.split ], [ %i.ju, %_ZN8facebook5velox6StatusD2Ev.exit19.i67 ] ; 3 uses
  %i.jl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i66, i1 true)
  %13 = or disjoint i64 %i.jl, %12                ; 2 uses
  %i.jm = shl nsw i64 %13, 2
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3, !noalias !2164
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %.pre33.i63, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3, !noalias !2164
  %i.js = getelementptr inbounds [4 x i8], ptr %i.is, i64 %13
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !3
  %i.jt = add nsw i64 %.029.i66, -1
  %i.ju = and i64 %i.jt, %.029.i66                ; 2 uses
  %.not10.i69 = icmp eq i64 %i.ju, 0
  br i1 %.not10.i69, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i67, !llvm.loop !2148

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12DaysFunctionINS3_10VectorExecEEESC_NS0_4DateENS0_15ConstantCheckerIJSE_EEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i67, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us83, %_ZN8facebook5velox6StatusD2Ev.exit19.i67.us, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.p, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSD_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISN_EERKSH_INS1_17SignatureVariableESaISS_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !52
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EE.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance) #27
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSB_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1500") align 8 @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSB_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance) #27
  br label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EE.exit

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit38, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.o, %bb.h ], [ %i.au, %_ZNSt14_Function_baseD2Ev.exit38 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance) #27
  br label %common.resume

_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EE.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.i

bb.f:                                             ; preds = %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EE.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.36)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #27
  br label %common.resume

bb.i:                                             ; preds = %.preheader, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36
  %.01747 = phi i1 [ true, %.preheader ], [ %i.x, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ]
  %.sroa.039.046 = phi ptr [ %i.g, %.preheader ], [ %i.as, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, i64 8), align 8, !tbaa !56 ; 2 uses
  %i.q = load <2 x ptr>, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 8, !tbaa !59
  store <2 x ptr> %i.q, ptr %4, align 16, !tbaa !59
  %.not.i.i.i27 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSF_EEEvEERKS_IT_E.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i28 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSF_EEEvEERKS_IT_E.exit29

bb.l:                                             ; preds = %bb.j
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSF_EEEvEERKS_IT_E.exit29

_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSF_EEEvEERKS_IT_E.exit29: ; preds = %bb.i, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESH_iNS2_15ConstantCheckerIJNS2_9TimestampEEEEJSK_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.m, align 8, !tbaa !60
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESH_iNS2_15ConstantCheckerIJNS2_9TimestampEEEEJSK_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EERKSO_INS3_17SignatureVariableESaISZ_EEbEUlvE_E10_M_managerERSt9_Any_dataRKS16_St18_Manager_operation, ptr %i.l, align 8, !tbaa !63
  %i.w = invoke noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry24registerFunctionInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_4core23ISimpleFunctionMetadataEERKSt8functionIFSt10unique_ptrINS1_28SimpleFunctionAdapterFactoryESt14default_deleteISK_EEvEEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.039.046, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %3)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSF_EEEvEERKS_IT_E.exit29
  %i.x = and i1 %.01747, %i.w                     ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !63   ; 2 uses
  %.not.i30 = icmp eq ptr %i.y, null
  br i1 %.not.i30, label %_ZNSt14_Function_baseD2Ev.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit31 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit31:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !56  ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ad, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !66
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27, !inline_history !69
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27, !inline_history !69
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

bb.r:                                             ; preds = %bb.p
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i33 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

bb.t:                                             ; preds = %bb.r
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i35 = phi i32 [ %i.ag, %bb.s ], [ %i.aq, %bb.t ]
  %i.ar = icmp eq i32 %.0.i.i.i.i35, 1
  br i1 %i.ar, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, !prof !50

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36: ; preds = %_ZNSt14_Function_baseD2Ev.exit31, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.039.046, i64 32 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %bb.y, label %bb.i

bb.v:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions7iceberg13HoursFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJNS1_9TimestampEEEEJSF_EEEvEERKS_IT_E.exit29
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !63  ; 2 uses
  %.not.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i37, label %_ZNSt14_Function_baseD2Ev.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit38 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #31
  unreachable

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSD_EEEE7iterateIJNS1_20ConstantVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_:bb.a
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = sext i32 %i.ag to i64                   ; 5 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !2239
  %.sroa.0.0.copyload.i10.pre.i = load i64, ptr %.pre.i, align 8, !tbaa !138, !noalias !2242 ; 3 uses
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i10.pre.i, -1
  %i.al = udiv i64 %.nonneg.i, 3600
  %i.am = xor i64 %i.al, -1
  %i.an = udiv i64 %.sroa.0.0.copyload.i10.pre.i, 3600
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !2245, !nonnull !78, !align !199
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2246, !nonnull !78, !align !199
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !514 ; 3 uses
  %i.as = icmp slt i64 %.sroa.0.0.copyload.i10.pre.i, 0
  %..i = select i1 %i.as, i64 %i.am, i64 %i.an
  %i.at = trunc i64 %..i to i32                   ; 3 uses
  %i.au = xor i32 %i.ag, -1
  %i.av = add i32 %i.ae, %i.au                    ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.av, 7
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.av, 31
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, 8589934560              ; 4 uses
  %i.ay = add nsw i64 %n.vec, %i.ak
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ar, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.az, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !2248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader, label %vec.epilog.ph, !prof !605

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.ax, 8589934584            ; 3 uses
  %i.bd = add nsw i64 %n.vec14, %i.ak
  %broadcast.splatinsert15 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat16 = shufflevector <8 x i32> %broadcast.splatinsert15, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep21 = getelementptr [4 x i8], ptr %i.ar, i64 %i.ak
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %gep22 = getelementptr [4 x i8], ptr %invariant.gep21, i64 %index17
  store <8 x i32> %broadcast.splat16, ptr %gep22, align 4, !tbaa !3
  %index.next18 = add nuw i64 %index17, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.ax, %n.vec14
  br i1 %cmp.n19, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ak, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit20.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i ], [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit20.i.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i32 %i.at, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ae, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !2250

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !544   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !765
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !767
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.bl, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bm, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !2251
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !2254
  store i8 1, ptr %4, align 8, !tbaa !2255
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !2257
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS4_10VectorExecEEESD_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS4_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull byval(%class.anon.1563) align 8 %3, ptr noundef nonnull byval(%class.anon.1564) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS4_10VectorExecEEESD_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS4_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1563) align 8 %2, ptr noundef byval(%class.anon.1564) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2251, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2254
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2258 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre38.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2239
  %.sroa.0.0.copyload.i16.pre.i = load i64, ptr %.pre38.i, align 8, !tbaa !138, !noalias !2259 ; 3 uses
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i16.pre.i, -1
  %i.ac = udiv i64 %.nonneg.i, 3600
  %i.ad = xor i64 %i.ac, -1
  %i.ae = udiv i64 %.sroa.0.0.copyload.i16.pre.i, 3600
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2245, !nonnull !78, !align !199
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2246, !nonnull !78, !align !199
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !514
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.aj, i64 %4
  %i.ak = icmp slt i64 %.sroa.0.0.copyload.i16.pre.i, 0
  %..i = select i1 %i.ak, i64 %i.ad, i64 %i.ae
  %i.al = trunc i64 %..i to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i

_ZN8facebook5velox6StatusD2Ev.exit26.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i, %.preheader.i
  %.037.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %_ZN8facebook5velox6StatusD2Ev.exit26.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.037.i, i1 true)
  %i.an = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.am
  store i32 %i.al, ptr %i.an, align 4, !tbaa !3
  %i.ao = add nsw i64 %.037.i, -1
  %i.ap = and i64 %i.ao, %.037.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit26.i, !llvm.loop !2262

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !2251, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2254
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !138
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %5 = sext i32 %i.bj to i64
  %.pre.i38 = load ptr, ptr %i.bi, align 8, !tbaa !2258 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre38.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !2239
  %.sroa.0.0.copyload.i16.pre.i41 = load i64, ptr %.pre38.i40, align 8, !tbaa !138, !noalias !2263 ; 3 uses
  %.nonneg.i42 = xor i64 %.sroa.0.0.copyload.i16.pre.i41, -1
  %i.bk = udiv i64 %.nonneg.i42, 3600
  %i.bl = xor i64 %i.bk, -1
  %i.bm = udiv i64 %.sroa.0.0.copyload.i16.pre.i41, 3600
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2245, !nonnull !78, !align !199
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2246, !nonnull !78, !align !199
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !514
  %invariant.gep.i43 = getelementptr [4 x i8], ptr %i.br, i64 %5
  %i.bs = icmp slt i64 %.sroa.0.0.copyload.i16.pre.i41, 0
  %..i45 = select i1 %i.bs, i64 %i.bl, i64 %i.bm
  %i.bt = trunc i64 %..i45 to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i43

_ZN8facebook5velox6StatusD2Ev.exit26.i43:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i43, %.preheader.i37
  %.037.i44 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %_ZN8facebook5velox6StatusD2Ev.exit26.i43 ] ; 3 uses
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.037.i44, i1 true)
  %i.bv = getelementptr [4 x i8], ptr %invariant.gep.i43, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !3
  %i.bw = add i64 %.037.i44, -1
  %i.bx = and i64 %i.bw, %.037.i44                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47, label %_ZN8facebook5velox6StatusD2Ev.exit26.i43, !llvm.loop !2262

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i43, %bb.e, %bb.d
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47
  %i.bz = load i8, ptr %3, align 8, !tbaa !2255, !range !77, !noundef !78
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2257
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i48 = load ptr, ptr %i.cf, align 8        ; 2 uses
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.ch = phi i32 [ %i.by, %.lr.ph ], [ %i.dz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.069 = phi i32 [ %i.c, %.lr.ph ], [ %i.ch, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.ci = sdiv i32 %.069, 64                      ; 3 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !138
  %i.cm = xor i64 %i.cl, %i.ce                    ; 2 uses
  switch i64 %i.cm, label %.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.f
  %i.cn = shl nsw i32 %i.ci, 6
  %6 = sext i32 %i.cn to i64
  %.pre98.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !2239
  %.sroa.0.0.copyload.i47.pre.i = load i64, ptr %.pre98.i, align 8, !tbaa !138, !noalias !2266 ; 3 uses
  %.nonneg86.i = xor i64 %.sroa.0.0.copyload.i47.pre.i, -1
  %i.co = udiv i64 %.nonneg86.i, 3600
  %i.cp = xor i64 %i.co, -1
  %i.cq = udiv i64 %.sroa.0.0.copyload.i47.pre.i, 3600
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !2245, !nonnull !78, !align !199
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2246, !nonnull !78, !align !199
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !514
  %invariant.gep.i54 = getelementptr [4 x i8], ptr %i.cu, i64 %6
  %i.cv = icmp slt i64 %.sroa.0.0.copyload.i47.pre.i, 0
  %.102.i = select i1 %i.cv, i64 %i.cp, i64 %i.cq
  %i.cw = trunc i64 %.102.i to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit63.i

bb.g:                                             ; preds = %bb.f
  %i.cx = shl nsw i32 %i.ci, 6                    ; 2 uses
  %i.cy = add i32 %i.cx, 64
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %.0.off = add i32 %.069, 127
  %.not93.i = icmp ult i32 %.0.off, 64
  br i1 %.not93.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.da = sext i32 %i.cx to i64                   ; 6 uses
  %.pre95.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !2239
  %.sroa.0.0.copyload.i29.pre.i = load i64, ptr %.pre95.i, align 8, !tbaa !138, !noalias !2269 ; 3 uses
  %.nonneg.i50 = xor i64 %.sroa.0.0.copyload.i29.pre.i, -1
  %i.db = udiv i64 %.nonneg.i50, 3600
  %i.dc = xor i64 %i.db, -1
  %i.dd = udiv i64 %.sroa.0.0.copyload.i29.pre.i, 3600
  %i.de = load ptr, ptr %i.cg, align 8, !tbaa !2245, !nonnull !78, !align !199
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2246, !nonnull !78, !align !199
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !514 ; 3 uses
  %i.di = icmp slt i64 %.sroa.0.0.copyload.i29.pre.i, 0
  %..i51 = select i1 %i.di, i64 %i.dc, i64 %i.dd
  %i.dj = trunc i64 %..i51 to i32                 ; 2 uses
  %i.dk = or disjoint i64 %i.da, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.cz) ; 2 uses
  %i.dl = sub i64 %umax, %i.da                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dl, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i64 %i.dl, 32
  %n.mod.vf86 = and i64 %umax, 1                  ; 3 uses
  %n.vec87 = sub nuw i64 %i.dl, %n.mod.vf86       ; 3 uses
  %i.dm = add i64 %n.vec87, %i.da                 ; 2 uses
  %broadcast.splatinsert88 = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat89 = shufflevector <8 x i32> %broadcast.splatinsert88, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check85, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr [4 x i8], ptr %i.dh, i64 %i.da
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep96 = getelementptr [4 x i8], ptr %i.dh, i64 %i.da
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %broadcast.splat89, ptr %gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat89, ptr %i.dn, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat89, ptr %i.do, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat89, ptr %i.dp, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec87
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf86, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index90 = phi i64 [ %index.next91, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep97 = getelementptr [4 x i8], ptr %invariant.gep96, i64 %index90
  store <8 x i32> %broadcast.splat89, ptr %gep97, align 4, !tbaa !3
  %index.next91 = add nuw i64 %index90, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2273

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %n.mod.vf86, 0
  br i1 %cmp.n92, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.091.i.ph = phi i64 [ %i.dm, %middle.block ], [ %i.da, %iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.091.i = phi i64 [ %i.dt, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.091.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.091.i
  store i32 %i.dj, ptr %i.ds, align 4, !tbaa !3
  %i.dt = add nuw i64 %.091.i, 1                  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.cz
  br i1 %i.du, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2274

_ZN8facebook5velox6StatusD2Ev.exit63.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit63.i, %.lr.ph.i
  %.01590.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %i.dy, %_ZN8facebook5velox6StatusD2Ev.exit63.i ] ; 3 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01590.i, i1 true)
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep.i54, i64 %i.dv
  store i32 %i.cw, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add i64 %.01590.i, -1
  %i.dy = and i64 %i.dx, %.01590.i                ; 2 uses
  %.not.i52 = icmp eq i64 %i.dy, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit63.i, !llvm.loop !2275

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit63.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.dz = add nsw i32 %i.ch, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !2276

bb.h:                                             ; preds = %._crit_edge
  %i.ea = ashr i32 %1, 6
  %i.eb = and i32 %1, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i53 = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i53, -1
  %i.ee = load i8, ptr %2, align 8, !tbaa !2251, !range !77, !noundef !78
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2254
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !138
  %i.ek = xor i8 %i.ee, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ej, %i.em
  %i.eo = and i64 %i.en, %i.ed                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.eo, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = sext i32 %i.d to i64
  %.pre.i56 = load ptr, ptr %i.ep, align 8, !tbaa !2258 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre38.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !2239
  %.sroa.0.0.copyload.i16.pre.i59 = load i64, ptr %.pre38.i58, align 8, !tbaa !138, !noalias !2277 ; 3 uses
  %.nonneg.i60 = xor i64 %.sroa.0.0.copyload.i16.pre.i59, -1
  %i.eq = udiv i64 %.nonneg.i60, 3600
  %i.er = xor i64 %i.eq, -1
  %i.es = udiv i64 %.sroa.0.0.copyload.i16.pre.i59, 3600
  %i.et = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !2245, !nonnull !78, !align !199
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !2246, !nonnull !78, !align !199
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !514
  %invariant.gep.i65 = getelementptr [4 x i8], ptr %i.ex, i64 %7
  %i.ey = icmp slt i64 %.sroa.0.0.copyload.i16.pre.i59, 0
  %..i63 = select i1 %i.ey, i64 %i.er, i64 %i.es
  %i.ez = trunc i64 %..i63 to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i61

_ZN8facebook5velox6StatusD2Ev.exit26.i61:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i61, %.preheader.i55
  %.037.i62 = phi i64 [ %i.eo, %.preheader.i55 ], [ %i.fd, %_ZN8facebook5velox6StatusD2Ev.exit26.i61 ] ; 3 uses
  %i.fa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.037.i62, i1 true)
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep.i65, i64 %i.fa
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !3
  %i.fc = add nsw i64 %.037.i62, -1
  %i.fd = and i64 %i.fc, %.037.i62                ; 2 uses
  %.not10.i64 = icmp eq i64 %i.fd, 0
  br i1 %.not10.i64, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit26.i61, !llvm.loop !2262

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i61, %_ZN8facebook5velox6StatusD2Ev.exit26.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS1_10VectorExecEEESA_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSD_EEEE7iterateIJNS1_16FlatVectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1574) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1589, align 8           ; 8 uses
  %4 = alloca %class.anon.1590, align 8           ; 8 uses
  %5 = alloca %class.anon.1586, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !764, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !52, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !765
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !768
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !544    ; 2 uses
  %.not.i.i5.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i.i10.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i.i10.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i11, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.o
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !769

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i11 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i11, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !769

.critedge.i.i.i.i:                                ; preds = %bb.f, %bb.e
  %.not38.i.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = sext i32 %i.ag to i64
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !2280
  %.pre26.i = load ptr, ptr %.pre.i, align 8, !tbaa !527, !noalias !2282
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !2285, !nonnull !78, !align !199
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2286, !nonnull !78, !align !199
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN8facebook5velox6StatusD2Ev.exit13.i ] ; 3 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %.pre26.i, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !tbaa !138, !noalias !2282 ; 3 uses
  %i.aq = icmp sgt i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = udiv i64 %.sroa.0.0.copyload.i.i, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit13.i

bb.k:                                             ; preds = %bb.i
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i.i, -1
  %i.as = udiv i64 %.nonneg.i, 3600
  %i.at = xor i64 %i.as, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit13.i

_ZN8facebook5velox6StatusD2Ev.exit13.i:           ; preds = %bb.k, %bb.j
  %i.au = phi i64 [ %i.ar, %bb.j ], [ %i.at, %bb.k ]
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ae, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %bb.i, !llvm.loop !2288

bb.l:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ax = load ptr, ptr %1, align 8, !tbaa !544   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !765
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !767
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.bc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.bd, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !2289
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !2292
  store i8 1, ptr %4, align 8, !tbaa !2293
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !2295
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS4_10VectorExecEEESD_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS4_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull byval(%class.anon.1589) align 8 %3, ptr noundef nonnull byval(%class.anon.1590) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i, %bb.h, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS4_10VectorExecEEESD_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS4_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1589) align 8 %2, ptr noundef byval(%class.anon.1590) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2289, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2292
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2296 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre31.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2280
  %.pre32.i = load ptr, ptr %.pre31.i, align 8, !tbaa !527, !noalias !2297
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2285, !nonnull !78, !align !199
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2286, !nonnull !78, !align !199
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !514
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ar, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %5 = or disjoint i64 %i.ah, %4                  ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %.pre32.i, i64 %5
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !tbaa !138, !noalias !2297 ; 3 uses
  %i.aj = icmp sgt i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = udiv i64 %.sroa.0.0.copyload.i.i, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

bb.f:                                             ; preds = %bb.d
  %.nonneg.i = xor i64 %.sroa.0.0.copyload.i.i, -1
  %i.al = udiv i64 %.nonneg.i, 3600
  %i.am = xor i64 %i.al, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %i.ak, %bb.e ], [ %i.am, %bb.f ]
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %5
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add nsw i64 %.030.i, -1
  %i.ar = and i64 %i.aq, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ar, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2300

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = sdiv i32 %0, 64                         ; 2 uses
  %i.at = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i35, -1
  %i.aw = sub nsw i32 64, %i.at
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.av, %i.ax
  %i.az = load i8, ptr %2, align 8, !tbaa !2289, !range !77, !noundef !78
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2292
  %i.bc = sext i32 %i.as to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !138
  %i.bf = xor i8 %i.az, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = xor i64 %i.be, %i.bh
  %i.bj = and i64 %i.bi, %i.ay                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bj, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = shl nsw i32 %i.as, 6
  %6 = sext i32 %i.bl to i64
  %.pre.i38 = load ptr, ptr %i.bk, align 8, !tbaa !2296 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre31.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !2280
  %.pre32.i41 = load ptr, ptr %.pre31.i40, align 8, !tbaa !527, !noalias !2301
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2285, !nonnull !78, !align !199
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2286, !nonnull !78, !align !199
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i45, %.preheader.i37
  %.030.i42 = phi i64 [ %i.bj, %.preheader.i37 ], [ %i.cb, %_ZN8facebook5velox6StatusD2Ev.exit19.i45 ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i42, i1 true)
  %7 = or disjoint i64 %i.br, %6                  ; 2 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %.pre32.i41, i64 %7
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.bs, align 8, !tbaa !138, !noalias !2301 ; 3 uses
  %i.bt = icmp sgt i64 %.sroa.0.0.copyload.i.i43, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = udiv i64 %.sroa.0.0.copyload.i.i43, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i45

bb.k:                                             ; preds = %bb.i
  %.nonneg.i44 = xor i64 %.sroa.0.0.copyload.i.i43, -1
  %i.bv = udiv i64 %.nonneg.i44, 3600
  %i.bw = xor i64 %i.bv, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i45

_ZN8facebook5velox6StatusD2Ev.exit19.i45:         ; preds = %bb.k, %bb.j
  %i.bx = phi i64 [ %i.bu, %bb.j ], [ %i.bw, %bb.k ]
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %7
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = add i64 %.030.i42, -1
  %i.cb = and i64 %i.ca, %.030.i42                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.cb, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47, label %bb.i, !llvm.loop !2300

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i45, %bb.h, %bb.g
  %i.cc = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.cc, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47
  %i.cd = load i8, ptr %3, align 8, !tbaa !2293, !range !77, !noundef !78
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2295
  %i.cg = xor i8 %i.cd, 1
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i48 = load ptr, ptr %i.cj, align 8        ; 2 uses
  %.phi.trans.insert.i49 = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit47
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.t

bb.l:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.cl = phi i32 [ %i.cc, %.lr.ph ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.069 = phi i32 [ %i.c, %.lr.ph ], [ %i.cl, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.cm = sdiv i32 %.069, 64                      ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !138
  %i.cq = xor i64 %i.cp, %i.ci                    ; 2 uses
  switch i64 %i.cq, label %.lr.ph.i [
    i64 -1, label %bb.m
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.l
  %i.cr = shl nsw i32 %i.cm, 6
  %8 = sext i32 %i.cr to i64
  %.pre92.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !2280
  %.pre93.i = load ptr, ptr %.pre92.i, align 8, !tbaa !527, !noalias !2304
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !2285, !nonnull !78, !align !199
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2286, !nonnull !78, !align !199
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !514
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cw = shl nsw i32 %i.cm, 6                    ; 2 uses
  %i.cx = add i32 %i.cw, 64
  %i.cy = sext i32 %i.cx to i64
  %.0.off = add i32 %.069, 127
  %.not86.i = icmp ult i32 %.0.off, 64
  br i1 %.not86.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %bb.m
  %i.cz = sext i32 %i.cw to i64
  %.pre88.i = load ptr, ptr %.phi.trans.insert.i49, align 8, !tbaa !2280
  %.pre89.i = load ptr, ptr %.pre88.i, align 8, !tbaa !527, !noalias !2307
  %i.da = load ptr, ptr %i.ck, align 8, !tbaa !2285, !nonnull !78, !align !199
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2286, !nonnull !78, !align !199
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !514
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %.lr.ph85.i
  %.084.i = phi i64 [ %i.cz, %.lr.ph85.i ], [ %i.dn, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i = shl i64 %.084.i, 32
  %i.de = ashr exact i64 %sext.i, 28
  %i.df = getelementptr inbounds i8, ptr %.pre89.i, i64 %i.de
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %i.df, align 8, !tbaa !138, !noalias !2307 ; 3 uses
  %i.dg = icmp sgt i64 %.sroa.0.0.copyload.i.i50, -1
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = udiv i64 %.sroa.0.0.copyload.i.i50, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

bb.p:                                             ; preds = %bb.n
  %.nonneg.i51 = xor i64 %.sroa.0.0.copyload.i.i50, -1
  %i.di = udiv i64 %.nonneg.i51, 3600
  %i.dj = xor i64 %i.di, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %bb.p, %bb.o
  %i.dk = phi i64 [ %i.dh, %bb.o ], [ %i.dj, %bb.p ]
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.084.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !3
  %i.dn = add nuw i64 %.084.i, 1                  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.cy
  br i1 %i.do, label %bb.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !2310

bb.q:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit56.i, %.lr.ph.i
  %.01583.i = phi i64 [ %i.cq, %.lr.ph.i ], [ %i.dz, %_ZN8facebook5velox6StatusD2Ev.exit56.i ] ; 3 uses
  %i.dp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583.i, i1 true)
  %9 = or disjoint i64 %i.dp, %8                  ; 2 uses
  %i.dq = getelementptr inbounds [16 x i8], ptr %.pre93.i, i64 %9
  %.sroa.0.0.copyload.i40.i = load i64, ptr %i.dq, align 8, !tbaa !138, !noalias !2304 ; 3 uses
  %i.dr = icmp sgt i64 %.sroa.0.0.copyload.i40.i, -1
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = udiv i64 %.sroa.0.0.copyload.i40.i, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

bb.s:                                             ; preds = %bb.q
  %.nonneg79.i = xor i64 %.sroa.0.0.copyload.i40.i, -1
  %i.dt = udiv i64 %.nonneg79.i, 3600
  %i.du = xor i64 %i.dt, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

_ZN8facebook5velox6StatusD2Ev.exit56.i:           ; preds = %bb.s, %bb.r
  %i.dv = phi i64 [ %i.ds, %bb.r ], [ %i.du, %bb.s ]
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %9
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !3
  %i.dy = add i64 %.01583.i, -1
  %i.dz = and i64 %i.dy, %.01583.i                ; 2 uses
  %.not.i52 = icmp eq i64 %i.dz, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %bb.q, !llvm.loop !2311

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit56.i, %bb.l, %bb.m
  %i.ea = add nsw i32 %i.cl, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.l, !llvm.loop !2312

bb.t:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i53 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i53, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !2289, !range !77, !noundef !78
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !2292
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !138
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.ep, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = sext i32 %i.d to i64
  %.pre.i56 = load ptr, ptr %i.eq, align 8, !tbaa !2296 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre31.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !2280
  %.pre32.i59 = load ptr, ptr %.pre31.i58, align 8, !tbaa !527, !noalias !2313
  %i.er = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2285, !nonnull !78, !align !199
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !2286, !nonnull !78, !align !199
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !514
  br label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i63, %.preheader.i55
  %.030.i60 = phi i64 [ %i.ep, %.preheader.i55 ], [ %i.fg, %_ZN8facebook5velox6StatusD2Ev.exit19.i63 ] ; 3 uses
  %i.ew = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i60, i1 true)
  %11 = or disjoint i64 %i.ew, %10                ; 2 uses
  %i.ex = getelementptr inbounds [16 x i8], ptr %.pre32.i59, i64 %11
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.ex, align 8, !tbaa !138, !noalias !2313 ; 3 uses
  %i.ey = icmp sgt i64 %.sroa.0.0.copyload.i.i61, -1
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = udiv i64 %.sroa.0.0.copyload.i.i61, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i63

bb.w:                                             ; preds = %bb.u
  %.nonneg.i62 = xor i64 %.sroa.0.0.copyload.i.i61, -1
  %i.fa = udiv i64 %.nonneg.i62, 3600
  %i.fb = xor i64 %i.fa, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i63

_ZN8facebook5velox6StatusD2Ev.exit19.i63:         ; preds = %bb.w, %bb.v
  %i.fc = phi i64 [ %i.ez, %bb.v ], [ %i.fb, %bb.w ]
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %11
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %i.ff = add nsw i64 %.030.i60, -1
  %i.fg = and i64 %i.ff, %.030.i60                ; 2 uses
  %.not10.i64 = icmp eq i64 %i.fg, 0
  br i1 %.not10.i64, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.u, !llvm.loop !2300

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i63, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.t, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS3_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1614) align 8 %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1615, align 8           ; 6 uses
  %3 = alloca %class.anon.1616, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !764, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !52, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !765
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !767  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !768
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !544    ; 2 uses
  %.not.i.i6 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i36.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i36.not, label %.critedge.i.i.i, label %.lr.ph38

bb.f:                                             ; preds = %.lr.ph38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i37, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph38, label %.critedge.i.i.i, !llvm.loop !769

.lr.ph38:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i37, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !769

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph38, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph38 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !767 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !765 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2316, !nonnull !78, !align !199 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !2317
  %.pre30 = load ptr, ptr %.pre, align 8, !tbaa !941 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre30, i64 16
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !943
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %.pre30, i64 58
  %.pre33 = load i8, ptr %.phi.trans.insert32, align 2, !tbaa !944, !range !77
  %i.am = trunc nuw i8 %.pre33 to i1
  %i.an = getelementptr inbounds nuw i8, ptr %.pre30, i64 59
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre30, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre30, i64 64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !2319, !nonnull !78, !align !199
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2320, !nonnull !78, !align !199
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !514
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit17
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit17 ] ; 4 uses
  %i.au = trunc nsw i64 %indvars.iv to i32
  br i1 %i.am, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.an, align 1, !tbaa !945, !range !77, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !946
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !947
  %i.az = shl nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.ax, %bb.k ], [ %i.au, %bb.i ]
  %i.bc = sext i32 %.0.i.i.i to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %.pre31, i64 %i.bc
  %.sroa.0.0.copyload.i.i7 = load i64, ptr %i.bd, align 8, !tbaa !138 ; 3 uses
  %i.be = icmp sgt i64 %.sroa.0.0.copyload.i.i7, -1
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc5
  %i.bf = udiv i64 %.sroa.0.0.copyload.i.i7, 3600
  br label %_ZN8facebook5velox6StatusD2Ev.exit17

bb.n:                                             ; preds = %.noexc5
  %.nonneg = xor i64 %.sroa.0.0.copyload.i.i7, -1
  %i.bg = udiv i64 %.nonneg, 3600
  %i.bh = xor i64 %i.bg, -1
  br label %_ZN8facebook5velox6StatusD2Ev.exit17

_ZN8facebook5velox6StatusD2Ev.exit17:             ; preds = %bb.m, %bb.n
  %i.bi = phi i64 [ %i.bf, %bb.m ], [ %i.bh, %bb.n ]
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !2322

bb.o:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !544   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !765
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !767
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !2323
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bl, ptr %i.bs, align 8, !tbaa !2325
  store i8 1, ptr %3, align 8, !tbaa !2326
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bl, ptr %i.bt, align 8, !tbaa !2328
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS4_10VectorExecEEESD_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.bn, i32 noundef %i.bp, ptr noundef nonnull byval(%class.anon.1615) align 8 %2, ptr noundef nonnull byval(%class.anon.1616) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17, %bb.h, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg13HoursFunctionINS4_10VectorExecEEESD_iNS0_15ConstantCheckerIJNS0_9TimestampEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1615) align 8 %2, ptr noundef byval(%class.anon.1616) align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
