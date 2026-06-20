inline.NumInlined: 8633
inline.NumDeleted: 3017
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !752 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !750 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !755, !nonnull !61, !align !183 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 5 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !756
  %.pre30 = load i32, ptr %.pre, align 4, !tbaa !498, !noalias !760
  %.pre31 = load ptr, ptr %i.ak, align 8, !tbaa !763
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre31, i64 16
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !764
  %.pre33 = load ptr, ptr %.pre32, align 8, !tbaa !499 ; 3 uses
  %i.am = zext i32 %.pre30 to i64
  %i.an = mul i64 %i.am, -7046029288634856825
  %i.ao = xor i64 %i.an, 2870177450012600265      ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 23)
  %i.aq = mul i64 %i.ap, -4417276706812531889
  %i.ar = add i64 %i.aq, 1609587929392839161      ; 2 uses
  %i.as = lshr i64 %i.ar, 33
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, -4417276706812531889     ; 2 uses
  %i.av = lshr i64 %i.au, 29
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, 1609587929392839161      ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = xor i64 %i.ay, %i.ax                    ; 3 uses
  %i.ba = xor i32 %i.ag, -1
  %i.bb = add i32 %i.ae, %i.ba                    ; 3 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %i.bb, 15
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bd, 12
  %n.vec = and i64 %i.bd, 8589934576              ; 4 uses
  %i.be = add nsw i64 %n.vec, %i.al
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre33, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat, ptr %i.bf, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat, ptr %i.bh, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vec.epilog.ph, !prof !590

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.bd, 8589934588            ; 3 uses
  %i.bj = add nsw i64 %n.vec40, %i.al
  %broadcast.splatinsert41 = insertelement <4 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat42 = shufflevector <4 x i64> %broadcast.splatinsert41, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep47 = getelementptr [8 x i8], ptr %.pre33, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %gep48 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %index43
  store <4 x i64> %broadcast.splat42, ptr %gep48, align 8, !tbaa !122
  %index.next44 = add nuw i64 %index43, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !767

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.bd, %n.vec40
  br i1 %cmp.n45, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit18.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.pre33, i64 %indvars.iv
  store i64 %i.az, ptr %i.bl, align 8, !tbaa !122
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18, !llvm.loop !768

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !528   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !750
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !752
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !769
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !771
  store i8 1, ptr %3, align 8, !tbaa !772
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bm, ptr %i.bu, align 8, !tbaa !774
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS4_20ConstantVectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.bo, i32 noundef %i.bq, ptr noundef nonnull byval(%class.anon.496) align 8 %2, ptr noundef nonnull byval(%class.anon.497) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS4_20ConstantVectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.496) align 8 %2, ptr noundef byval(%class.anon.497) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !769, !range !60, !noundef !61
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !771
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !122
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !755 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre35.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !756
  %.pre36.i = load i32, ptr %.pre35.i, align 4, !tbaa !498, !noalias !775
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !763
  %.phi.trans.insert39.i = getelementptr inbounds nuw i8, ptr %.pre38.i, i64 16
  %.pre40.i = load ptr, ptr %.phi.trans.insert39.i, align 8, !tbaa !764
  %.pre41.i = load ptr, ptr %.pre40.i, align 8, !tbaa !499
  %i.ac = zext i32 %.pre36.i to i64
  %i.ad = mul i64 %i.ac, -7046029288634856825
  %i.ae = xor i64 %i.ad, 2870177450012600265      ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 23)
  %i.ag = mul i64 %i.af, -4417276706812531889
  %i.ah = add i64 %i.ag, 1609587929392839161      ; 2 uses
  %i.ai = lshr i64 %i.ah, 33
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, -4417276706812531889     ; 2 uses
  %i.al = lshr i64 %i.ak, 29
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, 1609587929392839161      ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = xor i64 %i.ao, %i.an
  %invariant.gep.i = getelementptr [8 x i8], ptr %.pre41.i, i64 %4
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.034.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i, i1 true)
  %i.ar = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.aq
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !122
  %i.as = add nsw i64 %.034.i, -1
  %i.at = and i64 %i.as, %.034.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, !llvm.loop !778

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !769, !range !60, !noundef !61
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !771
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !122
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %5 = sext i32 %i.bn to i64
  %.pre.i38 = load ptr, ptr %i.bm, align 8, !tbaa !755 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre35.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !756
  %.pre36.i41 = load i32, ptr %.pre35.i40, align 4, !tbaa !498, !noalias !779
  %.phi.trans.insert37.i42 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %.pre38.i43 = load ptr, ptr %.phi.trans.insert37.i42, align 8, !tbaa !763
  %.phi.trans.insert39.i44 = getelementptr inbounds nuw i8, ptr %.pre38.i43, i64 16
  %.pre40.i45 = load ptr, ptr %.phi.trans.insert39.i44, align 8, !tbaa !764
  %.pre41.i46 = load ptr, ptr %.pre40.i45, align 8, !tbaa !499
  %i.bo = zext i32 %.pre36.i41 to i64
  %i.bp = mul i64 %i.bo, -7046029288634856825
  %i.bq = xor i64 %i.bp, 2870177450012600265      ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 23)
  %i.bs = mul i64 %i.br, -4417276706812531889
  %i.bt = add i64 %i.bs, 1609587929392839161      ; 2 uses
  %i.bu = lshr i64 %i.bt, 33
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, -4417276706812531889     ; 2 uses
  %i.bx = lshr i64 %i.bw, 29
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = mul i64 %i.by, 1609587929392839161      ; 2 uses
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = xor i64 %i.ca, %i.bz
  %invariant.gep.i47 = getelementptr [8 x i8], ptr %.pre41.i46, i64 %5
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i47

_ZN8facebook5velox6StatusD2Ev.exit24.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i47, %.preheader.i37
  %.034.i48 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %_ZN8facebook5velox6StatusD2Ev.exit24.i47 ] ; 3 uses
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i48, i1 true)
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep.i47, i64 %i.cc
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !122
  %i.ce = add i64 %.034.i48, -1
  %i.cf = and i64 %i.ce, %.034.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit24.i47, !llvm.loop !778

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i47, %bb.e, %bb.d
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3372 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3372, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50
  %i.ch = load i8, ptr %3, align 8, !tbaa !772, !range !60, !noundef !61
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !774
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i51 = load ptr, ptr %i.cn, align 8        ; 2 uses
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 8 ; 2 uses
  %.phi.trans.insert85.i = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  %i.co = phi i32 [ %i.cg, %.lr.ph ], [ %i.eq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %.073 = phi i32 [ %i.c, %.lr.ph ], [ %i.co, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %i.cp = sdiv i32 %.073, 64                      ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !122
  %i.ct = xor i64 %i.cs, %i.cm                    ; 2 uses
  switch i64 %i.ct, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_20ConstantVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_20ConstantVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i: ; preds = %bb.f
  %i.cu = shl nsw i32 %i.cp, 6
  %6 = sext i32 %i.cu to i64
  %.pre92.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !756
  %.pre93.i = load i32, ptr %.pre92.i, align 4, !tbaa !498, !noalias !782
  %.pre95.i = load ptr, ptr %.phi.trans.insert85.i, align 8, !tbaa !763
  %.phi.trans.insert96.i = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 16
  %.pre97.i = load ptr, ptr %.phi.trans.insert96.i, align 8, !tbaa !764
  %.pre98.i = load ptr, ptr %.pre97.i, align 8, !tbaa !499
  %i.cv = zext i32 %.pre93.i to i64
  %i.cw = mul i64 %i.cv, -7046029288634856825
  %i.cx = xor i64 %i.cw, 2870177450012600265      ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 23)
  %i.cz = mul i64 %i.cy, -4417276706812531889
  %i.da = add i64 %i.cz, 1609587929392839161      ; 2 uses
  %i.db = lshr i64 %i.da, 33
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, -4417276706812531889     ; 2 uses
  %i.de = lshr i64 %i.dd, 29
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = mul i64 %i.df, 1609587929392839161      ; 2 uses
  %i.dh = lshr i64 %i.dg, 32
  %i.di = xor i64 %i.dh, %i.dg
  %invariant.gep.i55 = getelementptr [8 x i8], ptr %.pre98.i, i64 %6
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i

bb.g:                                             ; preds = %bb.f
  %i.dj = shl nsw i32 %i.cp, 6                    ; 2 uses
  %i.dk = add i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %.0.off = add i32 %.073, 127
  %.not81.i = icmp ult i32 %.0.off, 64
  br i1 %.not81.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dm = sext i32 %i.dj to i64                   ; 6 uses
  %.pre83.i = load ptr, ptr %.phi.trans.insert.i52, align 8, !tbaa !756
  %.pre84.i = load i32, ptr %.pre83.i, align 4, !tbaa !498, !noalias !785
  %.pre86.i = load ptr, ptr %.phi.trans.insert85.i, align 8, !tbaa !763
  %.phi.trans.insert87.i = getelementptr inbounds nuw i8, ptr %.pre86.i, i64 16
  %.pre88.i = load ptr, ptr %.phi.trans.insert87.i, align 8, !tbaa !764
  %.pre89.i = load ptr, ptr %.pre88.i, align 8, !tbaa !499 ; 3 uses
  %i.dn = zext i32 %.pre84.i to i64
  %i.do = mul i64 %i.dn, -7046029288634856825
  %i.dp = xor i64 %i.do, 2870177450012600265      ; 2 uses
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 23)
  %i.dr = mul i64 %i.dq, -4417276706812531889
  %i.ds = add i64 %i.dr, 1609587929392839161      ; 2 uses
  %i.dt = lshr i64 %i.ds, 33
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = mul i64 %i.du, -4417276706812531889     ; 2 uses
  %i.dw = lshr i64 %i.dv, 29
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = mul i64 %i.dx, 1609587929392839161      ; 2 uses
  %i.dz = lshr i64 %i.dy, 32
  %i.ea = xor i64 %i.dz, %i.dy                    ; 2 uses
  %i.eb = or disjoint i64 %i.dm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 %i.dl) ; 2 uses
  %i.ec = sub i64 %umax, %i.dm                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ec, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check89 = icmp ult i64 %i.ec, 16
  %n.mod.vf90 = and i64 %umax, 1                  ; 3 uses
  %n.vec91 = sub nuw i64 %i.ec, %n.mod.vf90       ; 3 uses
  %i.ed = add i64 %n.vec91, %i.dm                 ; 2 uses
  %broadcast.splatinsert92 = insertelement <4 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat93 = shufflevector <4 x i64> %broadcast.splatinsert92, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check89, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr [8 x i8], ptr %.pre89.i, i64 %i.dm
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep100 = getelementptr [8 x i8], ptr %.pre89.i, i64 %i.dm
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat93, ptr %gep, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat93, ptr %i.ee, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat93, ptr %i.ef, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat93, ptr %i.eg, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec91
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !788

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf90, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index94 = phi i64 [ %index.next95, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep101 = getelementptr [8 x i8], ptr %invariant.gep100, i64 %index94
  store <4 x i64> %broadcast.splat93, ptr %gep101, align 8, !tbaa !122
  %index.next95 = add nuw i64 %index94, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !789

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %n.mod.vf90, 0
  br i1 %cmp.n96, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader: ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.080.i.ph = phi i64 [ %i.ed, %middle.block ], [ %i.dm, %iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit38.i

_ZN8facebook5velox6StatusD2Ev.exit38.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit38.i
  %.080.i = phi i64 [ %i.ek, %_ZN8facebook5velox6StatusD2Ev.exit38.i ], [ %.080.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit38.i.preheader ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.pre89.i, i64 %.080.i
  store i64 %i.ea, ptr %i.ej, align 8, !tbaa !122
  %i.ek = add nuw i64 %.080.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.dl
  br i1 %i.el, label %_ZN8facebook5velox6StatusD2Ev.exit38.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, !llvm.loop !790

_ZN8facebook5velox6StatusD2Ev.exit58.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_20ConstantVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i
  %.01579.i = phi i64 [ %i.ct, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_20ConstantVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i ], [ %i.ep, %_ZN8facebook5velox6StatusD2Ev.exit58.i ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579.i, i1 true)
  %i.en = getelementptr [8 x i8], ptr %invariant.gep.i55, i64 %i.em
  store i64 %i.di, ptr %i.en, align 8, !tbaa !122
  %i.eo = add i64 %.01579.i, -1
  %i.ep = and i64 %i.eo, %.01579.i                ; 2 uses
  %.not.i53 = icmp eq i64 %i.ep, 0
  br i1 %.not.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit58.i, !llvm.loop !791

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.i, %_ZN8facebook5velox6StatusD2Ev.exit58.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.eq = add nsw i32 %i.co, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eq, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !792

bb.h:                                             ; preds = %._crit_edge
  %i.er = ashr i32 %1, 6
  %i.es = and i32 %1, 63
  %i.et = zext nneg i32 %i.es to i64
  %notmask.i54 = shl nsw i64 -1, %i.et
  %i.eu = xor i64 %notmask.i54, -1
  %i.ev = load i8, ptr %2, align 8, !tbaa !769, !range !60, !noundef !61
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !771
  %i.ey = sext i32 %i.er to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !122
  %i.fb = xor i8 %i.ev, 1
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = xor i64 %i.fa, %i.fd
  %i.ff = and i64 %i.fe, %i.eu                    ; 2 uses
  %.not.i55 = icmp eq i64 %i.ff, 0
  br i1 %.not.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i56

.preheader.i56:                                   ; preds = %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = sext i32 %i.d to i64
  %.pre.i57 = load ptr, ptr %i.fg, align 8, !tbaa !755 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 8
  %.pre35.i59 = load ptr, ptr %.phi.trans.insert.i58, align 8, !tbaa !756
  %.pre36.i60 = load i32, ptr %.pre35.i59, align 4, !tbaa !498, !noalias !793
  %.phi.trans.insert37.i61 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 24
  %.pre38.i62 = load ptr, ptr %.phi.trans.insert37.i61, align 8, !tbaa !763
  %.phi.trans.insert39.i63 = getelementptr inbounds nuw i8, ptr %.pre38.i62, i64 16
  %.pre40.i64 = load ptr, ptr %.phi.trans.insert39.i63, align 8, !tbaa !764
  %.pre41.i65 = load ptr, ptr %.pre40.i64, align 8, !tbaa !499
  %i.fh = zext i32 %.pre36.i60 to i64
  %i.fi = mul i64 %i.fh, -7046029288634856825
  %i.fj = xor i64 %i.fi, 2870177450012600265      ; 2 uses
  %i.fk = tail call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 23)
  %i.fl = mul i64 %i.fk, -4417276706812531889
  %i.fm = add i64 %i.fl, 1609587929392839161      ; 2 uses
  %i.fn = lshr i64 %i.fm, 33
  %i.fo = xor i64 %i.fn, %i.fm
  %i.fp = mul i64 %i.fo, -4417276706812531889     ; 2 uses
  %i.fq = lshr i64 %i.fp, 29
  %i.fr = xor i64 %i.fq, %i.fp
  %i.fs = mul i64 %i.fr, 1609587929392839161      ; 2 uses
  %i.ft = lshr i64 %i.fs, 32
  %i.fu = xor i64 %i.ft, %i.fs
  %invariant.gep.i70 = getelementptr [8 x i8], ptr %.pre41.i65, i64 %7
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66

_ZN8facebook5velox6StatusD2Ev.exit24.i66:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i66, %.preheader.i56
  %.034.i67 = phi i64 [ %i.ff, %.preheader.i56 ], [ %i.fy, %_ZN8facebook5velox6StatusD2Ev.exit24.i66 ] ; 3 uses
  %i.fv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i67, i1 true)
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep.i70, i64 %i.fv
  store i64 %i.fu, ptr %i.fw, align 8, !tbaa !122
  %i.fx = add nsw i64 %.034.i67, -1
  %i.fy = and i64 %i.fx, %.034.i67                ; 2 uses
  %.not10.i68 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i68, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i66, !llvm.loop !778

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_20ConstantVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i66, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.521) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.522, align 8            ; 6 uses
  %3 = alloca %class.anon.523, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !749, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !34, !range !60
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !750
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !752  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !753
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !528    ; 2 uses
  %.not.i.i6 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i32.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i32.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i33, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !754

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i33, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !122
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !754

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !122
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !752 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !750 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !796, !nonnull !61, !align !183 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 3 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !797
  %.pre26 = load ptr, ptr %.pre, align 8, !tbaa !511, !noalias !800 ; 2 uses
  %.pre27 = load ptr, ptr %i.ak, align 8, !tbaa !803
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre27, i64 16
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !804
  %.pre29 = load ptr, ptr %.pre28, align 8, !tbaa !499 ; 2 uses
  %i.am = xor i32 %i.ag, -1
  %i.an = add i32 %i.ae, %i.am                    ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %n.vec = and i64 %i.ap, 8589934588              ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add i64 %index, %i.al                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.pre26, i64 %i.ar
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !498, !noalias !800
  %i.at = zext <4 x i32> %wide.load to <4 x i64>
  %i.au = mul <4 x i64> %i.at, splat (i64 -7046029288634856825)
  %i.av = xor <4 x i64> %i.au, splat (i64 2870177450012600265) ; 2 uses
  %i.aw = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.av, <4 x i64> %i.av, <4 x i64> splat (i64 23))
  %i.ax = mul <4 x i64> %i.aw, splat (i64 -4417276706812531889)
  %i.ay = add <4 x i64> %i.ax, splat (i64 1609587929392839161) ; 2 uses
  %i.az = lshr <4 x i64> %i.ay, splat (i64 33)
  %i.ba = xor <4 x i64> %i.az, %i.ay
  %i.bb = mul <4 x i64> %i.ba, splat (i64 -4417276706812531889) ; 2 uses
  %i.bc = lshr <4 x i64> %i.bb, splat (i64 29)
  %i.bd = xor <4 x i64> %i.bc, %i.bb
  %i.be = mul <4 x i64> %i.bd, splat (i64 1609587929392839161) ; 2 uses
  %i.bf = lshr <4 x i64> %i.be, splat (i64 32)
  %i.bg = xor <4 x i64> %i.bf, %i.be
  %i.bh = getelementptr inbounds [8 x i8], ptr %.pre29, i64 %i.ar
  store <4 x i64> %i.bg, ptr %i.bh, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.preheader:   ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.aq, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.pre26, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !498, !noalias !800
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul i64 %i.bl, -7046029288634856825
  %i.bn = xor i64 %i.bm, 2870177450012600265      ; 2 uses
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 23)
  %i.bp = mul i64 %i.bo, -4417276706812531889
  %i.bq = add i64 %i.bp, 1609587929392839161      ; 2 uses
  %i.br = lshr i64 %i.bq, 33
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, -4417276706812531889     ; 2 uses
  %i.bu = lshr i64 %i.bt, 29
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, 1609587929392839161      ; 2 uses
  %i.bx = lshr i64 %i.bw, 32
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds [8 x i8], ptr %.pre29, i64 %indvars.iv
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !122
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14, !llvm.loop !807

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !528   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !750
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !752
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !808
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !810
  store i8 1, ptr %3, align 8, !tbaa !811
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !813
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS4_16FlatVectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull byval(%class.anon.522) align 8 %2, ptr noundef nonnull byval(%class.anon.523) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS4_16FlatVectorReaderIfEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.522) align 8 %2, ptr noundef byval(%class.anon.523) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !808, !range !60, !noundef !61
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !810
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !122
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !796 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre31.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !797
  %.pre32.i = load ptr, ptr %.pre31.i, align 8, !tbaa !511, !noalias !814
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !tbaa !803
  %.phi.trans.insert35.i = getelementptr inbounds nuw i8, ptr %.pre34.i, i64 16
  %.pre36.i = load ptr, ptr %.phi.trans.insert35.i, align 8, !tbaa !804
  %.pre37.i = load ptr, ptr %.pre36.i, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %5 = or disjoint i64 %i.ac, %4                  ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %.pre32.i, i64 %5
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !498, !noalias !814
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %i.af, -7046029288634856825
  %i.ah = xor i64 %i.ag, 2870177450012600265      ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 23)
  %i.aj = mul i64 %i.ai, -4417276706812531889
  %i.ak = add i64 %i.aj, 1609587929392839161      ; 2 uses
  %i.al = lshr i64 %i.ak, 33
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -4417276706812531889     ; 2 uses
  %i.ao = lshr i64 %i.an, 29
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, 1609587929392839161      ; 2 uses
  %i.ar = lshr i64 %i.aq, 32
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = getelementptr inbounds [8 x i8], ptr %.pre37.i, i64 %5
  store i64 %i.as, ptr %i.at, align 8, !tbaa !122
  %i.au = add nsw i64 %.030.i, -1
  %i.av = and i64 %i.au, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !817

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !808, !range !60, !noundef !61
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !810
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !122
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %6 = sext i32 %i.bp to i64
  %.pre.i38 = load ptr, ptr %i.bo, align 8, !tbaa !796 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre31.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !797
  %.pre32.i41 = load ptr, ptr %.pre31.i40, align 8, !tbaa !511, !noalias !818
  %.phi.trans.insert33.i42 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %.pre34.i43 = load ptr, ptr %.phi.trans.insert33.i42, align 8, !tbaa !803
  %.phi.trans.insert35.i44 = getelementptr inbounds nuw i8, ptr %.pre34.i43, i64 16
  %.pre36.i45 = load ptr, ptr %.phi.trans.insert35.i44, align 8, !tbaa !804
  %.pre37.i46 = load ptr, ptr %.pre36.i45, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i47

_ZN8facebook5velox6StatusD2Ev.exit20.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %.preheader.i37
  %.030.i48 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %_ZN8facebook5velox6StatusD2Ev.exit20.i47 ] ; 3 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i48, i1 true)
  %7 = or disjoint i64 %i.bq, %6                  ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre32.i41, i64 %7
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !498, !noalias !818
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul i64 %i.bt, -7046029288634856825
  %i.bv = xor i64 %i.bu, 2870177450012600265      ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 23)
  %i.bx = mul i64 %i.bw, -4417276706812531889
  %i.by = add i64 %i.bx, 1609587929392839161      ; 2 uses
  %i.bz = lshr i64 %i.by, 33
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -4417276706812531889     ; 2 uses
  %i.cc = lshr i64 %i.cb, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, 1609587929392839161      ; 2 uses
  %i.cf = lshr i64 %i.ce, 32
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = getelementptr inbounds [8 x i8], ptr %.pre37.i46, i64 %7
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !122
  %i.ci = add i64 %.030.i48, -1
  %i.cj = and i64 %i.ci, %.030.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit20.i47, !llvm.loop !817

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %bb.e, %bb.d
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, %.lr.ph
  %i.cl = phi i32 [ %i.cn, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50 ] ; 2 uses
  %.069 = phi i32 [ %i.cl, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50 ]
  %i.cm = sdiv i32 %.069, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cm)
  %i.cn = add nsw i32 %i.cl, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cn, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !821

bb.f:                                             ; preds = %._crit_edge
  %i.co = ashr i32 %1, 6
  %i.cp = and i32 %1, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %notmask.i51 = shl nsw i64 -1, %i.cq
  %i.cr = xor i64 %notmask.i51, -1
  %i.cs = load i8, ptr %2, align 8, !tbaa !808, !range !60, !noundef !61
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !810
  %i.cv = sext i32 %i.co to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !122
  %i.cy = xor i8 %i.cs, 1
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = sub nsw i64 0, %i.cz
  %i.db = xor i64 %i.cx, %i.da
  %i.dc = and i64 %i.db, %i.cr                    ; 2 uses
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i53

.preheader.i53:                                   ; preds = %bb.f
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %8 = sext i32 %i.d to i64
  %.pre.i54 = load ptr, ptr %i.dd, align 8, !tbaa !796 ; 2 uses
  %.phi.trans.insert.i55 = getelementptr inbounds nuw i8, ptr %.pre.i54, i64 8
  %.pre31.i56 = load ptr, ptr %.phi.trans.insert.i55, align 8, !tbaa !797
  %.pre32.i57 = load ptr, ptr %.pre31.i56, align 8, !tbaa !511, !noalias !822
  %.phi.trans.insert33.i58 = getelementptr inbounds nuw i8, ptr %.pre.i54, i64 24
  %.pre34.i59 = load ptr, ptr %.phi.trans.insert33.i58, align 8, !tbaa !803
  %.phi.trans.insert35.i60 = getelementptr inbounds nuw i8, ptr %.pre34.i59, i64 16
  %.pre36.i61 = load ptr, ptr %.phi.trans.insert35.i60, align 8, !tbaa !804
  %.pre37.i62 = load ptr, ptr %.pre36.i61, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i63

_ZN8facebook5velox6StatusD2Ev.exit20.i63:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i63, %.preheader.i53
  %.030.i64 = phi i64 [ %i.dc, %.preheader.i53 ], [ %i.dx, %_ZN8facebook5velox6StatusD2Ev.exit20.i63 ] ; 3 uses
  %i.de = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i64, i1 true)
  %9 = or disjoint i64 %i.de, %8                  ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %.pre32.i57, i64 %9
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !498, !noalias !822
  %i.dh = zext i32 %i.dg to i64
  %i.di = mul i64 %i.dh, -7046029288634856825
  %i.dj = xor i64 %i.di, 2870177450012600265      ; 2 uses
  %i.dk = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 23)
  %i.dl = mul i64 %i.dk, -4417276706812531889
  %i.dm = add i64 %i.dl, 1609587929392839161      ; 2 uses
  %i.dn = lshr i64 %i.dm, 33
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, -4417276706812531889     ; 2 uses
  %i.dq = lshr i64 %i.dp, 29
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = mul i64 %i.dr, 1609587929392839161      ; 2 uses
  %i.dt = lshr i64 %i.ds, 32
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = getelementptr inbounds [8 x i8], ptr %.pre37.i62, i64 %9
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !122
  %i.dw = add nsw i64 %.030.i64, -1
  %i.dx = and i64 %i.dw, %.030.i64                ; 2 uses
  %.not10.i65 = icmp eq i64 %i.dx, 0
  br i1 %.not10.i65, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i63, !llvm.loop !817

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i63, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS3_16FlatVectorReaderIfEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !811, !range !60, !noundef !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !813
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !122
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %2 = sext i32 %i.l to i64
  %.pre86 = load ptr, ptr %i.k, align 8, !tbaa !796 ; 2 uses
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %.pre86, i64 8
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8, !tbaa !797
  %.pre89 = load ptr, ptr %.pre88, align 8, !tbaa !511, !noalias !825
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %.pre86, i64 24
  %.pre91 = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !803
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %.pre91, i64 16
  %.pre93 = load ptr, ptr %.phi.trans.insert92, align 8, !tbaa !804
  %.pre94 = load ptr, ptr %.pre93, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %1, 6                            ; 4 uses
  %i.n = add i32 %i.m, 64
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %.not77 = icmp eq i32 %i.m, -64
  br i1 %.not77, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph: ; preds = %bb.b
  %i.p = sext i32 %i.m to i64                     ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !796 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre79 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !797
  %.pre80 = load ptr, ptr %.pre79, align 8, !tbaa !511, !noalias !828 ; 2 uses
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !803
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %.pre82, i64 16
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !804
  %.pre85 = load ptr, ptr %.pre84, align 8, !tbaa !499 ; 2 uses
  %i.r = or disjoint i64 %i.p, 1
  %umax100 = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.o) ; 2 uses
  %i.s = sub i64 %umax100, %i.p                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 12
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit34.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph
  %i.t = or disjoint i64 %i.p, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.o)
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %umax, %i.u                      ; 2 uses
  %i.w = sext i32 %i.m to i34                     ; 2 uses
  %i.x = shl nsw i34 %i.w, 2
  %i.y = trunc i64 %i.v to i34
  %i.z = add i34 %i.w, %i.y
  %i.aa = shl i34 %i.z, 2
  %i.ab = icmp slt i34 %i.aa, %i.x
  %i.ac = icmp ugt i64 %i.v, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN8facebook5velox6StatusD2Ev.exit34.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %umax100, 1                 ; 2 uses
  %n.vec = sub i64 %i.s, %n.mod.vf                ; 2 uses
  %i.ae = add i64 %n.vec, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %index, %i.p                    ; 2 uses
  %i.ag = shl i64 %i.af, 32
  %i.ah = ashr exact i64 %i.ag, 30
  %i.ai = getelementptr inbounds i8, ptr %.pre80, i64 %i.ah
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !498, !noalias !828
  %i.aj = zext <4 x i32> %wide.load to <4 x i64>
  %i.ak = mul <4 x i64> %i.aj, splat (i64 -7046029288634856825)
  %i.al = xor <4 x i64> %i.ak, splat (i64 2870177450012600265) ; 2 uses
  %i.am = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.al, <4 x i64> %i.al, <4 x i64> splat (i64 23))
  %i.an = mul <4 x i64> %i.am, splat (i64 -4417276706812531889)
  %i.ao = add <4 x i64> %i.an, splat (i64 1609587929392839161) ; 2 uses
  %i.ap = lshr <4 x i64> %i.ao, splat (i64 33)
  %i.aq = xor <4 x i64> %i.ap, %i.ao
  %i.ar = mul <4 x i64> %i.aq, splat (i64 -4417276706812531889) ; 2 uses
  %i.as = lshr <4 x i64> %i.ar, splat (i64 29)
  %i.at = xor <4 x i64> %i.as, %i.ar
  %i.au = mul <4 x i64> %i.at, splat (i64 1609587929392839161) ; 2 uses
  %i.av = lshr <4 x i64> %i.au, splat (i64 32)
  %i.aw = xor <4 x i64> %i.av, %i.au
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %i.af
  store <4 x i64> %i.aw, ptr %i.ax, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !831

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit34.preheader

_ZN8facebook5velox6StatusD2Ev.exit34.preheader:   ; preds = %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph, %middle.block
  %.076.ph = phi i64 [ %i.p, %vector.scevcheck ], [ %i.p, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph ], [ %i.ae, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit34

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.preheader, %_ZN8facebook5velox6StatusD2Ev.exit34
  %.076 = phi i64 [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit34 ], [ %.076.ph, %_ZN8facebook5velox6StatusD2Ev.exit34.preheader ] ; 3 uses
  %sext = shl i64 %.076, 32
  %i.az = ashr exact i64 %sext, 30
  %i.ba = getelementptr inbounds i8, ptr %.pre80, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !498, !noalias !828
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.bc, -7046029288634856825
  %i.be = xor i64 %i.bd, 2870177450012600265      ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 23)
  %i.bg = mul i64 %i.bf, -4417276706812531889
  %i.bh = add i64 %i.bg, 1609587929392839161      ; 2 uses
  %i.bi = lshr i64 %i.bh, 33
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = mul i64 %i.bj, -4417276706812531889     ; 2 uses
  %i.bl = lshr i64 %i.bk, 29
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, 1609587929392839161      ; 2 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.076
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !122
  %i.br = add nuw i64 %.076, 1                    ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.o
  br i1 %i.bs, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.loopexit, !llvm.loop !832

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01575 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20XxHash64RealFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJfEEEJfEEEE7iterateIJNS1_16FlatVectorReaderIfEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.bt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575, i1 true)
  %3 = or disjoint i64 %i.bt, %2                  ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre89, i64 %3
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !498, !noalias !825
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul i64 %i.bw, -7046029288634856825
  %i.by = xor i64 %i.bx, 2870177450012600265      ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 23)
  %i.ca = mul i64 %i.bz, -4417276706812531889
  %i.cb = add i64 %i.ca, 1609587929392839161      ; 2 uses
  %i.cc = lshr i64 %i.cb, 33
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, -4417276706812531889     ; 2 uses
  %i.cf = lshr i64 %i.ce, 29
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = mul i64 %i.cg, 1609587929392839161      ; 2 uses
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = getelementptr inbounds [8 x i8], ptr %.pre94, i64 %3
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !122
  %i.cl = add i64 %.01575, -1
  %i.cm = and i64 %i.cl, %.01575                  ; 2 uses
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit54, !llvm.loop !833

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34, %_ZN8facebook5velox6StatusD2Ev.exit54, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !476    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !483
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !480
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !834

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !480
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i8 0, ptr %i.u, align 8, !tbaa !480
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i8 0, ptr %i.v, align 8, !tbaa !480
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store i8 0, ptr %i.w, align 8, !tbaa !480
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store i8 0, ptr %i.x, align 8, !tbaa !480
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  store i8 0, ptr %i.y, align 8, !tbaa !480
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  store i8 0, ptr %i.z, align 8, !tbaa !480
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  store i8 0, ptr %i.aa, align 8, !tbaa !480
  %i.ab = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !835

_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !479
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.n, %1
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
  unreachable

_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ae = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 384307168202282325) ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 24
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.f ; 3 uses
  %xtraiter45 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.al, %.lr.ph.i.i.i30.prol ], [ %i.ai, %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !480
  %i.ak = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !836

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ai, %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.al, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ak, %.lr.ph.i.i.i30.prol ]
  %i.am = icmp ult i64 %1, 8
  br i1 %i.am, label %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.aw, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.av, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i8 0, ptr %i.an, align 8, !tbaa !480
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i8 0, ptr %i.ao, align 8, !tbaa !480
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i8 0, ptr %i.ap, align 8, !tbaa !480
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store i8 0, ptr %i.aq, align 8, !tbaa !480
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store i8 0, ptr %i.ar, align 8, !tbaa !480
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  store i8 0, ptr %i.as, align 8, !tbaa !480
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  store i8 0, ptr %i.at, align 8, !tbaa !480
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 184
  store i8 0, ptr %i.au, align 8, !tbaa !480
  %i.av = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !835

_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ah, %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !480, !alias.scope !837, !noalias !840
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !480, !range !60, !alias.scope !840, !noalias !837, !noundef !61
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.e, label %_ZSt12construct_atISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i

_ZSt12construct_atISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store i8 0, ptr %i.ax, align 8, !tbaa !480, !alias.scope !840, !noalias !837
  br label %_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bb = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !517, !alias.scope !840, !noalias !837
  store ptr %i.bb, ptr %.012.i.i.i, align 8, !tbaa !517, !alias.scope !837, !noalias !840
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !527, !alias.scope !840, !noalias !837
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !527, !alias.scope !837, !noalias !840
  store ptr null, ptr %i.bd, align 8, !tbaa !527, !alias.scope !840, !noalias !837
  store i8 1, ptr %i.ay, align 8, !tbaa !480, !alias.scope !837, !noalias !840
  store i8 0, ptr %i.ax, align 8, !tbaa !480, !alias.scope !840, !noalias !837
  tail call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.0911.i.i.i) #26, !noalias !837
  br label %_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %_ZSt12construct_atISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37, !llvm.loop !842

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEmS5_ET_S7_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE13_M_deallocateEPS5_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !483
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #28
  br label %_ZNSt12_Vector_baseISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE13_M_deallocateEPS5_m.exit41
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !122
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !752 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !750 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !991, !nonnull !61, !align !183 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 5 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !992
  %.pre30 = load i64, ptr %.pre, align 8, !tbaa !973, !noalias !996
  %.pre31 = load ptr, ptr %i.ak, align 8, !tbaa !999
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre31, i64 16
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1000
  %.pre33 = load ptr, ptr %.pre32, align 8, !tbaa !499 ; 3 uses
  %i.am = mul i64 %.pre30, -4417276706812531889   ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 31)
  %i.ao = mul i64 %i.an, -7046029288634856825
  %i.ap = xor i64 %i.ao, 2870177450012600269      ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 27)
  %i.ar = mul i64 %i.aq, -7046029288634856825
  %i.as = add i64 %i.ar, -8796714831421723037     ; 2 uses
  %i.at = lshr i64 %i.as, 33
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, -4417276706812531889     ; 2 uses
  %i.aw = lshr i64 %i.av, 29
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, 1609587929392839161      ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %i.ay                    ; 3 uses
  %i.bb = xor i32 %i.ag, -1
  %i.bc = add i32 %i.ae, %i.bb                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bc, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %i.bc, 15
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.be, 12
  %n.vec = and i64 %i.be, 8589934576              ; 4 uses
  %i.bf = add nsw i64 %n.vec, %i.al
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre33, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat, ptr %i.bh, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat, ptr %i.bi, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1002

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vec.epilog.ph, !prof !590

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.be, 8589934588            ; 3 uses
  %i.bk = add nsw i64 %n.vec40, %i.al
  %broadcast.splatinsert41 = insertelement <4 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat42 = shufflevector <4 x i64> %broadcast.splatinsert41, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep47 = getelementptr [8 x i8], ptr %.pre33, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %gep48 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %index43
  store <4 x i64> %broadcast.splat42, ptr %gep48, align 8, !tbaa !122
  %index.next44 = add nuw i64 %index43, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1003

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.be, %n.vec40
  br i1 %cmp.n45, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit18.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.pre33, i64 %indvars.iv
  store i64 %i.ba, ptr %i.bm, align 8, !tbaa !122
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18, !llvm.loop !1004

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !528   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !750
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !752
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1005
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !1007
  store i8 1, ptr %3, align 8, !tbaa !1008
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !1010
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS4_20ConstantVectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull byval(%class.anon.949) align 8 %2, ptr noundef nonnull byval(%class.anon.950) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS4_20ConstantVectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.949) align 8 %2, ptr noundef byval(%class.anon.950) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1005, !range !60, !noundef !61
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1007
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !122
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !991 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre35.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !992
  %.pre36.i = load i64, ptr %.pre35.i, align 8, !tbaa !973, !noalias !1011
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !999
  %.phi.trans.insert39.i = getelementptr inbounds nuw i8, ptr %.pre38.i, i64 16
  %.pre40.i = load ptr, ptr %.phi.trans.insert39.i, align 8, !tbaa !1000
  %.pre41.i = load ptr, ptr %.pre40.i, align 8, !tbaa !499
  %i.ac = mul i64 %.pre36.i, -4417276706812531889 ; 2 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 31)
  %i.ae = mul i64 %i.ad, -7046029288634856825
  %i.af = xor i64 %i.ae, 2870177450012600269      ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 27)
  %i.ah = mul i64 %i.ag, -7046029288634856825
  %i.ai = add i64 %i.ah, -8796714831421723037     ; 2 uses
  %i.aj = lshr i64 %i.ai, 33
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, -4417276706812531889     ; 2 uses
  %i.am = lshr i64 %i.al, 29
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, 1609587929392839161      ; 2 uses
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = xor i64 %i.ap, %i.ao
  %invariant.gep.i = getelementptr [8 x i8], ptr %.pre41.i, i64 %4
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.034.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i, i1 true)
  %i.as = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ar
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !122
  %i.at = add nsw i64 %.034.i, -1
  %i.au = and i64 %i.at, %.034.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, !llvm.loop !1014

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !1005, !range !60, !noundef !61
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1007
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !122
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bm, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %5 = sext i32 %i.bo to i64
  %.pre.i38 = load ptr, ptr %i.bn, align 8, !tbaa !991 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre35.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !992
  %.pre36.i41 = load i64, ptr %.pre35.i40, align 8, !tbaa !973, !noalias !1015
  %.phi.trans.insert37.i42 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %.pre38.i43 = load ptr, ptr %.phi.trans.insert37.i42, align 8, !tbaa !999
  %.phi.trans.insert39.i44 = getelementptr inbounds nuw i8, ptr %.pre38.i43, i64 16
  %.pre40.i45 = load ptr, ptr %.phi.trans.insert39.i44, align 8, !tbaa !1000
  %.pre41.i46 = load ptr, ptr %.pre40.i45, align 8, !tbaa !499
  %i.bp = mul i64 %.pre36.i41, -4417276706812531889 ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31)
  %i.br = mul i64 %i.bq, -7046029288634856825
  %i.bs = xor i64 %i.br, 2870177450012600269      ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 27)
  %i.bu = mul i64 %i.bt, -7046029288634856825
  %i.bv = add i64 %i.bu, -8796714831421723037     ; 2 uses
  %i.bw = lshr i64 %i.bv, 33
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -4417276706812531889     ; 2 uses
  %i.bz = lshr i64 %i.by, 29
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, 1609587929392839161      ; 2 uses
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = xor i64 %i.cc, %i.cb
  %invariant.gep.i47 = getelementptr [8 x i8], ptr %.pre41.i46, i64 %5
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i47

_ZN8facebook5velox6StatusD2Ev.exit24.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i47, %.preheader.i37
  %.034.i48 = phi i64 [ %i.bm, %.preheader.i37 ], [ %i.ch, %_ZN8facebook5velox6StatusD2Ev.exit24.i47 ] ; 3 uses
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i48, i1 true)
  %i.cf = getelementptr [8 x i8], ptr %invariant.gep.i47, i64 %i.ce
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !122
  %i.cg = add i64 %.034.i48, -1
  %i.ch = and i64 %i.cg, %.034.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ch, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit24.i47, !llvm.loop !1014

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i47, %bb.e, %bb.d
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, %.lr.ph
  %i.cj = phi i32 [ %i.cl, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50 ] ; 2 uses
  %.069 = phi i32 [ %i.cj, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50 ]
  %i.ck = sdiv i32 %.069, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ck)
  %i.cl = add nsw i32 %i.cj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cl, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1018

bb.f:                                             ; preds = %._crit_edge
  %i.cm = ashr i32 %1, 6
  %i.cn = and i32 %1, 63
  %i.co = zext nneg i32 %i.cn to i64
  %notmask.i51 = shl nsw i64 -1, %i.co
  %i.cp = xor i64 %notmask.i51, -1
  %i.cq = load i8, ptr %2, align 8, !tbaa !1005, !range !60, !noundef !61
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1007
  %i.ct = sext i32 %i.cm to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !122
  %i.cw = xor i8 %i.cq, 1
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = and i64 %i.cz, %i.cp                    ; 2 uses
  %.not.i52 = icmp eq i64 %i.da, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i53

.preheader.i53:                                   ; preds = %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = sext i32 %i.d to i64
  %.pre.i54 = load ptr, ptr %i.db, align 8, !tbaa !991 ; 2 uses
  %.phi.trans.insert.i55 = getelementptr inbounds nuw i8, ptr %.pre.i54, i64 8
  %.pre35.i56 = load ptr, ptr %.phi.trans.insert.i55, align 8, !tbaa !992
  %.pre36.i57 = load i64, ptr %.pre35.i56, align 8, !tbaa !973, !noalias !1019
  %.phi.trans.insert37.i58 = getelementptr inbounds nuw i8, ptr %.pre.i54, i64 24
  %.pre38.i59 = load ptr, ptr %.phi.trans.insert37.i58, align 8, !tbaa !999
  %.phi.trans.insert39.i60 = getelementptr inbounds nuw i8, ptr %.pre38.i59, i64 16
  %.pre40.i61 = load ptr, ptr %.phi.trans.insert39.i60, align 8, !tbaa !1000
  %.pre41.i62 = load ptr, ptr %.pre40.i61, align 8, !tbaa !499
  %i.dc = mul i64 %.pre36.i57, -4417276706812531889 ; 2 uses
  %i.dd = call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 31)
  %i.de = mul i64 %i.dd, -7046029288634856825
  %i.df = xor i64 %i.de, 2870177450012600269      ; 2 uses
  %i.dg = call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 27)
  %i.dh = mul i64 %i.dg, -7046029288634856825
  %i.di = add i64 %i.dh, -8796714831421723037     ; 2 uses
  %i.dj = lshr i64 %i.di, 33
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = mul i64 %i.dk, -4417276706812531889     ; 2 uses
  %i.dm = lshr i64 %i.dl, 29
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = mul i64 %i.dn, 1609587929392839161      ; 2 uses
  %i.dp = lshr i64 %i.do, 32
  %i.dq = xor i64 %i.dp, %i.do
  %invariant.gep.i65 = getelementptr [8 x i8], ptr %.pre41.i62, i64 %6
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i63

_ZN8facebook5velox6StatusD2Ev.exit24.i63:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i63, %.preheader.i53
  %.034.i64 = phi i64 [ %i.da, %.preheader.i53 ], [ %i.du, %_ZN8facebook5velox6StatusD2Ev.exit24.i63 ] ; 3 uses
  %i.dr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i64, i1 true)
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep.i65, i64 %i.dr
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !122
  %i.dt = add nsw i64 %.034.i64, -1
  %i.du = and i64 %i.dt, %.034.i64                ; 2 uses
  %.not10.i65 = icmp eq i64 %i.du, 0
  br i1 %.not10.i65, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63, !llvm.loop !1014

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i63, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_20ConstantVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1008, !range !60, !noundef !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !122
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_20ConstantVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_20ConstantVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %2 = sext i32 %i.l to i64
  %.pre90 = load ptr, ptr %i.k, align 8, !tbaa !991 ; 2 uses
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %.pre90, i64 8
  %.pre92 = load ptr, ptr %.phi.trans.insert91, align 8, !tbaa !992
  %.pre93 = load i64, ptr %.pre92, align 8, !tbaa !973, !noalias !1022
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %.pre90, i64 24
  %.pre95 = load ptr, ptr %.phi.trans.insert94, align 8, !tbaa !999
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %.pre95, i64 16
  %.pre97 = load ptr, ptr %.phi.trans.insert96, align 8, !tbaa !1000
  %.pre98 = load ptr, ptr %.pre97, align 8, !tbaa !499
  %i.m = mul i64 %.pre93, -4417276706812531889    ; 2 uses
  %i.n = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 31)
  %i.o = mul i64 %i.n, -7046029288634856825
  %i.p = xor i64 %i.o, 2870177450012600269        ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 27)
  %i.r = mul i64 %i.q, -7046029288634856825
  %i.s = add i64 %i.r, -8796714831421723037       ; 2 uses
  %i.t = lshr i64 %i.s, 33
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4417276706812531889       ; 2 uses
  %i.w = lshr i64 %i.v, 29
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 1609587929392839161        ; 2 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = xor i64 %i.z, %i.y
  %invariant.gep = getelementptr [8 x i8], ptr %.pre98, i64 %2
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

bb.b:                                             ; preds = %bb.a
  %i.ab = shl i32 %1, 6                           ; 3 uses
  %i.ac = add i32 %i.ab, 64
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %.not81 = icmp eq i32 %i.ab, -64
  br i1 %.not81, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.ae = sext i32 %i.ab to i64                   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !991 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre83 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !992
  %.pre84 = load i64, ptr %.pre83, align 8, !tbaa !973, !noalias !1025
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre86 = load ptr, ptr %.phi.trans.insert85, align 8, !tbaa !999
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %.pre86, i64 16
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8, !tbaa !1000
  %.pre89 = load ptr, ptr %.pre88, align 8, !tbaa !499 ; 3 uses
  %i.ag = mul i64 %.pre84, -4417276706812531889   ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 31)
  %i.ai = mul i64 %i.ah, -7046029288634856825
  %i.aj = xor i64 %i.ai, 2870177450012600269      ; 2 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 27)
  %i.al = mul i64 %i.ak, -7046029288634856825
  %i.am = add i64 %i.al, -8796714831421723037     ; 2 uses
  %i.an = lshr i64 %i.am, 33
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = mul i64 %i.ao, -4417276706812531889     ; 2 uses
  %i.aq = lshr i64 %i.ap, 29
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 1609587929392839161      ; 2 uses
  %i.at = lshr i64 %i.as, 32
  %i.au = xor i64 %i.at, %i.as                    ; 2 uses
  %i.av = or disjoint i64 %i.ae, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.ad) ; 2 uses
  %i.aw = sub i64 %umax, %i.ae                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i64 %i.aw, 16
  %n.mod.vf104 = and i64 %umax, 1                 ; 3 uses
  %n.vec105 = sub nuw i64 %i.aw, %n.mod.vf104     ; 3 uses
  %i.ax = add i64 %n.vec105, %i.ae                ; 2 uses
  %broadcast.splatinsert106 = insertelement <4 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat107 = shufflevector <4 x i64> %broadcast.splatinsert106, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check103, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep.a = getelementptr [8 x i8], ptr %.pre89, i64 %i.ae
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep113 = getelementptr [8 x i8], ptr %.pre89, i64 %i.ae
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep.a = getelementptr [8 x i8], ptr %invariant.gep.a, i64 %index ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %gep.a, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %gep.a, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %gep.a, i64 96
  store <4 x i64> %broadcast.splat107, ptr %gep.a, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat107, ptr %i.ay, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat107, ptr %i.az, align 8, !tbaa !122
  store <4 x i64> %broadcast.splat107, ptr %i.ba, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec105
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf104, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit38.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index108 = phi i64 [ %index.next109, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index108
  store <4 x i64> %broadcast.splat107, ptr %gep114, align 8, !tbaa !122
  %index.next109 = add nuw i64 %index108, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1029

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n110 = icmp eq i64 %n.mod.vf104, 0
  br i1 %cmp.n110, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit38.preheader

_ZN8facebook5velox6StatusD2Ev.exit38.preheader:   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.080.ph = phi i64 [ %i.ax, %middle.block ], [ %i.ae, %iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit38

_ZN8facebook5velox6StatusD2Ev.exit38:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.preheader, %_ZN8facebook5velox6StatusD2Ev.exit38
  %.080 = phi i64 [ %i.be, %_ZN8facebook5velox6StatusD2Ev.exit38 ], [ %.080.ph, %_ZN8facebook5velox6StatusD2Ev.exit38.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre89, i64 %.080
  store i64 %i.au, ptr %i.bd, align 8, !tbaa !122
  %i.be = add nuw i64 %.080, 1                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.ad
  br i1 %i.bf, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.loopexit, !llvm.loop !1030

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_20ConstantVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01579 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_20ConstantVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.bj, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.bg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579, i1 true)
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bg
  store i64 %i.aa, ptr %i.bh, align 8, !tbaa !122
  %i.bi = add i64 %.01579, -1
  %i.bj = and i64 %i.bi, %.01579                  ; 2 uses
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit58, !llvm.loop !1031

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38, %_ZN8facebook5velox6StatusD2Ev.exit58, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.974) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.975, align 8            ; 6 uses
  %3 = alloca %class.anon.976, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !749, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !34, !range !60
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !750
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !752  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !753
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !528    ; 2 uses
  %.not.i.i6 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i32.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i32.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i33, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !754

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i33, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !122
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !754

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !122
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !752 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !750 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1032, !nonnull !61, !align !183 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 3 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1033
  %.pre26 = load ptr, ptr %.pre, align 8, !tbaa !983, !noalias !1036 ; 2 uses
  %.pre27 = load ptr, ptr %i.ak, align 8, !tbaa !1039
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre27, i64 16
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1040
  %.pre29 = load ptr, ptr %.pre28, align 8, !tbaa !499 ; 2 uses
  %i.am = xor i32 %i.ag, -1
  %i.an = add i32 %i.ae, %i.am                    ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %n.vec = and i64 %i.ap, 8589934588              ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add i64 %index, %i.al                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.pre26, i64 %i.ar
  %wide.load = load <4 x i64>, ptr %i.as, align 8, !tbaa !973, !noalias !1036
  %i.at = mul <4 x i64> %wide.load, splat (i64 -4417276706812531889) ; 2 uses
  %i.au = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.at, <4 x i64> %i.at, <4 x i64> splat (i64 31))
  %i.av = mul <4 x i64> %i.au, splat (i64 -7046029288634856825)
  %i.aw = xor <4 x i64> %i.av, splat (i64 2870177450012600269) ; 2 uses
  %i.ax = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.aw, <4 x i64> %i.aw, <4 x i64> splat (i64 27))
  %i.ay = mul <4 x i64> %i.ax, splat (i64 -7046029288634856825)
  %i.az = add <4 x i64> %i.ay, splat (i64 -8796714831421723037) ; 2 uses
  %i.ba = lshr <4 x i64> %i.az, splat (i64 33)
  %i.bb = xor <4 x i64> %i.ba, %i.az
  %i.bc = mul <4 x i64> %i.bb, splat (i64 -4417276706812531889) ; 2 uses
  %i.bd = lshr <4 x i64> %i.bc, splat (i64 29)
  %i.be = xor <4 x i64> %i.bd, %i.bc
  %i.bf = mul <4 x i64> %i.be, splat (i64 1609587929392839161) ; 2 uses
  %i.bg = lshr <4 x i64> %i.bf, splat (i64 32)
  %i.bh = xor <4 x i64> %i.bg, %i.bf
  %i.bi = getelementptr inbounds [8 x i8], ptr %.pre29, i64 %i.ar
  store <4 x i64> %i.bh, ptr %i.bi, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1042

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.preheader:   ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.aq, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.pre26, i64 %indvars.iv
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !973, !noalias !1036
  %i.bm = mul i64 %i.bl, -4417276706812531889     ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 31)
  %i.bo = mul i64 %i.bn, -7046029288634856825
  %i.bp = xor i64 %i.bo, 2870177450012600269      ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 27)
  %i.br = mul i64 %i.bq, -7046029288634856825
  %i.bs = add i64 %i.br, -8796714831421723037     ; 2 uses
  %i.bt = lshr i64 %i.bs, 33
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, -4417276706812531889     ; 2 uses
  %i.bw = lshr i64 %i.bv, 29
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, 1609587929392839161      ; 2 uses
  %i.bz = lshr i64 %i.by, 32
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = getelementptr inbounds [8 x i8], ptr %.pre29, i64 %indvars.iv
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !122
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14, !llvm.loop !1043

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !528   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !750
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !752
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1044
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !1046
  store i8 1, ptr %3, align 8, !tbaa !1047
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !1049
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS4_16FlatVectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull byval(%class.anon.975) align 8 %2, ptr noundef nonnull byval(%class.anon.976) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS4_16FlatVectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.975) align 8 %2, ptr noundef byval(%class.anon.976) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1044, !range !60, !noundef !61
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1046
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !122
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1032 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre31.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1033
  %.pre32.i = load ptr, ptr %.pre31.i, align 8, !tbaa !983, !noalias !1050
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !tbaa !1039
  %.phi.trans.insert35.i = getelementptr inbounds nuw i8, ptr %.pre34.i, i64 16
  %.pre36.i = load ptr, ptr %.phi.trans.insert35.i, align 8, !tbaa !1040
  %.pre37.i = load ptr, ptr %.pre36.i, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %5 = or disjoint i64 %i.ac, %4                  ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.pre32.i, i64 %5
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !973, !noalias !1050
  %i.af = mul i64 %i.ae, -4417276706812531889     ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 31)
  %i.ah = mul i64 %i.ag, -7046029288634856825
  %i.ai = xor i64 %i.ah, 2870177450012600269      ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 27)
  %i.ak = mul i64 %i.aj, -7046029288634856825
  %i.al = add i64 %i.ak, -8796714831421723037     ; 2 uses
  %i.am = lshr i64 %i.al, 33
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -4417276706812531889     ; 2 uses
  %i.ap = lshr i64 %i.ao, 29
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = mul i64 %i.aq, 1609587929392839161      ; 2 uses
  %i.as = lshr i64 %i.ar, 32
  %i.at = xor i64 %i.as, %i.ar
  %i.au = getelementptr inbounds [8 x i8], ptr %.pre37.i, i64 %5
  store i64 %i.at, ptr %i.au, align 8, !tbaa !122
  %i.av = add nsw i64 %.030.i, -1
  %i.aw = and i64 %i.av, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1053

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = sdiv i32 %0, 64                         ; 2 uses
  %i.ay = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i35, -1
  %i.bb = sub nsw i32 64, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = load i8, ptr %2, align 8, !tbaa !1044, !range !60, !noundef !61
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1046
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !122
  %i.bk = xor i8 %i.be, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = xor i64 %i.bj, %i.bm
  %i.bo = and i64 %i.bn, %i.bd                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bo, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = shl nsw i32 %i.ax, 6
  %6 = sext i32 %i.bq to i64
  %.pre.i38 = load ptr, ptr %i.bp, align 8, !tbaa !1032 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %.pre31.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !1033
  %.pre32.i41 = load ptr, ptr %.pre31.i40, align 8, !tbaa !983, !noalias !1054
  %.phi.trans.insert33.i42 = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %.pre34.i43 = load ptr, ptr %.phi.trans.insert33.i42, align 8, !tbaa !1039
  %.phi.trans.insert35.i44 = getelementptr inbounds nuw i8, ptr %.pre34.i43, i64 16
  %.pre36.i45 = load ptr, ptr %.phi.trans.insert35.i44, align 8, !tbaa !1040
  %.pre37.i46 = load ptr, ptr %.pre36.i45, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i47

_ZN8facebook5velox6StatusD2Ev.exit20.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %.preheader.i37
  %.030.i48 = phi i64 [ %i.bo, %.preheader.i37 ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit20.i47 ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i48, i1 true)
  %7 = or disjoint i64 %i.br, %6                  ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %.pre32.i41, i64 %7
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !973, !noalias !1054
  %i.bu = mul i64 %i.bt, -4417276706812531889     ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 31)
  %i.bw = mul i64 %i.bv, -7046029288634856825
  %i.bx = xor i64 %i.bw, 2870177450012600269      ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 27)
  %i.bz = mul i64 %i.by, -7046029288634856825
  %i.ca = add i64 %i.bz, -8796714831421723037     ; 2 uses
  %i.cb = lshr i64 %i.ca, 33
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -4417276706812531889     ; 2 uses
  %i.ce = lshr i64 %i.cd, 29
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, 1609587929392839161      ; 2 uses
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %.pre37.i46, i64 %7
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !122
  %i.ck = add i64 %.030.i48, -1
  %i.cl = and i64 %i.ck, %.030.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, label %_ZN8facebook5velox6StatusD2Ev.exit20.i47, !llvm.loop !1053

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %bb.e, %bb.d
  %i.cm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3368 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not3368, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50, %.lr.ph
  %i.cn = phi i32 [ %i.cp, %.lr.ph ], [ %i.cm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50 ] ; 2 uses
  %.069 = phi i32 [ %i.cn, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit50 ]
  %i.co = sdiv i32 %.069, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.co)
  %i.cp = add nsw i32 %i.cn, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cp, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1057

bb.f:                                             ; preds = %._crit_edge
  %i.cq = ashr i32 %1, 6
  %i.cr = and i32 %1, 63
  %i.cs = zext nneg i32 %i.cr to i64
  %notmask.i51 = shl nsw i64 -1, %i.cs
  %i.ct = xor i64 %notmask.i51, -1
  %i.cu = load i8, ptr %2, align 8, !tbaa !1044, !range !60, !noundef !61
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = sext i32 %i.cq to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !122
  %i.da = xor i8 %i.cu, 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = xor i64 %i.cz, %i.dc
  %i.de = and i64 %i.dd, %i.ct                    ; 2 uses
  %.not.i52 = icmp eq i64 %i.de, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i53

.preheader.i53:                                   ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %8 = sext i32 %i.d to i64
  %.pre.i54 = load ptr, ptr %i.df, align 8, !tbaa !1032 ; 2 uses
  %.phi.trans.insert.i55 = getelementptr inbounds nuw i8, ptr %.pre.i54, i64 8
  %.pre31.i56 = load ptr, ptr %.phi.trans.insert.i55, align 8, !tbaa !1033
  %.pre32.i57 = load ptr, ptr %.pre31.i56, align 8, !tbaa !983, !noalias !1058
  %.phi.trans.insert33.i58 = getelementptr inbounds nuw i8, ptr %.pre.i54, i64 24
  %.pre34.i59 = load ptr, ptr %.phi.trans.insert33.i58, align 8, !tbaa !1039
  %.phi.trans.insert35.i60 = getelementptr inbounds nuw i8, ptr %.pre34.i59, i64 16
  %.pre36.i61 = load ptr, ptr %.phi.trans.insert35.i60, align 8, !tbaa !1040
  %.pre37.i62 = load ptr, ptr %.pre36.i61, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i63

_ZN8facebook5velox6StatusD2Ev.exit20.i63:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i63, %.preheader.i53
  %.030.i64 = phi i64 [ %i.de, %.preheader.i53 ], [ %i.ea, %_ZN8facebook5velox6StatusD2Ev.exit20.i63 ] ; 3 uses
  %i.dg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i64, i1 true)
  %9 = or disjoint i64 %i.dg, %8                  ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %.pre32.i57, i64 %9
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !973, !noalias !1058
  %i.dj = mul i64 %i.di, -4417276706812531889     ; 2 uses
  %i.dk = call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 31)
  %i.dl = mul i64 %i.dk, -7046029288634856825
  %i.dm = xor i64 %i.dl, 2870177450012600269      ; 2 uses
  %i.dn = call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 27)
  %i.do = mul i64 %i.dn, -7046029288634856825
  %i.dp = add i64 %i.do, -8796714831421723037     ; 2 uses
  %i.dq = lshr i64 %i.dp, 33
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = mul i64 %i.dr, -4417276706812531889     ; 2 uses
  %i.dt = lshr i64 %i.ds, 29
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = mul i64 %i.du, 1609587929392839161      ; 2 uses
  %i.dw = lshr i64 %i.dv, 32
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = getelementptr inbounds [8 x i8], ptr %.pre37.i62, i64 %9
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !122
  %i.dz = add nsw i64 %.030.i64, -1
  %i.ea = and i64 %i.dz, %.030.i64                ; 2 uses
  %.not10.i65 = icmp eq i64 %i.ea, 0
  br i1 %.not10.i65, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i63, !llvm.loop !1053

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i63, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_16FlatVectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1047, !range !60, !noundef !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1049
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !122
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %2 = sext i32 %i.l to i64
  %.pre86 = load ptr, ptr %i.k, align 8, !tbaa !1032 ; 2 uses
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %.pre86, i64 8
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8, !tbaa !1033
  %.pre89 = load ptr, ptr %.pre88, align 8, !tbaa !983, !noalias !1061
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %.pre86, i64 24
  %.pre91 = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !1039
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %.pre91, i64 16
  %.pre93 = load ptr, ptr %.phi.trans.insert92, align 8, !tbaa !1040
  %.pre94 = load ptr, ptr %.pre93, align 8, !tbaa !499
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %1, 6                            ; 4 uses
  %i.n = add i32 %i.m, 64
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %.not77 = icmp eq i32 %i.m, -64
  br i1 %.not77, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph: ; preds = %bb.b
  %i.p = sext i32 %i.m to i64                     ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !1032 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre79 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1033
  %.pre80 = load ptr, ptr %.pre79, align 8, !tbaa !983, !noalias !1064 ; 2 uses
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !1039
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %.pre82, i64 16
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !1040
  %.pre85 = load ptr, ptr %.pre84, align 8, !tbaa !499 ; 2 uses
  %i.r = or disjoint i64 %i.p, 1
  %umax100 = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.o) ; 2 uses
  %i.s = sub i64 %umax100, %i.p                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit34.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph
  %i.t = or disjoint i64 %i.p, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.o)
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %umax, %i.u                      ; 2 uses
  %i.w = sext i32 %i.m to i35                     ; 2 uses
  %i.x = shl nsw i35 %i.w, 3
  %i.y = trunc i64 %i.v to i35
  %i.z = add i35 %i.w, %i.y
  %i.aa = shl i35 %i.z, 3
  %i.ab = icmp slt i35 %i.aa, %i.x
  %i.ac = icmp ugt i64 %i.v, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN8facebook5velox6StatusD2Ev.exit34.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %umax100, 1                 ; 2 uses
  %n.vec = sub i64 %i.s, %n.mod.vf                ; 2 uses
  %i.ae = add i64 %n.vec, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %index, %i.p                    ; 2 uses
  %i.ag = shl i64 %i.af, 32
  %i.ah = ashr exact i64 %i.ag, 29
  %i.ai = getelementptr inbounds i8, ptr %.pre80, i64 %i.ah
  %wide.load = load <4 x i64>, ptr %i.ai, align 8, !tbaa !973, !noalias !1064
  %i.aj = mul <4 x i64> %wide.load, splat (i64 -4417276706812531889) ; 2 uses
  %i.ak = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.aj, <4 x i64> %i.aj, <4 x i64> splat (i64 31))
  %i.al = mul <4 x i64> %i.ak, splat (i64 -7046029288634856825)
  %i.am = xor <4 x i64> %i.al, splat (i64 2870177450012600269) ; 2 uses
  %i.an = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.am, <4 x i64> %i.am, <4 x i64> splat (i64 27))
  %i.ao = mul <4 x i64> %i.an, splat (i64 -7046029288634856825)
  %i.ap = add <4 x i64> %i.ao, splat (i64 -8796714831421723037) ; 2 uses
  %i.aq = lshr <4 x i64> %i.ap, splat (i64 33)
  %i.ar = xor <4 x i64> %i.aq, %i.ap
  %i.as = mul <4 x i64> %i.ar, splat (i64 -4417276706812531889) ; 2 uses
  %i.at = lshr <4 x i64> %i.as, splat (i64 29)
  %i.au = xor <4 x i64> %i.at, %i.as
  %i.av = mul <4 x i64> %i.au, splat (i64 1609587929392839161) ; 2 uses
  %i.aw = lshr <4 x i64> %i.av, splat (i64 32)
  %i.ax = xor <4 x i64> %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %i.af
  store <4 x i64> %i.ax, ptr %i.ay, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1067

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit34.preheader

_ZN8facebook5velox6StatusD2Ev.exit34.preheader:   ; preds = %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph, %middle.block
  %.076.ph = phi i64 [ %i.p, %vector.scevcheck ], [ %i.p, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph ], [ %i.ae, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit34

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.preheader, %_ZN8facebook5velox6StatusD2Ev.exit34
  %.076 = phi i64 [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit34 ], [ %.076.ph, %_ZN8facebook5velox6StatusD2Ev.exit34.preheader ] ; 3 uses
  %sext = shl i64 %.076, 32
  %i.ba = ashr exact i64 %sext, 29
  %i.bb = getelementptr inbounds i8, ptr %.pre80, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !973, !noalias !1064
  %i.bd = mul i64 %i.bc, -4417276706812531889     ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 31)
  %i.bf = mul i64 %i.be, -7046029288634856825
  %i.bg = xor i64 %i.bf, 2870177450012600269      ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 27)
  %i.bi = mul i64 %i.bh, -7046029288634856825
  %i.bj = add i64 %i.bi, -8796714831421723037     ; 2 uses
  %i.bk = lshr i64 %i.bj, 33
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, -4417276706812531889     ; 2 uses
  %i.bn = lshr i64 %i.bm, 29
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bo, 1609587929392839161      ; 2 uses
  %i.bq = lshr i64 %i.bp, 32
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre85, i64 %.076
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !122
  %i.bt = add nuw i64 %.076, 1                    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.o
  br i1 %i.bu, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.loopexit, !llvm.loop !1068

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01575 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS1_16FlatVectorReaderIdEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.cp, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575, i1 true)
  %3 = or disjoint i64 %i.bv, %2                  ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.pre89, i64 %3
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !973, !noalias !1061
  %i.by = mul i64 %i.bx, -4417276706812531889     ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 31)
  %i.ca = mul i64 %i.bz, -7046029288634856825
  %i.cb = xor i64 %i.ca, 2870177450012600269      ; 2 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 27)
  %i.cd = mul i64 %i.cc, -7046029288634856825
  %i.ce = add i64 %i.cd, -8796714831421723037     ; 2 uses
  %i.cf = lshr i64 %i.ce, 33
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = mul i64 %i.cg, -4417276706812531889     ; 2 uses
  %i.ci = lshr i64 %i.ch, 29
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, 1609587929392839161      ; 2 uses
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = getelementptr inbounds [8 x i8], ptr %.pre94, i64 %3
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !122
  %i.co = add i64 %.01575, -1
  %i.cp = and i64 %i.co, %.01575                  ; 2 uses
  %.not = icmp eq i64 %i.cp, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit54, !llvm.loop !1069

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34, %_ZN8facebook5velox6StatusD2Ev.exit54, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS3_12VectorReaderIdEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1001) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1002, align 8           ; 6 uses
  %3 = alloca %class.anon.1003, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !749, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !34, !range !60
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !750
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !752  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !753
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !528    ; 2 uses
  %.not.i.i6 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i32.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i32.not, label %.critedge.i.i.i, label %.lr.ph34

bb.f:                                             ; preds = %.lr.ph34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i33, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph34, label %.critedge.i.i.i, !llvm.loop !754

.lr.ph34:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i33, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !122
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !754

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !122
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph34, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph34 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !752 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !750 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1070, !nonnull !61, !align !183 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !1071
  %.pre26 = load ptr, ptr %.pre, align 8, !tbaa !1074, !noalias !1076 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre26, i64 16
  %.pre27 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !877, !noalias !1076
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %.pre26, i64 58
  %.pre29 = load i8, ptr %.phi.trans.insert28, align 2, !tbaa !878, !range !60, !noalias !1076
  %i.am = trunc nuw i8 %.pre29 to i1
  %i.an = getelementptr inbounds nuw i8, ptr %.pre26, i64 59
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre26, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre26, i64 64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !1079, !nonnull !61, !align !183
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1080, !nonnull !61, !align !183
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !499
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ] ; 4 uses
  %i.au = trunc nsw i64 %indvars.iv to i32
  br i1 %i.am, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.an, align 1, !tbaa !882, !range !60, !noalias !1076, !noundef !61
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !883, !noalias !1076
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

bb.l:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !884, !noalias !1076
  %i.az = shl nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !1076
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.ax, %bb.k ], [ %i.au, %bb.i ]
  %i.bc = sext i32 %.0.i.i.i to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.pre27, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !973, !noalias !1076
  %i.bf = mul i64 %i.be, -4417276706812531889     ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 31)
  %i.bh = mul i64 %i.bg, -7046029288634856825
  %i.bi = xor i64 %i.bh, 2870177450012600269      ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 27)
  %i.bk = mul i64 %i.bj, -7046029288634856825
  %i.bl = add i64 %i.bk, -8796714831421723037     ; 2 uses
  %i.bm = lshr i64 %i.bl, 33
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, -4417276706812531889     ; 2 uses
  %i.bp = lshr i64 %i.bo, 29
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, 1609587929392839161      ; 2 uses
  %i.bs = lshr i64 %i.br, 32
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !122
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1082

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !528   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !750
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !752
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1083
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bv, ptr %i.cc, align 8, !tbaa !1085
  store i8 1, ptr %3, align 8, !tbaa !1086
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bv, ptr %i.cd, align 8, !tbaa !1088
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS4_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.bx, i32 noundef %i.bz, ptr noundef nonnull byval(%class.anon.1002) align 8 %2, ptr noundef nonnull byval(%class.anon.1003) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64DoubleFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJdEEEJdEEEE7iterateIJNS4_12VectorReaderIdEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1002) align 8 %2, ptr noundef byval(%class.anon.1003) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
end_hunk_1
