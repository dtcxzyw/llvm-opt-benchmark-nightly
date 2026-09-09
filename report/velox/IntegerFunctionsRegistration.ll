Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IntegerFunctionsRegistration?download=true
inline.NumInlined: 10881
inline.NumDeleted: 3611
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 32)
  %i.br = xor <4 x i64> %i.bq, %i.bp              ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ao, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %i.br, ptr %gep, align 8, !tbaa !126, !alias.scope !1080, !noalias !1078
  store <4 x i64> %i.br, ptr %i.bs, align 8, !tbaa !126, !alias.scope !1080, !noalias !1078
  store <4 x i64> %i.br, ptr %i.bt, align 8, !tbaa !126, !alias.scope !1080, !noalias !1078
  store <4 x i64> %i.br, ptr %i.bu, align 8, !tbaa !126, !alias.scope !1080, !noalias !1078
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vec.epilog.ph, !prof !440

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.as, 8589934590            ; 3 uses
  %i.bw = add nsw i64 %n.vec38, %i.al
  %i.bx = load i64, ptr %.pre, align 8, !tbaa !126, !alias.scope !1078, !noalias !1079
  %i.by = mul i64 %i.bx, -4417276706812531889
  %broadcast.splatinsert39 = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat40 = shufflevector <2 x i64> %broadcast.splatinsert39, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %broadcast.splat40, <2 x i64> %broadcast.splat40, <2 x i64> splat (i64 31))
  %i.ca = mul <2 x i64> %i.bz, splat (i64 -7046029288634856825)
  %i.cb = xor <2 x i64> %i.ca, splat (i64 2870177450012600269) ; 2 uses
  %i.cc = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.cb, <2 x i64> %i.cb, <2 x i64> splat (i64 27))
  %i.cd = mul <2 x i64> %i.cc, splat (i64 -7046029288634856825)
  %i.ce = add <2 x i64> %i.cd, splat (i64 -8796714831421723037) ; 2 uses
  %i.cf = lshr <2 x i64> %i.ce, splat (i64 33)
  %i.cg = xor <2 x i64> %i.cf, %i.ce
  %i.ch = mul <2 x i64> %i.cg, splat (i64 -4417276706812531889) ; 2 uses
  %i.ci = lshr <2 x i64> %i.ch, splat (i64 29)
  %i.cj = xor <2 x i64> %i.ci, %i.ch
  %i.ck = mul <2 x i64> %i.cj, splat (i64 1609587929392839161) ; 2 uses
  %i.cl = lshr <2 x i64> %i.ck, splat (i64 32)
  %i.cm = xor <2 x i64> %i.cl, %i.ck
  %invariant.gep45 = getelementptr [8 x i8], ptr %i.ao, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %gep46 = getelementptr [8 x i8], ptr %invariant.gep45, i64 %index41
  store <2 x i64> %i.cm, ptr %gep46, align 8, !tbaa !126, !alias.scope !1080, !noalias !1078
  %index.next42 = add nuw i64 %index41, 2         ; 2 uses
  %i.cn = icmp eq i64 %index.next42, %n.vec38
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1076

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.as, %n.vec38
  br i1 %cmp.n43, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit18.preheader ] ; 2 uses
  %i.co = load i64, ptr %.pre, align 8, !tbaa !126, !noalias !1079
  %i.cp = mul i64 %i.co, -4417276706812531889     ; 2 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 31)
  %i.cr = mul i64 %i.cq, -7046029288634856825
  %i.cs = xor i64 %i.cr, 2870177450012600269      ; 2 uses
  %i.ct = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 27)
  %i.cu = mul i64 %i.ct, -7046029288634856825
  %i.cv = add i64 %i.cu, -8796714831421723037     ; 2 uses
  %i.cw = lshr i64 %i.cv, 33
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = mul i64 %i.cx, -4417276706812531889     ; 2 uses
  %i.cz = lshr i64 %i.cy, 29
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = mul i64 %i.da, 1609587929392839161      ; 2 uses
  %i.dc = lshr i64 %i.db, 32
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18, !llvm.loop !1077

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.df = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !429
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !430
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !442
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.df, ptr %i.dm, align 8, !tbaa !443
  store i8 1, ptr %3, align 8, !tbaa !445
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.df, ptr %i.dn, align 8, !tbaa !446
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.dh, i32 noundef %i.dj, ptr noundef nonnull byval(%class.anon.484) align 8 %2, ptr noundef nonnull byval(%class.anon.485) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.484) align 8 %2, ptr noundef byval(%class.anon.485) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !442, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !443
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !432 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !436, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !437, !nonnull !79, !align !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !439, !nonnull !79, !align !163
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !342
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.aj, i64 %i.ac
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.034.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bc, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i, i1 true)
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1089
  %i.am = mul i64 %i.al, -4417276706812531889     ; 2 uses
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
  %i.ba = xor i64 %i.az, %i.ay
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ak
  store i64 %i.ba, ptr %gep.i, align 8, !tbaa !126
  %i.bb = add nsw i64 %.034.i, -1
  %i.bc = and i64 %i.bb, %.034.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bc, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, !llvm.loop !1083

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = sdiv i32 %0, 64                         ; 2 uses
  %i.be = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bf
  %i.bg = xor i64 %notmask.i.i35, -1
  %i.bh = sub nsw i32 64, %i.be
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl i64 %i.bg, %i.bi
  %i.bk = load i8, ptr %2, align 8, !tbaa !442, !range !78, !noundef !79
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !443
  %i.bn = sext i32 %i.bd to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !126
  %i.bq = xor i8 %i.bk, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = xor i64 %i.bp, %i.bs
  %i.bu = and i64 %i.bt, %i.bj                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bu, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = shl nsw i32 %i.bd, 6
  %i.bx = sext i32 %i.bw to i64
  %.pre.i38 = load ptr, ptr %i.bv, align 8, !tbaa !432 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !436, !nonnull !79, !align !163
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !437, !nonnull !79, !align !163
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !439, !nonnull !79, !align !163
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !342
  %invariant.gep.i39 = getelementptr [8 x i8], ptr %i.ce, i64 %i.bx
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40

_ZN8facebook5velox6StatusD2Ev.exit24.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %.preheader.i37
  %.034.i41 = phi i64 [ %i.bu, %.preheader.i37 ], [ %i.cx, %_ZN8facebook5velox6StatusD2Ev.exit24.i40 ] ; 3 uses
  %i.cf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i41, i1 true)
  %i.cg = load i64, ptr %i.bz, align 8, !tbaa !126, !noalias !1090
  %i.ch = mul i64 %i.cg, -4417276706812531889     ; 2 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 31)
  %i.cj = mul i64 %i.ci, -7046029288634856825
  %i.ck = xor i64 %i.cj, 2870177450012600269      ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 27)
  %i.cm = mul i64 %i.cl, -7046029288634856825
  %i.cn = add i64 %i.cm, -8796714831421723037     ; 2 uses
  %i.co = lshr i64 %i.cn, 33
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = lshr i64 %i.cq, 29
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = mul i64 %i.cs, 1609587929392839161      ; 2 uses
  %i.cu = lshr i64 %i.ct, 32
  %i.cv = xor i64 %i.cu, %i.ct
  %gep.i42 = getelementptr [8 x i8], ptr %invariant.gep.i39, i64 %i.cf
  store i64 %i.cv, ptr %gep.i42, align 8, !tbaa !126
  %i.cw = add i64 %.034.i41, -1
  %i.cx = and i64 %i.cw, %.034.i41                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cx, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40, !llvm.loop !1083

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %bb.e, %bb.d
  %i.cy = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3356 = icmp sgt i32 %i.cy, %i.d
  br i1 %.not3356, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, %.lr.ph
  %i.cz = phi i32 [ %i.db, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ] ; 2 uses
  %.057 = phi i32 [ %i.cz, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ]
  %i.da = sdiv i32 %.057, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.da)
  %i.db = add nsw i32 %i.cz, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.db, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1086

bb.f:                                             ; preds = %._crit_edge
  %i.dc = ashr i32 %1, 6
  %i.dd = and i32 %1, 63
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i45 = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i45, -1
  %i.dg = load i8, ptr %2, align 8, !tbaa !442, !range !78, !noundef !79
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !443
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !126
  %i.dm = xor i8 %i.dg, 1
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = xor i64 %i.dl, %i.do
  %i.dq = and i64 %i.dp, %i.df                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.dq, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.f
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.dr, align 8, !tbaa !432 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !436, !nonnull !79, !align !163
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !437, !nonnull !79, !align !163
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !439, !nonnull !79, !align !163
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !342
  %invariant.gep.i49 = getelementptr [8 x i8], ptr %i.dz, i64 %i.ds
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i50

_ZN8facebook5velox6StatusD2Ev.exit24.i50:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %.preheader.i47
  %.034.i51 = phi i64 [ %i.dq, %.preheader.i47 ], [ %i.es, %_ZN8facebook5velox6StatusD2Ev.exit24.i50 ] ; 3 uses
  %i.ea = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i51, i1 true)
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !126, !noalias !1091
  %i.ec = mul i64 %i.eb, -4417276706812531889     ; 2 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 31)
  %i.ee = mul i64 %i.ed, -7046029288634856825
  %i.ef = xor i64 %i.ee, 2870177450012600269      ; 2 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 27)
  %i.eh = mul i64 %i.eg, -7046029288634856825
  %i.ei = add i64 %i.eh, -8796714831421723037     ; 2 uses
  %i.ej = lshr i64 %i.ei, 33
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = mul i64 %i.ek, -4417276706812531889     ; 2 uses
  %i.em = lshr i64 %i.el, 29
  %i.en = xor i64 %i.em, %i.el
  %i.eo = mul i64 %i.en, 1609587929392839161      ; 2 uses
  %i.ep = lshr i64 %i.eo, 32
  %i.eq = xor i64 %i.ep, %i.eo
  %gep.i52 = getelementptr [8 x i8], ptr %invariant.gep.i49, i64 %i.ea
  store i64 %i.eq, ptr %gep.i52, align 8, !tbaa !126
  %i.er = add nsw i64 %.034.i51, -1
  %i.es = and i64 %i.er, %.034.i51                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.es, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i50, !llvm.loop !1083

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !445, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre83 = load ptr, ptr %i.k, align 8, !tbaa !432 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre83, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !436, !nonnull !79, !align !163
  %i.p = getelementptr inbounds nuw i8, ptr %.pre83, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !437, !nonnull !79, !align !163
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !439, !nonnull !79, !align !163
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !342
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.m
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

bb.b:                                             ; preds = %bb.a
  %i.u = shl i32 %1, 6                            ; 3 uses
  %i.v = add i32 %i.u, 64
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %.not81 = icmp eq i32 %i.u, -64
  br i1 %.not81, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.x = sext i32 %i.u to i64                     ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !432 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !436, !nonnull !79, !align !163 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !437, !nonnull !79, !align !163
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !439, !nonnull !79, !align !163
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !342 ; 5 uses
  %i.ag = or disjoint i64 %i.x, 1
  %umax90 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.w) ; 2 uses
  %i.ah = sub i64 %umax90, %i.x                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 2
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ai = shl nsw i64 %i.x, 3
  %scevgep = getelementptr nuw i8, ptr %i.af, i64 %i.ai
  %i.aj = or disjoint i64 %i.x, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.w)
  %i.ak = shl nsw i64 %umax, 3
  %scevgep88 = getelementptr i8, ptr %i.af, i64 %i.ak
  %scevgep89 = getelementptr i8, ptr %i.aa, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep89
  %bound1 = icmp ult ptr %i.aa, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check91 = icmp ult i64 %i.ah, 16
  %i.al = and i64 %umax90, 1                      ; 3 uses
  %n.vec92 = sub i64 %i.ah, %i.al                 ; 3 uses
  %i.am = add i64 %n.vec92, %i.x                  ; 2 uses
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !126, !alias.scope !1103, !noalias !1104
  %i.ao = mul i64 %i.an, -4417276706812531889     ; 2 uses
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %broadcast.splat, <4 x i64> %broadcast.splat, <4 x i64> splat (i64 31))
  %i.aq = mul <4 x i64> %i.ap, splat (i64 -7046029288634856825)
  %i.ar = xor <4 x i64> %i.aq, splat (i64 2870177450012600269) ; 2 uses
  %i.as = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ar, <4 x i64> %i.ar, <4 x i64> splat (i64 27))
  %i.at = mul <4 x i64> %i.as, splat (i64 -7046029288634856825)
  %i.au = add <4 x i64> %i.at, splat (i64 -8796714831421723037) ; 2 uses
  %i.av = lshr <4 x i64> %i.au, splat (i64 33)
  %i.aw = xor <4 x i64> %i.av, %i.au
  %i.ax = mul <4 x i64> %i.aw, splat (i64 -4417276706812531889) ; 2 uses
  %i.ay = lshr <4 x i64> %i.ax, splat (i64 29)
  %i.az = xor <4 x i64> %i.ay, %i.ax
  %i.ba = mul <4 x i64> %i.az, splat (i64 1609587929392839161) ; 2 uses
  %i.bb = lshr <4 x i64> %i.ba, splat (i64 32)
  %i.bc = xor <4 x i64> %i.bb, %i.ba              ; 4 uses
  %invariant.gep100 = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep101 = getelementptr [8 x i8], ptr %invariant.gep100, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %gep101, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %gep101, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %gep101, i64 96
  store <4 x i64> %i.bc, ptr %gep101, align 8, !tbaa !126, !alias.scope !1105, !noalias !1103
  store <4 x i64> %i.bc, ptr %i.bd, align 8, !tbaa !126, !alias.scope !1105, !noalias !1103
  store <4 x i64> %i.bc, ptr %i.be, align 8, !tbaa !126, !alias.scope !1105, !noalias !1103
  store <4 x i64> %i.bc, ptr %i.bf, align 8, !tbaa !126, !alias.scope !1105, !noalias !1103
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec92
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert93 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat94 = shufflevector <2 x i64> %broadcast.splatinsert93, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %broadcast.splat94, <2 x i64> %broadcast.splat94, <2 x i64> splat (i64 31))
  %i.bi = mul <2 x i64> %i.bh, splat (i64 -7046029288634856825)
  %i.bj = xor <2 x i64> %i.bi, splat (i64 2870177450012600269) ; 2 uses
  %i.bk = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bj, <2 x i64> %i.bj, <2 x i64> splat (i64 27))
  %i.bl = mul <2 x i64> %i.bk, splat (i64 -7046029288634856825)
  %i.bm = add <2 x i64> %i.bl, splat (i64 -8796714831421723037) ; 2 uses
  %i.bn = lshr <2 x i64> %i.bm, splat (i64 33)
  %i.bo = xor <2 x i64> %i.bn, %i.bm
  %i.bp = mul <2 x i64> %i.bo, splat (i64 -4417276706812531889) ; 2 uses
  %i.bq = lshr <2 x i64> %i.bp, splat (i64 29)
  %i.br = xor <2 x i64> %i.bq, %i.bp
  %i.bs = mul <2 x i64> %i.br, splat (i64 1609587929392839161) ; 2 uses
  %i.bt = lshr <2 x i64> %i.bs, splat (i64 32)
  %i.bu = xor <2 x i64> %i.bt, %i.bs
  %invariant.gep102 = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %gep103 = getelementptr [8 x i8], ptr %invariant.gep102, i64 %index95
  store <2 x i64> %i.bu, ptr %gep103, align 8, !tbaa !126, !alias.scope !1105, !noalias !1103
  %index.next96 = add nuw i64 %index95, 2         ; 2 uses
  %i.bv = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1098

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.al, 0
  br i1 %cmp.n97, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.preheader:   ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.080.ph = phi i64 [ %i.am, %middle.block ], [ %i.x, %vector.memcheck ], [ %i.x, %iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39

_ZN8facebook5velox6StatusD2Ev.exit39:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39
  %.080 = phi i64 [ %i.cn, %_ZN8facebook5velox6StatusD2Ev.exit39 ], [ %.080.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.preheader ] ; 2 uses
  %i.bw = load i64, ptr %i.aa, align 8, !tbaa !126, !noalias !1104
  %i.bx = mul i64 %i.bw, -4417276706812531889     ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31)
  %i.bz = mul i64 %i.by, -7046029288634856825
  %i.ca = xor i64 %i.bz, 2870177450012600269      ; 2 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 27)
  %i.cc = mul i64 %i.cb, -7046029288634856825
  %i.cd = add i64 %i.cc, -8796714831421723037     ; 2 uses
  %i.ce = lshr i64 %i.cd, 33
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, -4417276706812531889     ; 2 uses
  %i.ch = lshr i64 %i.cg, 29
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = mul i64 %i.ci, 1609587929392839161      ; 2 uses
  %i.ck = lshr i64 %i.cj, 32
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.080
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !126
  %i.cn = add nuw i64 %.080, 1                    ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.w
  br i1 %i.co, label %_ZN8facebook5velox6StatusD2Ev.exit39, label %.loopexit, !llvm.loop !1099

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01579 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579, i1 true)
  %i.cq = load i64, ptr %i.o, align 8, !tbaa !126, !noalias !1106
  %i.cr = mul i64 %i.cq, -4417276706812531889     ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 31)
  %i.ct = mul i64 %i.cs, -7046029288634856825
  %i.cu = xor i64 %i.ct, 2870177450012600269      ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 27)
  %i.cw = mul i64 %i.cv, -7046029288634856825
  %i.cx = add i64 %i.cw, -8796714831421723037     ; 2 uses
  %i.cy = lshr i64 %i.cx, 33
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = mul i64 %i.cz, -4417276706812531889     ; 2 uses
  %i.db = lshr i64 %i.da, 29
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !430 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !429 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !447, !nonnull !79, !align !163 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 3 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !450
  %.pre26 = load ptr, ptr %i.ak, align 8, !tbaa !451
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !351, !noalias !1111 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre26, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !453, !nonnull !79, !align !163
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !342 ; 3 uses
  %i.aq = xor i32 %i.ag, -1
  %i.ar = add i32 %i.ae, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  %i.au = ptrtoaddr ptr %i.ap to i64
  %i.av = ptrtoaddr ptr %i.am to i64
  %i.aw = sub i64 %i.av, %i.au
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %n.vec = and i64 %i.at, 8589934588              ; 3 uses
  %i.ax = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add i64 %index, %i.al                   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ay
  %wide.load = load <4 x i64>, ptr %i.az, align 8, !tbaa !126, !noalias !1111
  %i.ba = mul <4 x i64> %wide.load, splat (i64 -4417276706812531889) ; 2 uses
  %i.bb = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ba, <4 x i64> %i.ba, <4 x i64> splat (i64 31))
  %i.bc = mul <4 x i64> %i.bb, splat (i64 -7046029288634856825)
  %i.bd = xor <4 x i64> %i.bc, splat (i64 2870177450012600269) ; 2 uses
  %i.be = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bd, <4 x i64> %i.bd, <4 x i64> splat (i64 27))
  %i.bf = mul <4 x i64> %i.be, splat (i64 -7046029288634856825)
  %i.bg = add <4 x i64> %i.bf, splat (i64 -8796714831421723037) ; 2 uses
  %i.bh = lshr <4 x i64> %i.bg, splat (i64 33)
  %i.bi = xor <4 x i64> %i.bh, %i.bg
  %i.bj = mul <4 x i64> %i.bi, splat (i64 -4417276706812531889) ; 2 uses
  %i.bk = lshr <4 x i64> %i.bj, splat (i64 29)
  %i.bl = xor <4 x i64> %i.bk, %i.bj
  %i.bm = mul <4 x i64> %i.bl, splat (i64 1609587929392839161) ; 2 uses
  %i.bn = lshr <4 x i64> %i.bm, splat (i64 32)
  %i.bo = xor <4 x i64> %i.bn, %i.bm
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ay
  store <4 x i64> %i.bo, ptr %i.bp, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.preheader:   ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.ax, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.preheader ] ; 3 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !126, !noalias !1111
  %i.bt = mul i64 %i.bs, -4417276706812531889     ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 31)
  %i.bv = mul i64 %i.bu, -7046029288634856825
  %i.bw = xor i64 %i.bv, 2870177450012600269      ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 27)
  %i.by = mul i64 %i.bx, -7046029288634856825
  %i.bz = add i64 %i.by, -8796714831421723037     ; 2 uses
  %i.ca = lshr i64 %i.bz, 33
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = mul i64 %i.cb, -4417276706812531889     ; 2 uses
  %i.cd = lshr i64 %i.cc, 29
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = mul i64 %i.ce, 1609587929392839161      ; 2 uses
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14, !llvm.loop !1110

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cj = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !429
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !430
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !455
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cj, ptr %i.cq, align 8, !tbaa !456
  store i8 1, ptr %3, align 8, !tbaa !458
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cj, ptr %i.cr, align 8, !tbaa !459
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cl, i32 noundef %i.cn, ptr noundef nonnull byval(%class.anon.510) align 8 %2, ptr noundef nonnull byval(%class.anon.511) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.510) align 8 %2, ptr noundef byval(%class.anon.511) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !455, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !456
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !447 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !450, !nonnull !79, !align !163
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !351, !noalias !1120
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !451, !nonnull !79, !align !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !453, !nonnull !79, !align !163
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bg, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !126, !noalias !1120
  %i.ap = mul i64 %i.ao, -4417276706812531889     ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 31)
  %i.ar = mul i64 %i.aq, -7046029288634856825
  %i.as = xor i64 %i.ar, 2870177450012600269      ; 2 uses
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 27)
  %i.au = mul i64 %i.at, -7046029288634856825
  %i.av = add i64 %i.au, -8796714831421723037     ; 2 uses
  %i.aw = lshr i64 %i.av, 33
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -4417276706812531889     ; 2 uses
  %i.az = lshr i64 %i.ay, 29
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, 1609587929392839161      ; 2 uses
  %i.bc = lshr i64 %i.bb, 32
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !126
  %i.bf = add nsw i64 %.030.i, -1
  %i.bg = and i64 %i.bf, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bg, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1114

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = sdiv i32 %0, 64                         ; 2 uses
  %i.bi = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bj
  %i.bk = xor i64 %notmask.i.i35, -1
  %i.bl = sub nsw i32 64, %i.bi
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl i64 %i.bk, %i.bm
  %i.bo = load i8, ptr %2, align 8, !tbaa !455, !range !78, !noundef !79
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !456
  %i.br = sext i32 %i.bh to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !126
  %i.bu = xor i8 %i.bo, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = xor i64 %i.bt, %i.bw
  %i.by = and i64 %i.bx, %i.bn                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.by, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = shl nsw i32 %i.bh, 6
  %i.cb = sext i32 %i.ca to i64
  %.pre.i38 = load ptr, ptr %i.bz, align 8, !tbaa !447 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !450, !nonnull !79, !align !163
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !351, !noalias !1121
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !451, !nonnull !79, !align !163
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !453, !nonnull !79, !align !163
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i39

_ZN8facebook5velox6StatusD2Ev.exit20.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %.preheader.i37
  %.030.i40 = phi i64 [ %i.by, %.preheader.i37 ], [ %i.df, %_ZN8facebook5velox6StatusD2Ev.exit20.i39 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i40, i1 true)
  %i.cl = or disjoint i64 %i.ck, %i.cb            ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !126, !noalias !1121
  %i.co = mul i64 %i.cn, -4417276706812531889     ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 31)
  %i.cq = mul i64 %i.cp, -7046029288634856825
  %i.cr = xor i64 %i.cq, 2870177450012600269      ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 27)
  %i.ct = mul i64 %i.cs, -7046029288634856825
  %i.cu = add i64 %i.ct, -8796714831421723037     ; 2 uses
  %i.cv = lshr i64 %i.cu, 33
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, -4417276706812531889     ; 2 uses
  %i.cy = lshr i64 %i.cx, 29
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = mul i64 %i.cz, 1609587929392839161      ; 2 uses
  %i.db = lshr i64 %i.da, 32
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cl
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !126
  %i.de = add i64 %.030.i40, -1
  %i.df = and i64 %i.de, %.030.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.df, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit20.i39, !llvm.loop !1114

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %bb.e, %bb.d
  %i.dg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.dg, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, %.lr.ph
  %i.dh = phi i32 [ %i.dj, %.lr.ph ], [ %i.dg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ] ; 2 uses
  %.053 = phi i32 [ %i.dh, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ]
  %i.di = sdiv i32 %.053, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.di)
  %i.dj = add nsw i32 %i.dh, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1117

bb.f:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i43 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i43, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !455, !range !78, !noundef !79
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !456
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !126
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i44 = icmp eq i64 %i.dy, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.f
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = sext i32 %i.d to i64
  %.pre.i46 = load ptr, ptr %i.dz, align 8, !tbaa !447 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !450, !nonnull !79, !align !163
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !351, !noalias !1122
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !451, !nonnull !79, !align !163
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !453, !nonnull !79, !align !163
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i47

_ZN8facebook5velox6StatusD2Ev.exit20.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %.preheader.i45
  %.030.i48 = phi i64 [ %i.dy, %.preheader.i45 ], [ %i.fe, %_ZN8facebook5velox6StatusD2Ev.exit20.i47 ] ; 3 uses
  %i.ej = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i48, i1 true)
  %i.ek = or disjoint i64 %i.ej, %i.ea            ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !126, !noalias !1122
  %i.en = mul i64 %i.em, -4417276706812531889     ; 2 uses
  %i.eo = call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 31)
  %i.ep = mul i64 %i.eo, -7046029288634856825
  %i.eq = xor i64 %i.ep, 2870177450012600269      ; 2 uses
  %i.er = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 27)
  %i.es = mul i64 %i.er, -7046029288634856825
  %i.et = add i64 %i.es, -8796714831421723037     ; 2 uses
  %i.eu = lshr i64 %i.et, 33
  %i.ev = xor i64 %i.eu, %i.et
  %i.ew = mul i64 %i.ev, -4417276706812531889     ; 2 uses
  %i.ex = lshr i64 %i.ew, 29
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = mul i64 %i.ey, 1609587929392839161      ; 2 uses
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ek
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !126
  %i.fd = add nsw i64 %.030.i48, -1
  %i.fe = and i64 %i.fd, %.030.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.fe, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i47, !llvm.loop !1114

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !458, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !459
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre79 = load ptr, ptr %i.k, align 8, !tbaa !447 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre79, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !79, !align !163
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !351, !noalias !1130
  %i.q = getelementptr inbounds nuw i8, ptr %.pre79, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !451, !nonnull !79, !align !163
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !453, !nonnull !79, !align !163
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.b:                                             ; preds = %bb.a
  %i.v = shl i32 %1, 6                            ; 5 uses
  %i.w = add i32 %i.v, 64
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %.not77 = icmp eq i32 %i.v, -64
  br i1 %.not77, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph: ; preds = %bb.b
  %i.y = sext i32 %i.v to i64                     ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !447 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !450, !nonnull !79, !align !163
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !351, !noalias !1131 ; 3 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !451, !nonnull !79, !align !163
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !453, !nonnull !79, !align !163
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !342 ; 3 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = or disjoint i64 %i.y, 1
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.x) ; 2 uses
  %i.am = sub i64 %i.al, %i.y                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 12
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph
  %i.an = or disjoint i64 %i.y, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.x)
  %i.ao = xor i64 %i.y, -1
  %i.ap = add i64 %umax, %i.ao                    ; 2 uses
  %i.aq = sext i32 %i.v to i35                    ; 2 uses
  %i.ar = shl nsw i35 %i.aq, 3
  %i.as = trunc i64 %i.ap to i35
  %i.at = add i35 %i.aq, %i.as
  %i.au = shl i35 %i.at, 3
  %i.av = icmp slt i35 %i.au, %i.ar
  %i.aw = icmp ugt i64 %i.ap, 4294967295
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ay = shl nsw i64 %i.y, 3
  %i.az = add i64 %i.ay, %i.aj
  %i.ba = sext i32 %i.v to i35
  %i.bb = shl nsw i35 %i.ba, 3
  %i.bc = sext i35 %i.bb to i64
  %i.bd = add i64 %i.ad, %i.bc
  %i.be = sub i64 %i.bd, %i.az
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bf = and i64 %i.al, 1                        ; 2 uses
  %n.vec = sub i64 %i.am, %i.bf                   ; 2 uses
  %i.bg = add i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = add nuw i64 %index, %i.y                ; 2 uses
  %i.bi = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %i.bi, 29
  %i.bk = getelementptr inbounds i8, ptr %i.ac, i64 %i.bj
  %wide.load = load <4 x i64>, ptr %i.bk, align 8, !tbaa !126, !noalias !1131
  %i.bl = mul <4 x i64> %wide.load, splat (i64 -4417276706812531889) ; 2 uses
  %i.bm = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bl, <4 x i64> %i.bl, <4 x i64> splat (i64 31))
  %i.bn = mul <4 x i64> %i.bm, splat (i64 -7046029288634856825)
  %i.bo = xor <4 x i64> %i.bn, splat (i64 2870177450012600269) ; 2 uses
  %i.bp = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bo, <4 x i64> %i.bo, <4 x i64> splat (i64 27))
  %i.bq = mul <4 x i64> %i.bp, splat (i64 -7046029288634856825)
  %i.br = add <4 x i64> %i.bq, splat (i64 -8796714831421723037) ; 2 uses
  %i.bs = lshr <4 x i64> %i.br, splat (i64 33)
  %i.bt = xor <4 x i64> %i.bs, %i.br
  %i.bu = mul <4 x i64> %i.bt, splat (i64 -4417276706812531889) ; 2 uses
  %i.bv = lshr <4 x i64> %i.bu, splat (i64 29)
  %i.bw = xor <4 x i64> %i.bv, %i.bu
  %i.bx = mul <4 x i64> %i.bw, splat (i64 1609587929392839161) ; 2 uses
  %i.by = lshr <4 x i64> %i.bx, splat (i64 32)
  %i.bz = xor <4 x i64> %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bh
  store <4 x i64> %i.bz, ptr %i.ca, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.preheader:   ; preds = %vector.memcheck, %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph, %middle.block
  %.076.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %vector.scevcheck ], [ %i.y, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph ], [ %i.bg, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.076 = phi i64 [ %i.cv, %_ZN8facebook5velox6StatusD2Ev.exit35 ], [ %.076.ph, %_ZN8facebook5velox6StatusD2Ev.exit35.preheader ] ; 3 uses
  %sext = shl i64 %.076, 32
  %i.cc = ashr exact i64 %sext, 29
  %i.cd = getelementptr inbounds i8, ptr %i.ac, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !126, !noalias !1131
  %i.cf = mul i64 %i.ce, -4417276706812531889     ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 31)
  %i.ch = mul i64 %i.cg, -7046029288634856825
  %i.ci = xor i64 %i.ch, 2870177450012600269      ; 2 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 27)
  %i.ck = mul i64 %i.cj, -7046029288634856825
  %i.cl = add i64 %i.ck, -8796714831421723037     ; 2 uses
  %i.cm = lshr i64 %i.cl, 33
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = mul i64 %i.cn, -4417276706812531889     ; 2 uses
  %i.cp = lshr i64 %i.co, 29
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = mul i64 %i.cq, 1609587929392839161      ; 2 uses
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.076
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !126
  %i.cv = add nuw i64 %.076, 1                    ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.x
  br i1 %i.cw, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %.loopexit, !llvm.loop !1128

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01575 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.ds, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.cx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575, i1 true)
  %i.cy = or disjoint i64 %i.cx, %i.m             ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !126, !noalias !1130
  %i.db = mul i64 %i.da, -4417276706812531889     ; 2 uses
  %i.dc = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 31)
  %i.dd = mul i64 %i.dc, -7046029288634856825
  %i.de = xor i64 %i.dd, 2870177450012600269      ; 2 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 27)
  %i.dg = mul i64 %i.df, -7046029288634856825
  %i.dh = add i64 %i.dg, -8796714831421723037     ; 2 uses
  %i.di = lshr i64 %i.dh, 33
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = mul i64 %i.dj, -4417276706812531889     ; 2 uses
  %i.dl = lshr i64 %i.dk, 29
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = mul i64 %i.dm, 1609587929392839161      ; 2 uses
  %i.do = lshr i64 %i.dn, 32
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cy
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !126
  %i.dr = add i64 %.01575, -1
  %i.ds = and i64 %i.dr, %.01575                  ; 2 uses
  %.not = icmp eq i64 %i.ds, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit54, !llvm.loop !1129

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit54, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !464
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !467
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !468, !range !78, !noundef !79
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !469, !nonnull !79, !align !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !471, !nonnull !79, !align !163
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !342
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit15
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit15 ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ar, label %_ZN8facebook5velox6StatusD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !472, !range !78, !noundef !79
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit15

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !474
  %i.be = shl nsw i64 %indvars.iv, 2
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit15

_ZN8facebook5velox6StatusD2Ev.exit15:             ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i = phi i32 [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %bb.i ]
  %i.bh = sext i32 %.0.i.i.i to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !126
  %i.bk = mul i64 %i.bj, -4417276706812531889     ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 31)
  %i.bm = mul i64 %i.bl, -7046029288634856825
  %i.bn = xor i64 %i.bm, 2870177450012600269      ; 2 uses
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 27)
  %i.bp = mul i64 %i.bo, -7046029288634856825
  %i.bq = add i64 %i.bp, -8796714831421723037     ; 2 uses
  %i.br = lshr i64 %i.bq, 33
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, -4417276706812531889     ; 2 uses
  %i.bu = lshr i64 %i.bt, 29
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, 1609587929392839161      ; 2 uses
  %i.bx = lshr i64 %i.bw, 32
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1168

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !429
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !430
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !476
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !477
  store i8 1, ptr %3, align 8, !tbaa !479
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !480
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS4_12VectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull byval(%class.anon.539) align 8 %2, ptr noundef nonnull byval(%class.anon.540) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit15, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS4_12VectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.539) align 8 %2, ptr noundef byval(%class.anon.540) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !476, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !477
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !461 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !464, !nonnull !79, !align !163
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !467
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !468, !range !78, !noundef !79
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !469, !nonnull !79, !align !163
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !471, !nonnull !79, !align !163
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !342
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bx, %_ZN8facebook5velox6StatusD2Ev.exit21.i ] ; 3 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %i.d, %i.at             ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.aj, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.ak, align 1, !tbaa !472, !range !78, !noundef !79
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.am, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit21.i

bb.g:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !474
  %i.ba = shl nsw i64 %i.av, 2
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit21.i

_ZN8facebook5velox6StatusD2Ev.exit21.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.ay, %bb.f ], [ %i.au, %bb.d ]
  %i.bd = sext i32 %.0.i.i.i.i to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !126
  %i.bg = mul i64 %i.bf, -4417276706812531889     ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 31)
  %i.bi = mul i64 %i.bh, -7046029288634856825
  %i.bj = xor i64 %i.bi, 2870177450012600269      ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 27)
  %i.bl = mul i64 %i.bk, -7046029288634856825
  %i.bm = add i64 %i.bl, -8796714831421723037     ; 2 uses
  %i.bn = lshr i64 %i.bm, 33
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bo, -4417276706812531889     ; 2 uses
  %i.bq = lshr i64 %i.bp, 29
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, 1609587929392839161      ; 2 uses
  %i.bt = lshr i64 %i.bs, 32
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !126
  %i.bw = add nsw i64 %.031.i, -1
  %i.bx = and i64 %i.bw, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bx, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1169

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = sdiv i32 %0, 64                         ; 2 uses
  %i.bz = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ca
  %i.cb = xor i64 %notmask.i.i35, -1
  %i.cc = sub nsw i32 64, %i.bz
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl i64 %i.cb, %i.cd
  %i.cf = load i8, ptr %2, align 8, !tbaa !476, !range !78, !noundef !79
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !477
  %i.ci = sext i32 %i.by to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !126
  %i.cl = xor i8 %i.cf, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = xor i64 %i.ck, %i.cn
  %i.cp = and i64 %i.co, %i.ce                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cp, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = shl nsw i32 %i.by, 6
  %.pre.i38 = load ptr, ptr %i.cq, align 8, !tbaa !461 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !464, !nonnull !79, !align !163
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !467
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !468, !range !78, !noundef !79
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 59
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !469, !nonnull !79, !align !163
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !471, !nonnull !79, !align !163
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !342
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i40, %.preheader.i37
  %.031.i39 = phi i64 [ %i.cp, %.preheader.i37 ], [ %i.en, %_ZN8facebook5velox6StatusD2Ev.exit21.i40 ] ; 3 uses
  %i.di = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i39, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = or disjoint i32 %i.cr, %i.dj            ; 2 uses
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  br i1 %i.cz, label %_ZN8facebook5velox6StatusD2Ev.exit21.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = load i8, ptr %i.da, align 1, !tbaa !472, !range !78, !noundef !79
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = load i32, ptr %i.dc, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit21.i40

bb.m:                                             ; preds = %bb.k
  %i.dp = load ptr, ptr %i.db, align 8, !tbaa !474
  %i.dq = shl nsw i64 %i.dl, 2
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit21.i40

_ZN8facebook5velox6StatusD2Ev.exit21.i40:         ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.ds, %bb.m ], [ %i.do, %bb.l ], [ %i.dk, %bb.j ]
  %i.dt = sext i32 %.0.i.i.i.i41 to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !126
  %i.dw = mul i64 %i.dv, -4417276706812531889     ; 2 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 31)
  %i.dy = mul i64 %i.dx, -7046029288634856825
  %i.dz = xor i64 %i.dy, 2870177450012600269      ; 2 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 27)
  %i.eb = mul i64 %i.ea, -7046029288634856825
  %i.ec = add i64 %i.eb, -8796714831421723037     ; 2 uses
  %i.ed = lshr i64 %i.ec, 33
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = mul i64 %i.ee, -4417276706812531889     ; 2 uses
  %i.eg = lshr i64 %i.ef, 29
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, 1609587929392839161      ; 2 uses
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dl
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !126
  %i.em = add i64 %.031.i39, -1
  %i.en = and i64 %i.em, %.031.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.en, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.j, !llvm.loop !1169

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i40, %bb.i, %bb.h
  %i.eo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.eo, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, %.lr.ph
  %i.ep = phi i32 [ %i.er, %.lr.ph ], [ %i.eo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.ep, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ]
  %i.eq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.eq)
  %i.er = add nsw i32 %i.ep, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.er, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1170

bb.n:                                             ; preds = %._crit_edge
  %i.es = ashr i32 %1, 6
  %i.et = and i32 %1, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i44 = shl nsw i64 -1, %i.eu
  %i.ev = xor i64 %notmask.i44, -1
  %i.ew = load i8, ptr %2, align 8, !tbaa !476, !range !78, !noundef !79
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !477
  %i.ez = sext i32 %i.es to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !126
  %i.fc = xor i8 %i.ew, 1
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = xor i64 %i.fb, %i.fe
  %i.fg = and i64 %i.ff, %i.ev                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.fg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i47 = load ptr, ptr %i.fh, align 8, !tbaa !461 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !464, !nonnull !79, !align !163
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !467
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 58
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !468, !range !78, !noundef !79
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 59
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !469, !nonnull !79, !align !163
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !471, !nonnull !79, !align !163
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !342
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i49, %.preheader.i46
  %.031.i48 = phi i64 [ %i.fg, %.preheader.i46 ], [ %i.hd, %_ZN8facebook5velox6StatusD2Ev.exit21.i49 ] ; 3 uses
  %i.fy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = or disjoint i32 %i.d, %i.fz             ; 2 uses
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  br i1 %i.fp, label %_ZN8facebook5velox6StatusD2Ev.exit21.i49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gc = load i8, ptr %i.fq, align 1, !tbaa !472, !range !78, !noundef !79
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ge = load i32, ptr %i.fs, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit21.i49

bb.r:                                             ; preds = %bb.p
  %i.gf = load ptr, ptr %i.fr, align 8, !tbaa !474
  %i.gg = shl nsw i64 %i.gb, 2
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit21.i49

_ZN8facebook5velox6StatusD2Ev.exit21.i49:         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i50 = phi i32 [ %i.gi, %bb.r ], [ %i.ge, %bb.q ], [ %i.ga, %bb.o ]
  %i.gj = sext i32 %.0.i.i.i.i50 to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !126
  %i.gm = mul i64 %i.gl, -4417276706812531889     ; 2 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 31)
  %i.go = mul i64 %i.gn, -7046029288634856825
  %i.gp = xor i64 %i.go, 2870177450012600269      ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 27)
  %i.gr = mul i64 %i.gq, -7046029288634856825
  %i.gs = add i64 %i.gr, -8796714831421723037     ; 2 uses
  %i.gt = lshr i64 %i.gs, 33
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = mul i64 %i.gu, -4417276706812531889     ; 2 uses
  %i.gw = lshr i64 %i.gv, 29
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = mul i64 %i.gx, 1609587929392839161      ; 2 uses
  %i.gz = lshr i64 %i.gy, 32
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gb
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !126
  %i.hc = add nsw i64 %.031.i48, -1
  %i.hd = and i64 %i.hc, %.031.i48                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hd, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !1169

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i49, %_ZN8facebook5velox6StatusD2Ev.exit21.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22XxHash64BigIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJlEEEJlEEEE7iterateIJNS3_12VectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !479, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !480
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !461 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !464, !nonnull !79, !align !163
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !467
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.s = load i8, ptr %i.r, align 2, !tbaa !468, !range !78, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 59
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !469, !nonnull !79, !align !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !471, !nonnull !79, !align !163
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !342
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i32 %1, 6                           ; 3 uses
  %i.ad = add i32 %i.ac, 64
  %i.ae = sext i32 %i.ad to i64
  %.not83 = icmp eq i32 %i.ac, -64
  br i1 %.not83, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !461 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !464, !nonnull !79, !align !163
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !467
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !468, !range !78, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !469, !nonnull !79, !align !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !471, !nonnull !79, !align !163
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !342
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %_ZN8facebook5velox6StatusD2Ev.exit37
  %.081 = phi i64 [ %i.af, %.lr.ph82 ], [ %i.by, %_ZN8facebook5velox6StatusD2Ev.exit37 ] ; 4 uses
  %i.ax = trunc i64 %.081 to i32
  br i1 %i.ao, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.ap, align 1, !tbaa !472, !range !78, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit37

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !474
  %sext.i = shl i64 %.081, 32
  %i.bc = ashr exact i64 %sext.i, 30
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit37

_ZN8facebook5velox6StatusD2Ev.exit37:             ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.be, %bb.f ], [ %i.ba, %bb.e ], [ %i.ax, %bb.c ]
  %i.bf = sext i32 %.0.i.i.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !126
  %i.bi = mul i64 %i.bh, -4417276706812531889     ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 31)
  %i.bk = mul i64 %i.bj, -7046029288634856825
  %i.bl = xor i64 %i.bk, 2870177450012600269      ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 27)
  %i.bn = mul i64 %i.bm, -7046029288634856825
  %i.bo = add i64 %i.bn, -8796714831421723037     ; 2 uses
  %i.bp = lshr i64 %i.bo, 33
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4417276706812531889     ; 2 uses
  %i.bs = lshr i64 %i.br, 29
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, 1609587929392839161      ; 2 uses
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.081
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !126
  %i.by = add nuw i64 %.081, 1                    ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.ae
  br i1 %i.bz, label %bb.c, label %.loopexit, !llvm.loop !1171

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit59
  %.01580 = phi i64 [ %i.j, %.lr.ph ], [ %i.df, %_ZN8facebook5velox6StatusD2Ev.exit59 ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = or disjoint i32 %i.l, %i.cb             ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  br i1 %i.t, label %_ZN8facebook5velox6StatusD2Ev.exit59, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = load i8, ptr %i.u, align 1, !tbaa !472, !range !78, !noundef !79
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = load i32, ptr %i.w, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit59

bb.j:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %i.v, align 8, !tbaa !474
  %i.ci = shl nsw i64 %i.cd, 2
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit59

_ZN8facebook5velox6StatusD2Ev.exit59:             ; preds = %bb.g, %bb.i, %bb.j
  %.0.i.i.i46 = phi i32 [ %i.ck, %bb.j ], [ %i.cg, %bb.i ], [ %i.cc, %bb.g ]
  %i.cl = sext i32 %.0.i.i.i46 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !126
  %i.co = mul i64 %i.cn, -4417276706812531889     ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 31)
  %i.cq = mul i64 %i.cp, -7046029288634856825
  %i.cr = xor i64 %i.cq, 2870177450012600269      ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 27)
  %i.ct = mul i64 %i.cs, -7046029288634856825
  %i.cu = add i64 %i.ct, -8796714831421723037     ; 2 uses
  %i.cv = lshr i64 %i.cu, 33
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, -4417276706812531889     ; 2 uses
  %i.cy = lshr i64 %i.cx, 29
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = mul i64 %i.cz, 1609587929392839161      ; 2 uses
  %i.db = lshr i64 %i.da, 32
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cd
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !126
  %i.de = add i64 %.01580, -1
  %i.df = and i64 %i.de, %.01580                  ; 2 uses
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !1172

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37, %_ZN8facebook5velox6StatusD2Ev.exit59, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.an, -4417276706812531889     ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 31)
  %i.aq = mul i64 %i.ap, -7046029288634856825
  %i.ar = xor i64 %i.aq, 2870177450012600269      ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 27)
  %i.at = mul i64 %i.as, -7046029288634856825
  %i.au = add i64 %i.at, -8796714831421723037     ; 2 uses
  %i.av = lshr i64 %i.au, 33
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, -4417276706812531889     ; 2 uses
  %i.ay = lshr i64 %i.ax, 29
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 1609587929392839161      ; 2 uses
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre31, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !505, !nonnull !79, !align !163
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !342 ; 3 uses
  %i.bg = xor i32 %i.ag, -1
  %i.bh = add i32 %i.ae, %i.bg                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bh, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i32 %i.bh, 15
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 8589934576              ; 4 uses
  %i.bl = add nsw i64 %n.vec, %i.al
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bf, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat, ptr %i.bm, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat, ptr %i.bn, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat, ptr %i.bo, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vec.epilog.ph, !prof !393

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.bj, 8589934588            ; 3 uses
  %i.bq = add nsw i64 %n.vec37, %i.al
  %broadcast.splatinsert38 = insertelement <4 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat39 = shufflevector <4 x i64> %broadcast.splatinsert38, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep44 = getelementptr [8 x i8], ptr %i.bf, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %gep45 = getelementptr [8 x i8], ptr %invariant.gep44, i64 %index40
  store <4 x i64> %broadcast.splat39, ptr %gep45, align 8, !tbaa !126
  %index.next41 = add nuw i64 %index40, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.bj, %n.vec37
  br i1 %cmp.n42, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit18.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv
  store i64 %i.bc, ptr %i.bs, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18, !llvm.loop !1248

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !429
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !430
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !507
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bt, ptr %i.ca, align 8, !tbaa !508
  store i8 1, ptr %3, align 8, !tbaa !510
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bt, ptr %i.cb, align 8, !tbaa !511
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS4_20ConstantVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull byval(%class.anon.929) align 8 %2, ptr noundef nonnull byval(%class.anon.930) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS4_20ConstantVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.929) align 8 %2, ptr noundef byval(%class.anon.930) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !507, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !508
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !498 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !502, !nonnull !79, !align !406
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !67, !noalias !1258
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.ag, -4417276706812531889     ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 31)
  %i.aj = mul i64 %i.ai, -7046029288634856825
  %i.ak = xor i64 %i.aj, 2870177450012600269      ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 27)
  %i.am = mul i64 %i.al, -7046029288634856825
  %i.an = add i64 %i.am, -8796714831421723037     ; 2 uses
  %i.ao = lshr i64 %i.an, 33
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4417276706812531889     ; 2 uses
  %i.ar = lshr i64 %i.aq, 29
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 1609587929392839161      ; 2 uses
  %i.au = lshr i64 %i.at, 32
  %i.av = xor i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !503, !nonnull !79, !align !163
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !505, !nonnull !79, !align !163
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !342
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ba, i64 %i.ac
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bd, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bb
  store i64 %i.av, ptr %gep.i, align 8, !tbaa !126
  %i.bc = add nsw i64 %.035.i, -1
  %i.bd = and i64 %i.bc, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bd, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, !llvm.loop !1252

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = sdiv i32 %0, 64                         ; 2 uses
  %i.bf = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bg
  %i.bh = xor i64 %notmask.i.i35, -1
  %i.bi = sub nsw i32 64, %i.bf
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl i64 %i.bh, %i.bj
  %i.bl = load i8, ptr %2, align 8, !tbaa !507, !range !78, !noundef !79
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !508
  %i.bo = sext i32 %i.be to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.br = xor i8 %i.bl, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = and i64 %i.bu, %i.bk                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bv, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = shl nsw i32 %i.be, 6
  %i.by = sext i32 %i.bx to i64
  %.pre.i38 = load ptr, ptr %i.bw, align 8, !tbaa !498 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !502, !nonnull !79, !align !406
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !67, !noalias !1259
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.cc, -4417276706812531889     ; 2 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 31)
  %i.cf = mul i64 %i.ce, -7046029288634856825
  %i.cg = xor i64 %i.cf, 2870177450012600269      ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 27)
  %i.ci = mul i64 %i.ch, -7046029288634856825
  %i.cj = add i64 %i.ci, -8796714831421723037     ; 2 uses
  %i.ck = lshr i64 %i.cj, 33
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = mul i64 %i.cl, -4417276706812531889     ; 2 uses
  %i.cn = lshr i64 %i.cm, 29
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, 1609587929392839161      ; 2 uses
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !503, !nonnull !79, !align !163
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !505, !nonnull !79, !align !163
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !342
  %invariant.gep.i39 = getelementptr [8 x i8], ptr %i.cw, i64 %i.by
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40

_ZN8facebook5velox6StatusD2Ev.exit24.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %.preheader.i37
  %.035.i41 = phi i64 [ %i.bv, %.preheader.i37 ], [ %i.cz, %_ZN8facebook5velox6StatusD2Ev.exit24.i40 ] ; 3 uses
  %i.cx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i41, i1 true)
  %gep.i42 = getelementptr [8 x i8], ptr %invariant.gep.i39, i64 %i.cx
  store i64 %i.cr, ptr %gep.i42, align 8, !tbaa !126
  %i.cy = add i64 %.035.i41, -1
  %i.cz = and i64 %i.cy, %.035.i41                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cz, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40, !llvm.loop !1252

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %bb.e, %bb.d
  %i.da = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3356 = icmp sgt i32 %i.da, %i.d
  br i1 %.not3356, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, %.lr.ph
  %i.db = phi i32 [ %i.dd, %.lr.ph ], [ %i.da, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ] ; 2 uses
  %.057 = phi i32 [ %i.db, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ]
  %i.dc = sdiv i32 %.057, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dc)
  %i.dd = add nsw i32 %i.db, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1255

bb.f:                                             ; preds = %._crit_edge
  %i.de = ashr i32 %1, 6
  %i.df = and i32 %1, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i45 = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i45, -1
  %i.di = load i8, ptr %2, align 8, !tbaa !507, !range !78, !noundef !79
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !508
  %i.dl = sext i32 %i.de to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !126
  %i.do = xor i8 %i.di, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = and i64 %i.dr, %i.dh                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.ds, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.dt, align 8, !tbaa !498 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !502, !nonnull !79, !align !406
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !67, !noalias !1260
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %i.dy, -4417276706812531889     ; 2 uses
  %i.ea = call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 31)
  %i.eb = mul i64 %i.ea, -7046029288634856825
  %i.ec = xor i64 %i.eb, 2870177450012600269      ; 2 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 27)
  %i.ee = mul i64 %i.ed, -7046029288634856825
  %i.ef = add i64 %i.ee, -8796714831421723037     ; 2 uses
  %i.eg = lshr i64 %i.ef, 33
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, -4417276706812531889     ; 2 uses
  %i.ej = lshr i64 %i.ei, 29
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = mul i64 %i.ek, 1609587929392839161      ; 2 uses
  %i.em = lshr i64 %i.el, 32
  %i.en = xor i64 %i.em, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !503, !nonnull !79, !align !163
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !505, !nonnull !79, !align !163
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !342
  %invariant.gep.i49 = getelementptr [8 x i8], ptr %i.es, i64 %i.du
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i50

_ZN8facebook5velox6StatusD2Ev.exit24.i50:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %.preheader.i47
  %.035.i51 = phi i64 [ %i.ds, %.preheader.i47 ], [ %i.ev, %_ZN8facebook5velox6StatusD2Ev.exit24.i50 ] ; 3 uses
  %i.et = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i51, i1 true)
  %gep.i52 = getelementptr [8 x i8], ptr %invariant.gep.i49, i64 %i.et
  store i64 %i.en, ptr %gep.i52, align 8, !tbaa !126
  %i.eu = add nsw i64 %.035.i51, -1
  %i.ev = and i64 %i.eu, %.035.i51                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i50, !llvm.loop !1252

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_20ConstantVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !510, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !511
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_20ConstantVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_20ConstantVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !498 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !502, !nonnull !79, !align !406
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67, !noalias !1269
  %i.q = sext i32 %i.p to i64
  %i.r = mul i64 %i.q, -4417276706812531889       ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 31)
  %i.t = mul i64 %i.s, -7046029288634856825
  %i.u = xor i64 %i.t, 2870177450012600269        ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 27)
  %i.w = mul i64 %i.v, -7046029288634856825
  %i.x = add i64 %i.w, -8796714831421723037       ; 2 uses
  %i.y = lshr i64 %i.x, 33
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4417276706812531889      ; 2 uses
  %i.ab = lshr i64 %i.aa, 29
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 1609587929392839161      ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !503, !nonnull !79, !align !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !505, !nonnull !79, !align !163
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342
  %invariant.gep = getelementptr [8 x i8], ptr %i.ak, i64 %i.m
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

bb.b:                                             ; preds = %bb.a
  %i.al = shl i32 %1, 6                           ; 3 uses
  %i.am = add i32 %i.al, 64
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %.not83 = icmp eq i32 %i.al, -64
  br i1 %.not83, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.ao = sext i32 %i.al to i64                   ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !498 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !502, !nonnull !79, !align !406
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67, !noalias !1270
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.at, -4417276706812531889     ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 31)
  %i.aw = mul i64 %i.av, -7046029288634856825
  %i.ax = xor i64 %i.aw, 2870177450012600269      ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 27)
  %i.az = mul i64 %i.ay, -7046029288634856825
  %i.ba = add i64 %i.az, -8796714831421723037     ; 2 uses
  %i.bb = lshr i64 %i.ba, 33
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, -4417276706812531889     ; 2 uses
  %i.be = lshr i64 %i.bd, 29
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, 1609587929392839161      ; 2 uses
  %i.bh = lshr i64 %i.bg, 32
  %i.bi = xor i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !503, !nonnull !79, !align !163
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !505, !nonnull !79, !align !163
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !342 ; 3 uses
  %i.bo = or disjoint i64 %i.ao, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.an) ; 2 uses
  %i.bp = sub i64 %umax, %i.ao                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i64 %i.bp, 16
  %i.bq = and i64 %umax, 1                        ; 3 uses
  %n.vec91 = sub nuw i64 %i.bp, %i.bq             ; 3 uses
  %i.br = add i64 %n.vec91, %i.ao                 ; 2 uses
  %broadcast.splatinsert92 = insertelement <4 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat93 = shufflevector <4 x i64> %broadcast.splatinsert92, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check90, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep99 = getelementptr [8 x i8], ptr %i.bn, i64 %i.ao
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep101 = getelementptr [8 x i8], ptr %i.bn, i64 %i.ao
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep100 = getelementptr [8 x i8], ptr %invariant.gep99, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep100, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %gep100, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %gep100, i64 96
  store <4 x i64> %broadcast.splat93, ptr %gep100, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat93, ptr %i.bs, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat93, ptr %i.bt, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat93, ptr %i.bu, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec91
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index94 = phi i64 [ %index.next95, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep102 = getelementptr [8 x i8], ptr %invariant.gep101, i64 %index94
  store <4 x i64> %broadcast.splat93, ptr %gep102, align 8, !tbaa !126
  %index.next95 = add nuw i64 %index94, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %i.bq, 0
  br i1 %cmp.n96, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.preheader:   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.082.ph = phi i64 [ %i.br, %middle.block ], [ %i.ao, %iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39

_ZN8facebook5velox6StatusD2Ev.exit39:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39
  %.082 = phi i64 [ %i.by, %_ZN8facebook5velox6StatusD2Ev.exit39 ], [ %.082.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.082
  store i64 %i.bi, ptr %i.bx, align 8, !tbaa !126
  %i.by = add nuw i64 %.082, 1                    ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.an
  br i1 %i.bz, label %_ZN8facebook5velox6StatusD2Ev.exit39, label %.loopexit, !llvm.loop !1267

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_20ConstantVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01581 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_20ConstantVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.cc, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01581, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ca
  store i64 %i.af, ptr %gep, align 8, !tbaa !126
  %i.cb = add i64 %.01581, -1
  %i.cc = and i64 %i.cb, %.01581                  ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit58, !llvm.loop !1268

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39, %_ZN8facebook5velox6StatusD2Ev.exit58, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.954) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.955, align 8            ; 6 uses
  %3 = alloca %class.anon.956, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !430 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !429 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !512, !nonnull !79, !align !163 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 3 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !515
  %.pre27 = load ptr, ptr %i.ak, align 8, !tbaa !516
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !495, !noalias !1275 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre27, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !518, !nonnull !79, !align !163
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !342 ; 2 uses
  %i.aq = xor i32 %i.ag, -1
  %i.ar = add i32 %i.ae, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %n.vec = and i64 %i.at, 8589934588              ; 3 uses
  %i.au = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add i64 %index, %i.al                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.av
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !67, !noalias !1275
  %i.ax = sext <4 x i32> %wide.load to <4 x i64>
  %i.ay = mul <4 x i64> %i.ax, splat (i64 -4417276706812531889) ; 2 uses
  %i.az = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ay, <4 x i64> %i.ay, <4 x i64> splat (i64 31))
  %i.ba = mul <4 x i64> %i.az, splat (i64 -7046029288634856825)
  %i.bb = xor <4 x i64> %i.ba, splat (i64 2870177450012600269) ; 2 uses
  %i.bc = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bb, <4 x i64> %i.bb, <4 x i64> splat (i64 27))
  %i.bd = mul <4 x i64> %i.bc, splat (i64 -7046029288634856825)
  %i.be = add <4 x i64> %i.bd, splat (i64 -8796714831421723037) ; 2 uses
  %i.bf = lshr <4 x i64> %i.be, splat (i64 33)
  %i.bg = xor <4 x i64> %i.bf, %i.be
  %i.bh = mul <4 x i64> %i.bg, splat (i64 -4417276706812531889) ; 2 uses
  %i.bi = lshr <4 x i64> %i.bh, splat (i64 29)
  %i.bj = xor <4 x i64> %i.bi, %i.bh
  %i.bk = mul <4 x i64> %i.bj, splat (i64 1609587929392839161) ; 2 uses
  %i.bl = lshr <4 x i64> %i.bk, splat (i64 32)
  %i.bm = xor <4 x i64> %i.bl, %i.bk
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.av
  store <4 x i64> %i.bm, ptr %i.bn, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.preheader:   ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.au, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67, !noalias !1275
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %i.br, -4417276706812531889     ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 31)
  %i.bu = mul i64 %i.bt, -7046029288634856825
  %i.bv = xor i64 %i.bu, 2870177450012600269      ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 27)
  %i.bx = mul i64 %i.bw, -7046029288634856825
  %i.by = add i64 %i.bx, -8796714831421723037     ; 2 uses
  %i.bz = lshr i64 %i.by, 33
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -4417276706812531889     ; 2 uses
  %i.cc = lshr i64 %i.cb, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, 1609587929392839161      ; 2 uses
  %i.cf = lshr i64 %i.ce, 32
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14, !llvm.loop !1274

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ci = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !429
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !430
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !520
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ci, ptr %i.cp, align 8, !tbaa !521
  store i8 1, ptr %3, align 8, !tbaa !523
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ci, ptr %i.cq, align 8, !tbaa !524
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS4_16FlatVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.ck, i32 noundef %i.cm, ptr noundef nonnull byval(%class.anon.955) align 8 %2, ptr noundef nonnull byval(%class.anon.956) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS4_16FlatVectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.955) align 8 %2, ptr noundef byval(%class.anon.956) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !520, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !521
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !512 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !515, !nonnull !79, !align !163
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !495, !noalias !1284
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !516, !nonnull !79, !align !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !518, !nonnull !79, !align !163
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bh, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !67, !noalias !1284
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.ap, -4417276706812531889     ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 31)
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = xor i64 %i.as, 2870177450012600269      ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 27)
  %i.av = mul i64 %i.au, -7046029288634856825
  %i.aw = add i64 %i.av, -8796714831421723037     ; 2 uses
  %i.ax = lshr i64 %i.aw, 33
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -4417276706812531889     ; 2 uses
  %i.ba = lshr i64 %i.az, 29
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, 1609587929392839161      ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !126
  %i.bg = add nsw i64 %.031.i, -1
  %i.bh = and i64 %i.bg, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bh, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1278

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = sdiv i32 %0, 64                         ; 2 uses
  %i.bj = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask.i.i35, -1
  %i.bm = sub nsw i32 64, %i.bj
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bl, %i.bn
  %i.bp = load i8, ptr %2, align 8, !tbaa !520, !range !78, !noundef !79
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !521
  %i.bs = sext i32 %i.bi to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !126
  %i.bv = xor i8 %i.bp, 1
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = xor i64 %i.bu, %i.bx
  %i.bz = and i64 %i.by, %i.bo                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bz, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = shl nsw i32 %i.bi, 6
  %i.cc = sext i32 %i.cb to i64
  %.pre.i38 = load ptr, ptr %i.ca, align 8, !tbaa !512 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !515, !nonnull !79, !align !163
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !495, !noalias !1285
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !516, !nonnull !79, !align !163
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !518, !nonnull !79, !align !163
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i39

_ZN8facebook5velox6StatusD2Ev.exit20.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %.preheader.i37
  %.031.i40 = phi i64 [ %i.bz, %.preheader.i37 ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit20.i39 ] ; 3 uses
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  %i.cm = or disjoint i64 %i.cl, %i.cc            ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !67, !noalias !1285
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cs, 2870177450012600269      ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037     ; 2 uses
  %i.cx = lshr i64 %i.cw, 33
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4417276706812531889     ; 2 uses
  %i.da = lshr i64 %i.cz, 29
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 1609587929392839161      ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cm
  store i64 %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = add i64 %.031.i40, -1
  %i.dh = and i64 %i.dg, %.031.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.dh, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit20.i39, !llvm.loop !1278

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %bb.e, %bb.d
  %i.di = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.di, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, %.lr.ph
  %i.dj = phi i32 [ %i.dl, %.lr.ph ], [ %i.di, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ] ; 2 uses
  %.053 = phi i32 [ %i.dj, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ]
  %i.dk = sdiv i32 %.053, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dk)
  %i.dl = add nsw i32 %i.dj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dl, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1281

bb.f:                                             ; preds = %._crit_edge
  %i.dm = ashr i32 %1, 6
  %i.dn = and i32 %1, 63
  %i.do = zext nneg i32 %i.dn to i64
  %notmask.i43 = shl nsw i64 -1, %i.do
  %i.dp = xor i64 %notmask.i43, -1
  %i.dq = load i8, ptr %2, align 8, !tbaa !520, !range !78, !noundef !79
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !521
  %i.dt = sext i32 %i.dm to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !126
  %i.dw = xor i8 %i.dq, 1
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = xor i64 %i.dv, %i.dy
  %i.ea = and i64 %i.dz, %i.dp                    ; 2 uses
  %.not.i44 = icmp eq i64 %i.ea, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = sext i32 %i.d to i64
  %.pre.i46 = load ptr, ptr %i.eb, align 8, !tbaa !512 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !515, !nonnull !79, !align !163
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !495, !noalias !1286
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !516, !nonnull !79, !align !163
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !518, !nonnull !79, !align !163
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i47

_ZN8facebook5velox6StatusD2Ev.exit20.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %.preheader.i45
  %.031.i48 = phi i64 [ %i.ea, %.preheader.i45 ], [ %i.fh, %_ZN8facebook5velox6StatusD2Ev.exit20.i47 ] ; 3 uses
  %i.el = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.em = or disjoint i64 %i.el, %i.ec            ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !67, !noalias !1286
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul i64 %i.ep, -4417276706812531889     ; 2 uses
  %i.er = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 31)
  %i.es = mul i64 %i.er, -7046029288634856825
  %i.et = xor i64 %i.es, 2870177450012600269      ; 2 uses
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 27)
  %i.ev = mul i64 %i.eu, -7046029288634856825
  %i.ew = add i64 %i.ev, -8796714831421723037     ; 2 uses
  %i.ex = lshr i64 %i.ew, 33
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = mul i64 %i.ey, -4417276706812531889     ; 2 uses
  %i.fa = lshr i64 %i.ez, 29
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = mul i64 %i.fb, 1609587929392839161      ; 2 uses
  %i.fd = lshr i64 %i.fc, 32
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.em
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !126
  %i.fg = add nsw i64 %.031.i48, -1
  %i.fh = and i64 %i.fg, %.031.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.fh, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i47, !llvm.loop !1278

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_16FlatVectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !523, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !524
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre81 = load ptr, ptr %i.k, align 8, !tbaa !512 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre81, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !515, !nonnull !79, !align !163
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !495, !noalias !1294
  %i.q = getelementptr inbounds nuw i8, ptr %.pre81, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !516, !nonnull !79, !align !163
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !518, !nonnull !79, !align !163
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.b:                                             ; preds = %bb.a
  %i.v = shl i32 %1, 6                            ; 4 uses
  %i.w = add i32 %i.v, 64
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %.not79 = icmp eq i32 %i.v, -64
  br i1 %.not79, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph: ; preds = %bb.b
  %i.y = sext i32 %i.v to i64                     ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !512 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !515, !nonnull !79, !align !163
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !495, !noalias !1295 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !516, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !518, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !342 ; 2 uses
  %i.ai = or disjoint i64 %i.y, 1
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.x) ; 2 uses
  %i.ak = sub i64 %i.aj, %i.y                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph
  %i.al = or disjoint i64 %i.y, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.x)
  %i.am = xor i64 %i.y, -1
  %i.an = add i64 %umax, %i.am                    ; 2 uses
  %i.ao = sext i32 %i.v to i34                    ; 2 uses
  %i.ap = shl nsw i34 %i.ao, 2
  %i.aq = trunc i64 %i.an to i34
  %i.ar = add i34 %i.ao, %i.aq
  %i.as = shl i34 %i.ar, 2
  %i.at = icmp slt i34 %i.as, %i.ap
  %i.au = icmp ugt i64 %i.an, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.aw = and i64 %i.aj, 1                        ; 2 uses
  %n.vec = sub i64 %i.ak, %i.aw                   ; 2 uses
  %i.ax = add i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add nuw i64 %index, %i.y                ; 2 uses
  %i.az = shl i64 %i.ay, 32
  %i.ba = ashr exact i64 %i.az, 30
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 %i.ba
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !tbaa !67, !noalias !1295
  %i.bc = sext <4 x i32> %wide.load to <4 x i64>
  %i.bd = mul <4 x i64> %i.bc, splat (i64 -4417276706812531889) ; 2 uses
  %i.be = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bd, <4 x i64> %i.bd, <4 x i64> splat (i64 31))
  %i.bf = mul <4 x i64> %i.be, splat (i64 -7046029288634856825)
  %i.bg = xor <4 x i64> %i.bf, splat (i64 2870177450012600269) ; 2 uses
  %i.bh = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bg, <4 x i64> %i.bg, <4 x i64> splat (i64 27))
  %i.bi = mul <4 x i64> %i.bh, splat (i64 -7046029288634856825)
  %i.bj = add <4 x i64> %i.bi, splat (i64 -8796714831421723037) ; 2 uses
  %i.bk = lshr <4 x i64> %i.bj, splat (i64 33)
  %i.bl = xor <4 x i64> %i.bk, %i.bj
  %i.bm = mul <4 x i64> %i.bl, splat (i64 -4417276706812531889) ; 2 uses
  %i.bn = lshr <4 x i64> %i.bm, splat (i64 29)
  %i.bo = xor <4 x i64> %i.bn, %i.bm
  %i.bp = mul <4 x i64> %i.bo, splat (i64 1609587929392839161) ; 2 uses
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 32)
  %i.br = xor <4 x i64> %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ay
  store <4 x i64> %i.br, ptr %i.bs, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.preheader:   ; preds = %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph, %middle.block
  %.078.ph = phi i64 [ %i.y, %vector.scevcheck ], [ %i.y, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph ], [ %i.ax, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.078 = phi i64 [ %i.co, %_ZN8facebook5velox6StatusD2Ev.exit35 ], [ %.078.ph, %_ZN8facebook5velox6StatusD2Ev.exit35.preheader ] ; 3 uses
  %sext = shl i64 %.078, 32
  %i.bu = ashr exact i64 %sext, 30
  %i.bv = getelementptr inbounds i8, ptr %i.ac, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !67, !noalias !1295
  %i.bx = sext i32 %i.bw to i64
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
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.078
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !126
  %i.co = add nuw i64 %.078, 1                    ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.x
  br i1 %i.cp, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %.loopexit, !llvm.loop !1292

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01577 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS1_16FlatVectorReaderIiEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.dm, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01577, i1 true)
  %i.cr = or disjoint i64 %i.cq, %i.m             ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67, !noalias !1294
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul i64 %i.cu, -4417276706812531889     ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 31)
  %i.cx = mul i64 %i.cw, -7046029288634856825
  %i.cy = xor i64 %i.cx, 2870177450012600269      ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 27)
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = add i64 %i.da, -8796714831421723037     ; 2 uses
  %i.dc = lshr i64 %i.db, 33
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -4417276706812531889     ; 2 uses
  %i.df = lshr i64 %i.de, 29
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, 1609587929392839161      ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cr
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !126
  %i.dl = add i64 %.01577, -1
  %i.dm = and i64 %i.dl, %.01577                  ; 2 uses
  %.not = icmp eq i64 %i.dm, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit54, !llvm.loop !1293

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit54, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.981) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.982, align 8            ; 6 uses
  %3 = alloca %class.anon.983, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !467, !noalias !1299
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !468, !range !78, !noalias !1299, !noundef !79
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !531, !nonnull !79, !align !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !533, !nonnull !79, !align !163
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !342
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ar, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !472, !range !78, !noalias !1299, !noundef !79
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !473, !noalias !1299
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !474, !noalias !1299
  %i.be = shl nsw i64 %indvars.iv, 2
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67, !noalias !1299
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %bb.i ]
  %i.bh = sext i32 %.0.i.i.i to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !67, !noalias !1299
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bk, -4417276706812531889     ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 31)
  %i.bn = mul i64 %i.bm, -7046029288634856825
  %i.bo = xor i64 %i.bn, 2870177450012600269      ; 2 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 27)
  %i.bq = mul i64 %i.bp, -7046029288634856825
  %i.br = add i64 %i.bq, -8796714831421723037     ; 2 uses
  %i.bs = lshr i64 %i.br, 33
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, -4417276706812531889     ; 2 uses
  %i.bv = lshr i64 %i.bu, 29
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, 1609587929392839161      ; 2 uses
  %i.by = lshr i64 %i.bx, 32
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1298

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !429
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !430
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !535
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !536
  store i8 1, ptr %3, align 8, !tbaa !538
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !539
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS4_12VectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cd, i32 noundef %i.cf, ptr noundef nonnull byval(%class.anon.982) align 8 %2, ptr noundef nonnull byval(%class.anon.983) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS4_12VectorReaderIiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.982) align 8 %2, ptr noundef byval(%class.anon.983) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !535, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !536
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !525 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !528, !nonnull !79, !align !163
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !530, !noalias !1308, !nonnull !79, !align !163 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !467, !noalias !1308
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !468, !range !78, !noalias !1308, !noundef !79
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !531, !nonnull !79, !align !163
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !533, !nonnull !79, !align !163
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !342
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.by, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %i.d, %i.at             ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.aj, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.ak, align 1, !tbaa !472, !range !78, !noalias !1308, !noundef !79
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.am, align 8, !tbaa !473, !noalias !1308
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

bb.g:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !474, !noalias !1308
  %i.ba = shl nsw i64 %i.av, 2
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67, !noalias !1308
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.ay, %bb.f ], [ %i.au, %bb.d ]
  %i.bd = sext i32 %.0.i.i.i.i to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !67, !noalias !1308
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.bg, -4417276706812531889     ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 31)
  %i.bj = mul i64 %i.bi, -7046029288634856825
  %i.bk = xor i64 %i.bj, 2870177450012600269      ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 27)
  %i.bm = mul i64 %i.bl, -7046029288634856825
  %i.bn = add i64 %i.bm, -8796714831421723037     ; 2 uses
  %i.bo = lshr i64 %i.bn, 33
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, -4417276706812531889     ; 2 uses
  %i.br = lshr i64 %i.bq, 29
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, 1609587929392839161      ; 2 uses
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !126
  %i.bx = add nsw i64 %.031.i, -1
  %i.by = and i64 %i.bx, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.by, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1302

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = sdiv i32 %0, 64                         ; 2 uses
  %i.ca = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cb
  %i.cc = xor i64 %notmask.i.i35, -1
  %i.cd = sub nsw i32 64, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %i.cc, %i.ce
  %i.cg = load i8, ptr %2, align 8, !tbaa !535, !range !78, !noundef !79
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !536
  %i.cj = sext i32 %i.bz to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !126
  %i.cm = xor i8 %i.cg, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = and i64 %i.cp, %i.cf                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cq, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = shl nsw i32 %i.bz, 6
  %.pre.i38 = load ptr, ptr %i.cr, align 8, !tbaa !525 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !528, !nonnull !79, !align !163
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !530, !noalias !1309, !nonnull !79, !align !163 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !467, !noalias !1309
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 58
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !468, !range !78, !noalias !1309, !noundef !79
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 59
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !531, !nonnull !79, !align !163
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !533, !nonnull !79, !align !163
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !342
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i40, %.preheader.i37
  %.031.i39 = phi i64 [ %i.cq, %.preheader.i37 ], [ %i.ep, %_ZN8facebook5velox6StatusD2Ev.exit20.i40 ] ; 3 uses
  %i.dj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i39, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = or disjoint i32 %i.cs, %i.dk            ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  br i1 %i.da, label %_ZN8facebook5velox6StatusD2Ev.exit20.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = load i8, ptr %i.db, align 1, !tbaa !472, !range !78, !noalias !1309, !noundef !79
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %i.dd, align 8, !tbaa !473, !noalias !1309
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i40

bb.m:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !474, !noalias !1309
  %i.dr = shl nsw i64 %i.dm, 2
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !67, !noalias !1309
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i40

_ZN8facebook5velox6StatusD2Ev.exit20.i40:         ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.dt, %bb.m ], [ %i.dp, %bb.l ], [ %i.dl, %bb.j ]
  %i.du = sext i32 %.0.i.i.i.i41 to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67, !noalias !1309
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul i64 %i.dx, -4417276706812531889     ; 2 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 31)
  %i.ea = mul i64 %i.dz, -7046029288634856825
  %i.eb = xor i64 %i.ea, 2870177450012600269      ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 27)
  %i.ed = mul i64 %i.ec, -7046029288634856825
  %i.ee = add i64 %i.ed, -8796714831421723037     ; 2 uses
  %i.ef = lshr i64 %i.ee, 33
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.eg, -4417276706812531889     ; 2 uses
  %i.ei = lshr i64 %i.eh, 29
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, 1609587929392839161      ; 2 uses
  %i.el = lshr i64 %i.ek, 32
  %i.em = xor i64 %i.el, %i.ek
  %i.en = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dm
  store i64 %i.em, ptr %i.en, align 8, !tbaa !126
  %i.eo = add i64 %.031.i39, -1
  %i.ep = and i64 %i.eo, %.031.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.ep, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.j, !llvm.loop !1302

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i40, %bb.i, %bb.h
  %i.eq = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.eq, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, %.lr.ph
  %i.er = phi i32 [ %i.et, %.lr.ph ], [ %i.eq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.er, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ]
  %i.es = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.es)
  %i.et = add nsw i32 %i.er, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1305

bb.n:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i44 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i44, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !535, !range !78, !noundef !79
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !536
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !126
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.fi, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i47 = load ptr, ptr %i.fj, align 8, !tbaa !525 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !528, !nonnull !79, !align !163
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !530, !noalias !1310, !nonnull !79, !align !163 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !467, !noalias !1310
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 58
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !468, !range !78, !noalias !1310, !noundef !79
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 59
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !531, !nonnull !79, !align !163
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !533, !nonnull !79, !align !163
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !342
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %.preheader.i46
  %.031.i48 = phi i64 [ %i.fi, %.preheader.i46 ], [ %i.hg, %_ZN8facebook5velox6StatusD2Ev.exit20.i49 ] ; 3 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = or disjoint i32 %i.d, %i.gb             ; 2 uses
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  br i1 %i.fr, label %_ZN8facebook5velox6StatusD2Ev.exit20.i49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ge = load i8, ptr %i.fs, align 1, !tbaa !472, !range !78, !noalias !1310, !noundef !79
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !473, !noalias !1310
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

bb.r:                                             ; preds = %bb.p
  %i.gh = load ptr, ptr %i.ft, align 8, !tbaa !474, !noalias !1310
  %i.gi = shl nsw i64 %i.gd, 2
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !67, !noalias !1310
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

_ZN8facebook5velox6StatusD2Ev.exit20.i49:         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i50 = phi i32 [ %i.gk, %bb.r ], [ %i.gg, %bb.q ], [ %i.gc, %bb.o ]
  %i.gl = sext i32 %.0.i.i.i.i50 to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !67, !noalias !1310
  %i.go = sext i32 %i.gn to i64
  %i.gp = mul i64 %i.go, -4417276706812531889     ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 31)
  %i.gr = mul i64 %i.gq, -7046029288634856825
  %i.gs = xor i64 %i.gr, 2870177450012600269      ; 2 uses
  %i.gt = call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 27)
  %i.gu = mul i64 %i.gt, -7046029288634856825
  %i.gv = add i64 %i.gu, -8796714831421723037     ; 2 uses
  %i.gw = lshr i64 %i.gv, 33
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = mul i64 %i.gx, -4417276706812531889     ; 2 uses
  %i.gz = lshr i64 %i.gy, 29
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = mul i64 %i.ha, 1609587929392839161      ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = xor i64 %i.hc, %i.hb
  %i.he = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gd
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !126
  %i.hf = add nsw i64 %.031.i48, -1
  %i.hg = and i64 %i.hf, %.031.i48                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hg, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !1302

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64IntegerFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJiEEEJiEEEE7iterateIJNS3_12VectorReaderIiEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !538, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !539
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !525 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !528, !nonnull !79, !align !163
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !530, !noalias !1317, !nonnull !79, !align !163 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !467, !noalias !1317
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.s = load i8, ptr %i.r, align 2, !tbaa !468, !range !78, !noalias !1317, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 59
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !531, !nonnull !79, !align !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !533, !nonnull !79, !align !163
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !342
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i32 %1, 6                           ; 3 uses
  %i.ad = add i32 %i.ac, 64
  %i.ae = sext i32 %i.ad to i64
  %.not83 = icmp eq i32 %i.ac, -64
  br i1 %.not83, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !525 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !528, !nonnull !79, !align !163
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !530, !noalias !1318, !nonnull !79, !align !163 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !467, !noalias !1318
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !468, !range !78, !noalias !1318, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !531, !nonnull !79, !align !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !533, !nonnull !79, !align !163
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !342
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.081 = phi i64 [ %i.af, %.lr.ph82 ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit35 ] ; 4 uses
  %i.ax = trunc i64 %.081 to i32
  br i1 %i.ao, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.ap, align 1, !tbaa !472, !range !78, !noalias !1318, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !473, !noalias !1318
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !474, !noalias !1318
  %sext.i = shl i64 %.081, 32
  %i.bc = ashr exact i64 %sext.i, 30
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67, !noalias !1318
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.be, %bb.f ], [ %i.ba, %bb.e ], [ %i.ax, %bb.c ]
  %i.bf = sext i32 %.0.i.i.i to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !67, !noalias !1318
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bi, -4417276706812531889     ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 31)
  %i.bl = mul i64 %i.bk, -7046029288634856825
  %i.bm = xor i64 %i.bl, 2870177450012600269      ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 27)
  %i.bo = mul i64 %i.bn, -7046029288634856825
  %i.bp = add i64 %i.bo, -8796714831421723037     ; 2 uses
  %i.bq = lshr i64 %i.bp, 33
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, -4417276706812531889     ; 2 uses
  %i.bt = lshr i64 %i.bs, 29
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, 1609587929392839161      ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.081
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !126
  %i.bz = add nuw i64 %.081, 1                    ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.ae
  br i1 %i.ca, label %bb.c, label %.loopexit, !llvm.loop !1315

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit57
  %.01580 = phi i64 [ %i.j, %.lr.ph ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit57 ] ; 3 uses
  %i.cb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = or disjoint i32 %i.l, %i.cc             ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  br i1 %i.t, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = load i8, ptr %i.u, align 1, !tbaa !472, !range !78, !noalias !1317, !noundef !79
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = load i32, ptr %i.w, align 8, !tbaa !473, !noalias !1317
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.j:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !474, !noalias !1317
  %i.cj = shl nsw i64 %i.ce, 2
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !67, !noalias !1317
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.j, %bb.i, %bb.g
  %.0.i.i.i44 = phi i32 [ %i.cl, %bb.j ], [ %i.ch, %bb.i ], [ %i.cd, %bb.g ]
  %i.cm = sext i32 %.0.i.i.i44 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !67, !noalias !1317
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cs, 2870177450012600269      ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037     ; 2 uses
  %i.cx = lshr i64 %i.cw, 33
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4417276706812531889     ; 2 uses
  %i.da = lshr i64 %i.cz, 29
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 1609587929392839161      ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ce
  store i64 %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = add i64 %.01580, -1
  %i.dh = and i64 %i.dg, %.01580                  ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !1316

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit57, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJsEEEJsEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EERKSF_INS1_17SignatureVariableESaISQ_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !60
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJsEEEJsEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJsEEEJsEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EE.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJsEEEJsEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EEE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJsEEEJsEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.an = sext i16 %i.am to i64
  %i.ao = mul i64 %i.an, -4417276706812531889     ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 31)
  %i.aq = mul i64 %i.ap, -7046029288634856825
  %i.ar = xor i64 %i.aq, 2870177450012600269      ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 27)
  %i.at = mul i64 %i.as, -7046029288634856825
  %i.au = add i64 %i.at, -8796714831421723037     ; 2 uses
  %i.av = lshr i64 %i.au, 33
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, -4417276706812531889     ; 2 uses
  %i.ay = lshr i64 %i.ax, 29
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 1609587929392839161      ; 2 uses
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre31, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !567, !nonnull !79, !align !163
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !342 ; 3 uses
  %i.bg = xor i32 %i.ag, -1
  %i.bh = add i32 %i.ae, %i.bg                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bh, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i32 %i.bh, 15
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 8589934576              ; 4 uses
  %i.bl = add nsw i64 %n.vec, %i.al
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bf, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat, ptr %i.bm, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat, ptr %i.bn, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat, ptr %i.bo, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1395

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vec.epilog.ph, !prof !393

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.bj, 8589934588            ; 3 uses
  %i.bq = add nsw i64 %n.vec37, %i.al
  %broadcast.splatinsert38 = insertelement <4 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat39 = shufflevector <4 x i64> %broadcast.splatinsert38, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.gep44 = getelementptr [8 x i8], ptr %i.bf, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %gep45 = getelementptr [8 x i8], ptr %invariant.gep44, i64 %index40
  store <4 x i64> %broadcast.splat39, ptr %gep45, align 8, !tbaa !126
  %index.next41 = add nuw i64 %index40, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1396

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.bj, %n.vec37
  br i1 %cmp.n42, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit18.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv
  store i64 %i.bc, ptr %i.bs, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18, !llvm.loop !1397

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !429
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !430
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !569
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bt, ptr %i.ca, align 8, !tbaa !570
  store i8 1, ptr %3, align 8, !tbaa !572
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bt, ptr %i.cb, align 8, !tbaa !573
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS4_20ConstantVectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull byval(%class.anon.1072) align 8 %2, ptr noundef nonnull byval(%class.anon.1073) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS4_20ConstantVectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1072) align 8 %2, ptr noundef byval(%class.anon.1073) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !569, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !570
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !560 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !564, !nonnull !79, !align !574
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !548, !noalias !1407
  %i.ag = sext i16 %i.af to i64
  %i.ah = mul i64 %i.ag, -4417276706812531889     ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 31)
  %i.aj = mul i64 %i.ai, -7046029288634856825
  %i.ak = xor i64 %i.aj, 2870177450012600269      ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 27)
  %i.am = mul i64 %i.al, -7046029288634856825
  %i.an = add i64 %i.am, -8796714831421723037     ; 2 uses
  %i.ao = lshr i64 %i.an, 33
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4417276706812531889     ; 2 uses
  %i.ar = lshr i64 %i.aq, 29
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 1609587929392839161      ; 2 uses
  %i.au = lshr i64 %i.at, 32
  %i.av = xor i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !565, !nonnull !79, !align !163
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !567, !nonnull !79, !align !163
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !342
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ba, i64 %i.ac
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bd, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bb
  store i64 %i.av, ptr %gep.i, align 8, !tbaa !126
  %i.bc = add nsw i64 %.035.i, -1
  %i.bd = and i64 %i.bc, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bd, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, !llvm.loop !1401

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = sdiv i32 %0, 64                         ; 2 uses
  %i.bf = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bg
  %i.bh = xor i64 %notmask.i.i35, -1
  %i.bi = sub nsw i32 64, %i.bf
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl i64 %i.bh, %i.bj
  %i.bl = load i8, ptr %2, align 8, !tbaa !569, !range !78, !noundef !79
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !570
  %i.bo = sext i32 %i.be to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.br = xor i8 %i.bl, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = and i64 %i.bu, %i.bk                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bv, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = shl nsw i32 %i.be, 6
  %i.by = sext i32 %i.bx to i64
  %.pre.i38 = load ptr, ptr %i.bw, align 8, !tbaa !560 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !564, !nonnull !79, !align !574
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !548, !noalias !1408
  %i.cc = sext i16 %i.cb to i64
  %i.cd = mul i64 %i.cc, -4417276706812531889     ; 2 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 31)
  %i.cf = mul i64 %i.ce, -7046029288634856825
  %i.cg = xor i64 %i.cf, 2870177450012600269      ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 27)
  %i.ci = mul i64 %i.ch, -7046029288634856825
  %i.cj = add i64 %i.ci, -8796714831421723037     ; 2 uses
  %i.ck = lshr i64 %i.cj, 33
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = mul i64 %i.cl, -4417276706812531889     ; 2 uses
  %i.cn = lshr i64 %i.cm, 29
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, 1609587929392839161      ; 2 uses
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !565, !nonnull !79, !align !163
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !567, !nonnull !79, !align !163
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !342
  %invariant.gep.i39 = getelementptr [8 x i8], ptr %i.cw, i64 %i.by
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40

_ZN8facebook5velox6StatusD2Ev.exit24.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %.preheader.i37
  %.035.i41 = phi i64 [ %i.bv, %.preheader.i37 ], [ %i.cz, %_ZN8facebook5velox6StatusD2Ev.exit24.i40 ] ; 3 uses
  %i.cx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i41, i1 true)
  %gep.i42 = getelementptr [8 x i8], ptr %invariant.gep.i39, i64 %i.cx
  store i64 %i.cr, ptr %gep.i42, align 8, !tbaa !126
  %i.cy = add i64 %.035.i41, -1
  %i.cz = and i64 %i.cy, %.035.i41                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cz, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40, !llvm.loop !1401

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %bb.e, %bb.d
  %i.da = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3356 = icmp sgt i32 %i.da, %i.d
  br i1 %.not3356, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, %.lr.ph
  %i.db = phi i32 [ %i.dd, %.lr.ph ], [ %i.da, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ] ; 2 uses
  %.057 = phi i32 [ %i.db, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ]
  %i.dc = sdiv i32 %.057, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dc)
  %i.dd = add nsw i32 %i.db, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1404

bb.f:                                             ; preds = %._crit_edge
  %i.de = ashr i32 %1, 6
  %i.df = and i32 %1, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i45 = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i45, -1
  %i.di = load i8, ptr %2, align 8, !tbaa !569, !range !78, !noundef !79
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !570
  %i.dl = sext i32 %i.de to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !126
  %i.do = xor i8 %i.di, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = and i64 %i.dr, %i.dh                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.ds, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.dt, align 8, !tbaa !560 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !564, !nonnull !79, !align !574
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !548, !noalias !1409
  %i.dy = sext i16 %i.dx to i64
  %i.dz = mul i64 %i.dy, -4417276706812531889     ; 2 uses
  %i.ea = call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 31)
  %i.eb = mul i64 %i.ea, -7046029288634856825
  %i.ec = xor i64 %i.eb, 2870177450012600269      ; 2 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 27)
  %i.ee = mul i64 %i.ed, -7046029288634856825
  %i.ef = add i64 %i.ee, -8796714831421723037     ; 2 uses
  %i.eg = lshr i64 %i.ef, 33
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, -4417276706812531889     ; 2 uses
  %i.ej = lshr i64 %i.ei, 29
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = mul i64 %i.ek, 1609587929392839161      ; 2 uses
  %i.em = lshr i64 %i.el, 32
  %i.en = xor i64 %i.em, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !565, !nonnull !79, !align !163
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !567, !nonnull !79, !align !163
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !342
  %invariant.gep.i49 = getelementptr [8 x i8], ptr %i.es, i64 %i.du
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i50

_ZN8facebook5velox6StatusD2Ev.exit24.i50:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %.preheader.i47
  %.035.i51 = phi i64 [ %i.ds, %.preheader.i47 ], [ %i.ev, %_ZN8facebook5velox6StatusD2Ev.exit24.i50 ] ; 3 uses
  %i.et = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i51, i1 true)
  %gep.i52 = getelementptr [8 x i8], ptr %invariant.gep.i49, i64 %i.et
  store i64 %i.en, ptr %gep.i52, align 8, !tbaa !126
  %i.eu = add nsw i64 %.035.i51, -1
  %i.ev = and i64 %i.eu, %.035.i51                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i50, !llvm.loop !1401

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_20ConstantVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !572, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !573
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_20ConstantVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_20ConstantVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !560 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !564, !nonnull !79, !align !574
  %i.p = load i16, ptr %i.o, align 2, !tbaa !548, !noalias !1418
  %i.q = sext i16 %i.p to i64
  %i.r = mul i64 %i.q, -4417276706812531889       ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 31)
  %i.t = mul i64 %i.s, -7046029288634856825
  %i.u = xor i64 %i.t, 2870177450012600269        ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 27)
  %i.w = mul i64 %i.v, -7046029288634856825
  %i.x = add i64 %i.w, -8796714831421723037       ; 2 uses
  %i.y = lshr i64 %i.x, 33
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4417276706812531889      ; 2 uses
  %i.ab = lshr i64 %i.aa, 29
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 1609587929392839161      ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !565, !nonnull !79, !align !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !567, !nonnull !79, !align !163
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342
  %invariant.gep = getelementptr [8 x i8], ptr %i.ak, i64 %i.m
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

bb.b:                                             ; preds = %bb.a
  %i.al = shl i32 %1, 6                           ; 3 uses
  %i.am = add i32 %i.al, 64
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %.not83 = icmp eq i32 %i.al, -64
  br i1 %.not83, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.ao = sext i32 %i.al to i64                   ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !560 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !564, !nonnull !79, !align !574
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !548, !noalias !1419
  %i.at = sext i16 %i.as to i64
  %i.au = mul i64 %i.at, -4417276706812531889     ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 31)
  %i.aw = mul i64 %i.av, -7046029288634856825
  %i.ax = xor i64 %i.aw, 2870177450012600269      ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 27)
  %i.az = mul i64 %i.ay, -7046029288634856825
  %i.ba = add i64 %i.az, -8796714831421723037     ; 2 uses
  %i.bb = lshr i64 %i.ba, 33
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, -4417276706812531889     ; 2 uses
  %i.be = lshr i64 %i.bd, 29
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, 1609587929392839161      ; 2 uses
  %i.bh = lshr i64 %i.bg, 32
  %i.bi = xor i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !565, !nonnull !79, !align !163
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !567, !nonnull !79, !align !163
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !342 ; 3 uses
  %i.bo = or disjoint i64 %i.ao, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.an) ; 2 uses
  %i.bp = sub i64 %umax, %i.ao                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i64 %i.bp, 16
  %i.bq = and i64 %umax, 1                        ; 3 uses
  %n.vec91 = sub nuw i64 %i.bp, %i.bq             ; 3 uses
  %i.br = add i64 %n.vec91, %i.ao                 ; 2 uses
  %broadcast.splatinsert92 = insertelement <4 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat93 = shufflevector <4 x i64> %broadcast.splatinsert92, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check90, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %invariant.gep99 = getelementptr [8 x i8], ptr %i.bn, i64 %i.ao
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %invariant.gep101 = getelementptr [8 x i8], ptr %i.bn, i64 %i.ao
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %gep100 = getelementptr [8 x i8], ptr %invariant.gep99, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep100, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %gep100, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %gep100, i64 96
  store <4 x i64> %broadcast.splat93, ptr %gep100, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat93, ptr %i.bs, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat93, ptr %i.bt, align 8, !tbaa !126
  store <4 x i64> %broadcast.splat93, ptr %i.bu, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec91
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index94 = phi i64 [ %index.next95, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 2 uses
  %gep102 = getelementptr [8 x i8], ptr %invariant.gep101, i64 %index94
  store <4 x i64> %broadcast.splat93, ptr %gep102, align 8, !tbaa !126
  %index.next95 = add nuw i64 %index94, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %i.bq, 0
  br i1 %cmp.n96, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.preheader:   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.082.ph = phi i64 [ %i.br, %middle.block ], [ %i.ao, %iter.check ], [ %i.br, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39

_ZN8facebook5velox6StatusD2Ev.exit39:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39
  %.082 = phi i64 [ %i.by, %_ZN8facebook5velox6StatusD2Ev.exit39 ], [ %.082.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.082
  store i64 %i.bi, ptr %i.bx, align 8, !tbaa !126
  %i.by = add nuw i64 %.082, 1                    ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.an
  br i1 %i.bz, label %_ZN8facebook5velox6StatusD2Ev.exit39, label %.loopexit, !llvm.loop !1416

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_20ConstantVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01581 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_20ConstantVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.cc, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01581, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ca
  store i64 %i.af, ptr %gep, align 8, !tbaa !126
  %i.cb = add i64 %.01581, -1
  %i.cc = and i64 %i.cb, %.01581                  ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit58, !llvm.loop !1417

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39, %_ZN8facebook5velox6StatusD2Ev.exit58, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1097) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1098, align 8           ; 6 uses
  %3 = alloca %class.anon.1099, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !430 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !429 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !575, !nonnull !79, !align !163 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64                   ; 3 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !578
  %.pre27 = load ptr, ptr %i.ak, align 8, !tbaa !579
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !557, !noalias !1424 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre27, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !581, !nonnull !79, !align !163
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !342 ; 2 uses
  %i.aq = xor i32 %i.ag, -1
  %i.ar = add i32 %i.ae, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %n.vec = and i64 %i.at, 8589934588              ; 3 uses
  %i.au = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add i64 %index, %i.al                   ; 2 uses
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.av
  %wide.load = load <4 x i16>, ptr %i.aw, align 2, !tbaa !548, !noalias !1424
  %i.ax = sext <4 x i16> %wide.load to <4 x i64>
  %i.ay = mul <4 x i64> %i.ax, splat (i64 -4417276706812531889) ; 2 uses
  %i.az = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ay, <4 x i64> %i.ay, <4 x i64> splat (i64 31))
  %i.ba = mul <4 x i64> %i.az, splat (i64 -7046029288634856825)
  %i.bb = xor <4 x i64> %i.ba, splat (i64 2870177450012600269) ; 2 uses
  %i.bc = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bb, <4 x i64> %i.bb, <4 x i64> splat (i64 27))
  %i.bd = mul <4 x i64> %i.bc, splat (i64 -7046029288634856825)
  %i.be = add <4 x i64> %i.bd, splat (i64 -8796714831421723037) ; 2 uses
  %i.bf = lshr <4 x i64> %i.be, splat (i64 33)
  %i.bg = xor <4 x i64> %i.bf, %i.be
  %i.bh = mul <4 x i64> %i.bg, splat (i64 -4417276706812531889) ; 2 uses
  %i.bi = lshr <4 x i64> %i.bh, splat (i64 29)
  %i.bj = xor <4 x i64> %i.bi, %i.bh
  %i.bk = mul <4 x i64> %i.bj, splat (i64 1609587929392839161) ; 2 uses
  %i.bl = lshr <4 x i64> %i.bk, splat (i64 32)
  %i.bm = xor <4 x i64> %i.bl, %i.bk
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.av
  store <4 x i64> %i.bm, ptr %i.bn, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.preheader:   ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.au, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !548, !noalias !1424
  %i.br = sext i16 %i.bq to i64
  %i.bs = mul i64 %i.br, -4417276706812531889     ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 31)
  %i.bu = mul i64 %i.bt, -7046029288634856825
  %i.bv = xor i64 %i.bu, 2870177450012600269      ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 27)
  %i.bx = mul i64 %i.bw, -7046029288634856825
  %i.by = add i64 %i.bx, -8796714831421723037     ; 2 uses
  %i.bz = lshr i64 %i.by, 33
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -4417276706812531889     ; 2 uses
  %i.cc = lshr i64 %i.cb, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, 1609587929392839161      ; 2 uses
  %i.cf = lshr i64 %i.ce, 32
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14, !llvm.loop !1423

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ci = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !429
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !430
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !583
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ci, ptr %i.cp, align 8, !tbaa !584
  store i8 1, ptr %3, align 8, !tbaa !586
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ci, ptr %i.cq, align 8, !tbaa !587
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS4_16FlatVectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.ck, i32 noundef %i.cm, ptr noundef nonnull byval(%class.anon.1098) align 8 %2, ptr noundef nonnull byval(%class.anon.1099) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS4_16FlatVectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1098) align 8 %2, ptr noundef byval(%class.anon.1099) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !583, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !584
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !575 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !578, !nonnull !79, !align !163
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !557, !noalias !1433
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !579, !nonnull !79, !align !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !581, !nonnull !79, !align !163
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bh, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !548, !noalias !1433
  %i.ap = sext i16 %i.ao to i64
  %i.aq = mul i64 %i.ap, -4417276706812531889     ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 31)
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = xor i64 %i.as, 2870177450012600269      ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 27)
  %i.av = mul i64 %i.au, -7046029288634856825
  %i.aw = add i64 %i.av, -8796714831421723037     ; 2 uses
  %i.ax = lshr i64 %i.aw, 33
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -4417276706812531889     ; 2 uses
  %i.ba = lshr i64 %i.az, 29
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, 1609587929392839161      ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !126
  %i.bg = add nsw i64 %.031.i, -1
  %i.bh = and i64 %i.bg, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bh, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1427

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = sdiv i32 %0, 64                         ; 2 uses
  %i.bj = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask.i.i35, -1
  %i.bm = sub nsw i32 64, %i.bj
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bl, %i.bn
  %i.bp = load i8, ptr %2, align 8, !tbaa !583, !range !78, !noundef !79
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !584
  %i.bs = sext i32 %i.bi to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !126
  %i.bv = xor i8 %i.bp, 1
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = xor i64 %i.bu, %i.bx
  %i.bz = and i64 %i.by, %i.bo                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bz, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = shl nsw i32 %i.bi, 6
  %i.cc = sext i32 %i.cb to i64
  %.pre.i38 = load ptr, ptr %i.ca, align 8, !tbaa !575 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !578, !nonnull !79, !align !163
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !557, !noalias !1434
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !579, !nonnull !79, !align !163
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !581, !nonnull !79, !align !163
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i39

_ZN8facebook5velox6StatusD2Ev.exit20.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %.preheader.i37
  %.031.i40 = phi i64 [ %i.bz, %.preheader.i37 ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit20.i39 ] ; 3 uses
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  %i.cm = or disjoint i64 %i.cl, %i.cc            ; 2 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !548, !noalias !1434
  %i.cp = sext i16 %i.co to i64
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cs, 2870177450012600269      ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037     ; 2 uses
  %i.cx = lshr i64 %i.cw, 33
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4417276706812531889     ; 2 uses
  %i.da = lshr i64 %i.cz, 29
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 1609587929392839161      ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cm
  store i64 %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = add i64 %.031.i40, -1
  %i.dh = and i64 %i.dg, %.031.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.dh, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit20.i39, !llvm.loop !1427

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %bb.e, %bb.d
  %i.di = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.di, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, %.lr.ph
  %i.dj = phi i32 [ %i.dl, %.lr.ph ], [ %i.di, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ] ; 2 uses
  %.053 = phi i32 [ %i.dj, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ]
  %i.dk = sdiv i32 %.053, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dk)
  %i.dl = add nsw i32 %i.dj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dl, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1430

bb.f:                                             ; preds = %._crit_edge
  %i.dm = ashr i32 %1, 6
  %i.dn = and i32 %1, 63
  %i.do = zext nneg i32 %i.dn to i64
  %notmask.i43 = shl nsw i64 -1, %i.do
  %i.dp = xor i64 %notmask.i43, -1
  %i.dq = load i8, ptr %2, align 8, !tbaa !583, !range !78, !noundef !79
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !584
  %i.dt = sext i32 %i.dm to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !126
  %i.dw = xor i8 %i.dq, 1
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = xor i64 %i.dv, %i.dy
  %i.ea = and i64 %i.dz, %i.dp                    ; 2 uses
  %.not.i44 = icmp eq i64 %i.ea, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = sext i32 %i.d to i64
  %.pre.i46 = load ptr, ptr %i.eb, align 8, !tbaa !575 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !578, !nonnull !79, !align !163
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !557, !noalias !1435
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !579, !nonnull !79, !align !163
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !581, !nonnull !79, !align !163
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i47

_ZN8facebook5velox6StatusD2Ev.exit20.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %.preheader.i45
  %.031.i48 = phi i64 [ %i.ea, %.preheader.i45 ], [ %i.fh, %_ZN8facebook5velox6StatusD2Ev.exit20.i47 ] ; 3 uses
  %i.el = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.em = or disjoint i64 %i.el, %i.ec            ; 2 uses
  %i.en = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !548, !noalias !1435
  %i.ep = sext i16 %i.eo to i64
  %i.eq = mul i64 %i.ep, -4417276706812531889     ; 2 uses
  %i.er = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 31)
  %i.es = mul i64 %i.er, -7046029288634856825
  %i.et = xor i64 %i.es, 2870177450012600269      ; 2 uses
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 27)
  %i.ev = mul i64 %i.eu, -7046029288634856825
  %i.ew = add i64 %i.ev, -8796714831421723037     ; 2 uses
  %i.ex = lshr i64 %i.ew, 33
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = mul i64 %i.ey, -4417276706812531889     ; 2 uses
  %i.fa = lshr i64 %i.ez, 29
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = mul i64 %i.fb, 1609587929392839161      ; 2 uses
  %i.fd = lshr i64 %i.fc, 32
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.em
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !126
  %i.fg = add nsw i64 %.031.i48, -1
  %i.fh = and i64 %i.fg, %.031.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.fh, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i47, !llvm.loop !1427

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_16FlatVectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !586, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !587
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre81 = load ptr, ptr %i.k, align 8, !tbaa !575 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre81, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !578, !nonnull !79, !align !163
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !557, !noalias !1443
  %i.q = getelementptr inbounds nuw i8, ptr %.pre81, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !579, !nonnull !79, !align !163
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !581, !nonnull !79, !align !163
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.b:                                             ; preds = %bb.a
  %i.v = shl i32 %1, 6                            ; 4 uses
  %i.w = add i32 %i.v, 64
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %.not79 = icmp eq i32 %i.v, -64
  br i1 %.not79, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph: ; preds = %bb.b
  %i.y = sext i32 %i.v to i64                     ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !575 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !578, !nonnull !79, !align !163
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !557, !noalias !1444 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !579, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !581, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !342 ; 2 uses
  %i.ai = or disjoint i64 %i.y, 1
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.x) ; 2 uses
  %i.ak = sub i64 %i.aj, %i.y                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph
  %i.al = or disjoint i64 %i.y, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.x)
  %i.am = xor i64 %i.y, -1
  %i.an = add i64 %umax, %i.am                    ; 2 uses
  %i.ao = sext i32 %i.v to i33                    ; 2 uses
  %i.ap = shl nsw i33 %i.ao, 1
  %i.aq = trunc i64 %i.an to i33
  %i.ar = add i33 %i.ao, %i.aq
  %i.as = shl i33 %i.ar, 1
  %i.at = icmp slt i33 %i.as, %i.ap
  %i.au = icmp ugt i64 %i.an, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.aw = and i64 %i.aj, 1                        ; 2 uses
  %n.vec = sub i64 %i.ak, %i.aw                   ; 2 uses
  %i.ax = add i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add nuw i64 %index, %i.y                ; 2 uses
  %i.az = shl i64 %i.ay, 32
  %i.ba = ashr exact i64 %i.az, 31
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 %i.ba
  %wide.load = load <4 x i16>, ptr %i.bb, align 2, !tbaa !548, !noalias !1444
  %i.bc = sext <4 x i16> %wide.load to <4 x i64>
  %i.bd = mul <4 x i64> %i.bc, splat (i64 -4417276706812531889) ; 2 uses
  %i.be = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bd, <4 x i64> %i.bd, <4 x i64> splat (i64 31))
  %i.bf = mul <4 x i64> %i.be, splat (i64 -7046029288634856825)
  %i.bg = xor <4 x i64> %i.bf, splat (i64 2870177450012600269) ; 2 uses
  %i.bh = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bg, <4 x i64> %i.bg, <4 x i64> splat (i64 27))
  %i.bi = mul <4 x i64> %i.bh, splat (i64 -7046029288634856825)
  %i.bj = add <4 x i64> %i.bi, splat (i64 -8796714831421723037) ; 2 uses
  %i.bk = lshr <4 x i64> %i.bj, splat (i64 33)
  %i.bl = xor <4 x i64> %i.bk, %i.bj
  %i.bm = mul <4 x i64> %i.bl, splat (i64 -4417276706812531889) ; 2 uses
  %i.bn = lshr <4 x i64> %i.bm, splat (i64 29)
  %i.bo = xor <4 x i64> %i.bn, %i.bm
  %i.bp = mul <4 x i64> %i.bo, splat (i64 1609587929392839161) ; 2 uses
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 32)
  %i.br = xor <4 x i64> %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ay
  store <4 x i64> %i.br, ptr %i.bs, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.preheader:   ; preds = %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph, %middle.block
  %.078.ph = phi i64 [ %i.y, %vector.scevcheck ], [ %i.y, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph ], [ %i.ax, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.078 = phi i64 [ %i.co, %_ZN8facebook5velox6StatusD2Ev.exit35 ], [ %.078.ph, %_ZN8facebook5velox6StatusD2Ev.exit35.preheader ] ; 3 uses
  %sext = shl i64 %.078, 32
  %i.bu = ashr exact i64 %sext, 31
  %i.bv = getelementptr inbounds i8, ptr %i.ac, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !548, !noalias !1444
  %i.bx = sext i16 %i.bw to i64
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
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.078
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !126
  %i.co = add nuw i64 %.078, 1                    ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.x
  br i1 %i.cp, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %.loopexit, !llvm.loop !1441

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01577 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS1_16FlatVectorReaderIsEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.dm, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01577, i1 true)
  %i.cr = or disjoint i64 %i.cq, %i.m             ; 2 uses
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !548, !noalias !1443
  %i.cu = sext i16 %i.ct to i64
  %i.cv = mul i64 %i.cu, -4417276706812531889     ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 31)
  %i.cx = mul i64 %i.cw, -7046029288634856825
  %i.cy = xor i64 %i.cx, 2870177450012600269      ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 27)
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = add i64 %i.da, -8796714831421723037     ; 2 uses
  %i.dc = lshr i64 %i.db, 33
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -4417276706812531889     ; 2 uses
  %i.df = lshr i64 %i.de, 29
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, 1609587929392839161      ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cr
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !126
  %i.dl = add i64 %.01577, -1
  %i.dm = and i64 %i.dl, %.01577                  ; 2 uses
  %.not = icmp eq i64 %i.dm, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit54, !llvm.loop !1442

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit54, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1124) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1125, align 8           ; 6 uses
  %3 = alloca %class.anon.1126, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !467, !noalias !1448
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !468, !range !78, !noalias !1448, !noundef !79
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !594, !nonnull !79, !align !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !596, !nonnull !79, !align !163
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !342
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ar, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !472, !range !78, !noalias !1448, !noundef !79
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !473, !noalias !1448
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !474, !noalias !1448
  %i.be = shl nsw i64 %indvars.iv, 2
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67, !noalias !1448
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %bb.i ]
  %i.bh = sext i32 %.0.i.i.i to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !548, !noalias !1448
  %i.bk = sext i16 %i.bj to i64
  %i.bl = mul i64 %i.bk, -4417276706812531889     ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 31)
  %i.bn = mul i64 %i.bm, -7046029288634856825
  %i.bo = xor i64 %i.bn, 2870177450012600269      ; 2 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 27)
  %i.bq = mul i64 %i.bp, -7046029288634856825
  %i.br = add i64 %i.bq, -8796714831421723037     ; 2 uses
  %i.bs = lshr i64 %i.br, 33
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, -4417276706812531889     ; 2 uses
  %i.bv = lshr i64 %i.bu, 29
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, 1609587929392839161      ; 2 uses
  %i.by = lshr i64 %i.bx, 32
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1447

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !429
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !430
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !598
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !599
  store i8 1, ptr %3, align 8, !tbaa !601
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !602
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS4_12VectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cd, i32 noundef %i.cf, ptr noundef nonnull byval(%class.anon.1125) align 8 %2, ptr noundef nonnull byval(%class.anon.1126) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS4_12VectorReaderIsEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1125) align 8 %2, ptr noundef byval(%class.anon.1126) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !598, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !599
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !588 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !591, !nonnull !79, !align !163
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !593, !noalias !1457, !nonnull !79, !align !163 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !467, !noalias !1457
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !468, !range !78, !noalias !1457, !noundef !79
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !594, !nonnull !79, !align !163
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !596, !nonnull !79, !align !163
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !342
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.by, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %i.d, %i.at             ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.aj, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.ak, align 1, !tbaa !472, !range !78, !noalias !1457, !noundef !79
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.am, align 8, !tbaa !473, !noalias !1457
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

bb.g:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !474, !noalias !1457
  %i.ba = shl nsw i64 %i.av, 2
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67, !noalias !1457
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.ay, %bb.f ], [ %i.au, %bb.d ]
  %i.bd = sext i32 %.0.i.i.i.i to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !548, !noalias !1457
  %i.bg = sext i16 %i.bf to i64
  %i.bh = mul i64 %i.bg, -4417276706812531889     ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 31)
  %i.bj = mul i64 %i.bi, -7046029288634856825
  %i.bk = xor i64 %i.bj, 2870177450012600269      ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 27)
  %i.bm = mul i64 %i.bl, -7046029288634856825
  %i.bn = add i64 %i.bm, -8796714831421723037     ; 2 uses
  %i.bo = lshr i64 %i.bn, 33
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, -4417276706812531889     ; 2 uses
  %i.br = lshr i64 %i.bq, 29
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, 1609587929392839161      ; 2 uses
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !126
  %i.bx = add nsw i64 %.031.i, -1
  %i.by = and i64 %i.bx, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.by, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1451

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = sdiv i32 %0, 64                         ; 2 uses
  %i.ca = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cb
  %i.cc = xor i64 %notmask.i.i35, -1
  %i.cd = sub nsw i32 64, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %i.cc, %i.ce
  %i.cg = load i8, ptr %2, align 8, !tbaa !598, !range !78, !noundef !79
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !599
  %i.cj = sext i32 %i.bz to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !126
  %i.cm = xor i8 %i.cg, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = and i64 %i.cp, %i.cf                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cq, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = shl nsw i32 %i.bz, 6
  %.pre.i38 = load ptr, ptr %i.cr, align 8, !tbaa !588 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !591, !nonnull !79, !align !163
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !593, !noalias !1458, !nonnull !79, !align !163 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !467, !noalias !1458
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 58
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !468, !range !78, !noalias !1458, !noundef !79
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 59
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !594, !nonnull !79, !align !163
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !596, !nonnull !79, !align !163
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !342
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i40, %.preheader.i37
  %.031.i39 = phi i64 [ %i.cq, %.preheader.i37 ], [ %i.ep, %_ZN8facebook5velox6StatusD2Ev.exit20.i40 ] ; 3 uses
  %i.dj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i39, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = or disjoint i32 %i.cs, %i.dk            ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  br i1 %i.da, label %_ZN8facebook5velox6StatusD2Ev.exit20.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = load i8, ptr %i.db, align 1, !tbaa !472, !range !78, !noalias !1458, !noundef !79
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %i.dd, align 8, !tbaa !473, !noalias !1458
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i40

bb.m:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !474, !noalias !1458
  %i.dr = shl nsw i64 %i.dm, 2
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !67, !noalias !1458
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i40

_ZN8facebook5velox6StatusD2Ev.exit20.i40:         ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.dt, %bb.m ], [ %i.dp, %bb.l ], [ %i.dl, %bb.j ]
  %i.du = sext i32 %.0.i.i.i.i41 to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !548, !noalias !1458
  %i.dx = sext i16 %i.dw to i64
  %i.dy = mul i64 %i.dx, -4417276706812531889     ; 2 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 31)
  %i.ea = mul i64 %i.dz, -7046029288634856825
  %i.eb = xor i64 %i.ea, 2870177450012600269      ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 27)
  %i.ed = mul i64 %i.ec, -7046029288634856825
  %i.ee = add i64 %i.ed, -8796714831421723037     ; 2 uses
  %i.ef = lshr i64 %i.ee, 33
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.eg, -4417276706812531889     ; 2 uses
  %i.ei = lshr i64 %i.eh, 29
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, 1609587929392839161      ; 2 uses
  %i.el = lshr i64 %i.ek, 32
  %i.em = xor i64 %i.el, %i.ek
  %i.en = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dm
  store i64 %i.em, ptr %i.en, align 8, !tbaa !126
  %i.eo = add i64 %.031.i39, -1
  %i.ep = and i64 %i.eo, %.031.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.ep, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.j, !llvm.loop !1451

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i40, %bb.i, %bb.h
  %i.eq = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.eq, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, %.lr.ph
  %i.er = phi i32 [ %i.et, %.lr.ph ], [ %i.eq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.er, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ]
  %i.es = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.es)
  %i.et = add nsw i32 %i.er, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1454

bb.n:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i44 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i44, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !598, !range !78, !noundef !79
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !599
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !126
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.fi, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i47 = load ptr, ptr %i.fj, align 8, !tbaa !588 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !591, !nonnull !79, !align !163
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !593, !noalias !1459, !nonnull !79, !align !163 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !467, !noalias !1459
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 58
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !468, !range !78, !noalias !1459, !noundef !79
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 59
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !594, !nonnull !79, !align !163
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !596, !nonnull !79, !align !163
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !342
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %.preheader.i46
  %.031.i48 = phi i64 [ %i.fi, %.preheader.i46 ], [ %i.hg, %_ZN8facebook5velox6StatusD2Ev.exit20.i49 ] ; 3 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = or disjoint i32 %i.d, %i.gb             ; 2 uses
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  br i1 %i.fr, label %_ZN8facebook5velox6StatusD2Ev.exit20.i49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ge = load i8, ptr %i.fs, align 1, !tbaa !472, !range !78, !noalias !1459, !noundef !79
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !473, !noalias !1459
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

bb.r:                                             ; preds = %bb.p
  %i.gh = load ptr, ptr %i.ft, align 8, !tbaa !474, !noalias !1459
  %i.gi = shl nsw i64 %i.gd, 2
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !67, !noalias !1459
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

_ZN8facebook5velox6StatusD2Ev.exit20.i49:         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i50 = phi i32 [ %i.gk, %bb.r ], [ %i.gg, %bb.q ], [ %i.gc, %bb.o ]
  %i.gl = sext i32 %.0.i.i.i.i50 to i64
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !548, !noalias !1459
  %i.go = sext i16 %i.gn to i64
  %i.gp = mul i64 %i.go, -4417276706812531889     ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 31)
  %i.gr = mul i64 %i.gq, -7046029288634856825
  %i.gs = xor i64 %i.gr, 2870177450012600269      ; 2 uses
  %i.gt = call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 27)
  %i.gu = mul i64 %i.gt, -7046029288634856825
  %i.gv = add i64 %i.gu, -8796714831421723037     ; 2 uses
  %i.gw = lshr i64 %i.gv, 33
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = mul i64 %i.gx, -4417276706812531889     ; 2 uses
  %i.gz = lshr i64 %i.gy, 29
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = mul i64 %i.ha, 1609587929392839161      ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = xor i64 %i.hc, %i.hb
  %i.he = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gd
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !126
  %i.hf = add nsw i64 %.031.i48, -1
  %i.hg = and i64 %i.hf, %.031.i48                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hg, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !1451

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions24XxHash64SmallIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJsEEEJsEEEE7iterateIJNS3_12VectorReaderIsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !601, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !602
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !588 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !591, !nonnull !79, !align !163
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !593, !noalias !1466, !nonnull !79, !align !163 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !467, !noalias !1466
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.s = load i8, ptr %i.r, align 2, !tbaa !468, !range !78, !noalias !1466, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 59
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !594, !nonnull !79, !align !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !596, !nonnull !79, !align !163
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !342
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i32 %1, 6                           ; 3 uses
  %i.ad = add i32 %i.ac, 64
  %i.ae = sext i32 %i.ad to i64
  %.not83 = icmp eq i32 %i.ac, -64
  br i1 %.not83, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !588 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !591, !nonnull !79, !align !163
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !593, !noalias !1467, !nonnull !79, !align !163 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !467, !noalias !1467
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !468, !range !78, !noalias !1467, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !594, !nonnull !79, !align !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !596, !nonnull !79, !align !163
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !342
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.081 = phi i64 [ %i.af, %.lr.ph82 ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit35 ] ; 4 uses
  %i.ax = trunc i64 %.081 to i32
  br i1 %i.ao, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.ap, align 1, !tbaa !472, !range !78, !noalias !1467, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !473, !noalias !1467
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !474, !noalias !1467
  %sext.i = shl i64 %.081, 32
  %i.bc = ashr exact i64 %sext.i, 30
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67, !noalias !1467
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.be, %bb.f ], [ %i.ba, %bb.e ], [ %i.ax, %bb.c ]
  %i.bf = sext i32 %.0.i.i.i to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !548, !noalias !1467
  %i.bi = sext i16 %i.bh to i64
  %i.bj = mul i64 %i.bi, -4417276706812531889     ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 31)
  %i.bl = mul i64 %i.bk, -7046029288634856825
  %i.bm = xor i64 %i.bl, 2870177450012600269      ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 27)
  %i.bo = mul i64 %i.bn, -7046029288634856825
  %i.bp = add i64 %i.bo, -8796714831421723037     ; 2 uses
  %i.bq = lshr i64 %i.bp, 33
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, -4417276706812531889     ; 2 uses
  %i.bt = lshr i64 %i.bs, 29
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, 1609587929392839161      ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.081
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !126
  %i.bz = add nuw i64 %.081, 1                    ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.ae
  br i1 %i.ca, label %bb.c, label %.loopexit, !llvm.loop !1464

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit57
  %.01580 = phi i64 [ %i.j, %.lr.ph ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit57 ] ; 3 uses
  %i.cb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = or disjoint i32 %i.l, %i.cc             ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  br i1 %i.t, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = load i8, ptr %i.u, align 1, !tbaa !472, !range !78, !noalias !1466, !noundef !79
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = load i32, ptr %i.w, align 8, !tbaa !473, !noalias !1466
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.j:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !474, !noalias !1466
  %i.cj = shl nsw i64 %i.ce, 2
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !67, !noalias !1466
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.j, %bb.i, %bb.g
  %.0.i.i.i44 = phi i32 [ %i.cl, %bb.j ], [ %i.ch, %bb.i ], [ %i.cd, %bb.g ]
  %i.cm = sext i32 %.0.i.i.i44 to i64
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !548, !noalias !1466
  %i.cp = sext i16 %i.co to i64
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cs, 2870177450012600269      ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037     ; 2 uses
  %i.cx = lshr i64 %i.cw, 33
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4417276706812531889     ; 2 uses
  %i.da = lshr i64 %i.cz, 29
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 1609587929392839161      ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ce
  store i64 %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = add i64 %.01580, -1
  %i.dh = and i64 %i.dg, %.01580                  ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !1465

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit57, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJaEEEJaEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EERKSF_INS1_17SignatureVariableESaISQ_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !60
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJaEEEJaEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJaEEEJaEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EE.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJaEEEJaEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EEE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJaEEEJaEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.br = lshr <4 x i64> %i.bq, splat (i64 32)
  %i.bs = xor <4 x i64> %i.br, %i.bq              ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ao, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %i.bs, ptr %gep, align 8, !tbaa !126, !alias.scope !1552, !noalias !1550
  store <4 x i64> %i.bs, ptr %i.bt, align 8, !tbaa !126, !alias.scope !1552, !noalias !1550
  store <4 x i64> %i.bs, ptr %i.bu, align 8, !tbaa !126, !alias.scope !1552, !noalias !1550
  store <4 x i64> %i.bs, ptr %i.bv, align 8, !tbaa !126, !alias.scope !1552, !noalias !1550
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, label %vec.epilog.ph, !prof !440

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.as, 8589934590            ; 3 uses
  %i.bx = add nsw i64 %n.vec39, %i.al
  %i.by = load i8, ptr %.pre, align 1, !tbaa !56, !alias.scope !1550, !noalias !1551
  %broadcast.splatinsert40 = insertelement <2 x i8> poison, i8 %i.by, i64 0
  %broadcast.splat41 = shufflevector <2 x i8> %broadcast.splatinsert40, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.bz = sext <2 x i8> %broadcast.splat41 to <2 x i64>
  %i.ca = mul <2 x i64> %i.bz, splat (i64 -4417276706812531889) ; 2 uses
  %i.cb = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ca, <2 x i64> %i.ca, <2 x i64> splat (i64 31))
  %i.cc = mul <2 x i64> %i.cb, splat (i64 -7046029288634856825)
  %i.cd = xor <2 x i64> %i.cc, splat (i64 2870177450012600269) ; 2 uses
  %i.ce = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.cd, <2 x i64> %i.cd, <2 x i64> splat (i64 27))
  %i.cf = mul <2 x i64> %i.ce, splat (i64 -7046029288634856825)
  %i.cg = add <2 x i64> %i.cf, splat (i64 -8796714831421723037) ; 2 uses
  %i.ch = lshr <2 x i64> %i.cg, splat (i64 33)
  %i.ci = xor <2 x i64> %i.ch, %i.cg
  %i.cj = mul <2 x i64> %i.ci, splat (i64 -4417276706812531889) ; 2 uses
  %i.ck = lshr <2 x i64> %i.cj, splat (i64 29)
  %i.cl = xor <2 x i64> %i.ck, %i.cj
  %i.cm = mul <2 x i64> %i.cl, splat (i64 1609587929392839161) ; 2 uses
  %i.cn = lshr <2 x i64> %i.cm, splat (i64 32)
  %i.co = xor <2 x i64> %i.cn, %i.cm
  %invariant.gep46 = getelementptr [8 x i8], ptr %i.ao, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %gep47 = getelementptr [8 x i8], ptr %invariant.gep46, i64 %index42
  store <2 x i64> %i.co, ptr %gep47, align 8, !tbaa !126, !alias.scope !1552, !noalias !1550
  %index.next43 = add nuw i64 %index42, 2         ; 2 uses
  %i.cp = icmp eq i64 %index.next43, %n.vec39
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1548

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %i.as, %n.vec39
  br i1 %cmp.n44, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18.preheader

_ZN8facebook5velox6StatusD2Ev.exit18.preheader:   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18.preheader, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit18.preheader ] ; 2 uses
  %i.cq = load i8, ptr %.pre, align 1, !tbaa !56, !noalias !1551
  %i.cr = sext i8 %i.cq to i64
  %i.cs = mul i64 %i.cr, -4417276706812531889     ; 2 uses
  %i.ct = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 31)
  %i.cu = mul i64 %i.ct, -7046029288634856825
  %i.cv = xor i64 %i.cu, 2870177450012600269      ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 27)
  %i.cx = mul i64 %i.cw, -7046029288634856825
  %i.cy = add i64 %i.cx, -8796714831421723037     ; 2 uses
  %i.cz = lshr i64 %i.cy, 33
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = mul i64 %i.da, -4417276706812531889     ; 2 uses
  %i.dc = lshr i64 %i.db, 29
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, 1609587929392839161      ; 2 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit18, !llvm.loop !1549

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.di = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !429
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !430
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !629
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.di, ptr %i.dp, align 8, !tbaa !630
  store i8 1, ptr %3, align 8, !tbaa !632
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.di, ptr %i.dq, align 8, !tbaa !633
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS4_20ConstantVectorReaderIaEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.dk, i32 noundef %i.dm, ptr noundef nonnull byval(%class.anon.1213) align 8 %2, ptr noundef nonnull byval(%class.anon.1214) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS4_20ConstantVectorReaderIaEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1213) align 8 %2, ptr noundef byval(%class.anon.1214) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !629, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !630
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !620 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !624, !nonnull !79
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !625, !nonnull !79, !align !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !627, !nonnull !79, !align !163
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !342
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.aj, i64 %i.ac
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bd, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !56, !noalias !1561
  %i.am = sext i8 %i.al to i64
  %i.an = mul i64 %i.am, -4417276706812531889     ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 31)
  %i.ap = mul i64 %i.ao, -7046029288634856825
  %i.aq = xor i64 %i.ap, 2870177450012600269      ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 27)
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = add i64 %i.as, -8796714831421723037     ; 2 uses
  %i.au = lshr i64 %i.at, 33
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -4417276706812531889     ; 2 uses
  %i.ax = lshr i64 %i.aw, 29
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, 1609587929392839161      ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = xor i64 %i.ba, %i.az
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ak
  store i64 %i.bb, ptr %gep.i, align 8, !tbaa !126
  %i.bc = add nsw i64 %.035.i, -1
  %i.bd = and i64 %i.bc, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bd, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, !llvm.loop !1555

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = sdiv i32 %0, 64                         ; 2 uses
  %i.bf = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bg
  %i.bh = xor i64 %notmask.i.i35, -1
  %i.bi = sub nsw i32 64, %i.bf
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl i64 %i.bh, %i.bj
  %i.bl = load i8, ptr %2, align 8, !tbaa !629, !range !78, !noundef !79
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !630
  %i.bo = sext i32 %i.be to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !126
  %i.br = xor i8 %i.bl, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = and i64 %i.bu, %i.bk                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bv, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = shl nsw i32 %i.be, 6
  %i.by = sext i32 %i.bx to i64
  %.pre.i38 = load ptr, ptr %i.bw, align 8, !tbaa !620 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !624, !nonnull !79
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !625, !nonnull !79, !align !163
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !627, !nonnull !79, !align !163
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !342
  %invariant.gep.i39 = getelementptr [8 x i8], ptr %i.cf, i64 %i.by
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40

_ZN8facebook5velox6StatusD2Ev.exit24.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %.preheader.i37
  %.035.i41 = phi i64 [ %i.bv, %.preheader.i37 ], [ %i.cz, %_ZN8facebook5velox6StatusD2Ev.exit24.i40 ] ; 3 uses
  %i.cg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i41, i1 true)
  %i.ch = load i8, ptr %i.ca, align 1, !tbaa !56, !noalias !1562
  %i.ci = sext i8 %i.ch to i64
  %i.cj = mul i64 %i.ci, -4417276706812531889     ; 2 uses
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 31)
  %i.cl = mul i64 %i.ck, -7046029288634856825
  %i.cm = xor i64 %i.cl, 2870177450012600269      ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 27)
  %i.co = mul i64 %i.cn, -7046029288634856825
  %i.cp = add i64 %i.co, -8796714831421723037     ; 2 uses
  %i.cq = lshr i64 %i.cp, 33
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = mul i64 %i.cr, -4417276706812531889     ; 2 uses
  %i.ct = lshr i64 %i.cs, 29
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = mul i64 %i.cu, 1609587929392839161      ; 2 uses
  %i.cw = lshr i64 %i.cv, 32
  %i.cx = xor i64 %i.cw, %i.cv
  %gep.i42 = getelementptr [8 x i8], ptr %invariant.gep.i39, i64 %i.cg
  store i64 %i.cx, ptr %gep.i42, align 8, !tbaa !126
  %i.cy = add i64 %.035.i41, -1
  %i.cz = and i64 %i.cy, %.035.i41                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cz, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40, !llvm.loop !1555

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %bb.e, %bb.d
  %i.da = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3356 = icmp sgt i32 %i.da, %i.d
  br i1 %.not3356, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, %.lr.ph
  %i.db = phi i32 [ %i.dd, %.lr.ph ], [ %i.da, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ] ; 2 uses
  %.057 = phi i32 [ %i.db, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44 ]
  %i.dc = sdiv i32 %.057, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dc)
  %i.dd = add nsw i32 %i.db, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1558

bb.f:                                             ; preds = %._crit_edge
  %i.de = ashr i32 %1, 6
  %i.df = and i32 %1, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i45 = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i45, -1
  %i.di = load i8, ptr %2, align 8, !tbaa !629, !range !78, !noundef !79
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !630
  %i.dl = sext i32 %i.de to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !126
  %i.do = xor i8 %i.di, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = and i64 %i.dr, %i.dh                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.ds, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.dt, align 8, !tbaa !620 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !624, !nonnull !79
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !625, !nonnull !79, !align !163
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !627, !nonnull !79, !align !163
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !342
  %invariant.gep.i49 = getelementptr [8 x i8], ptr %i.eb, i64 %i.du
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i50

_ZN8facebook5velox6StatusD2Ev.exit24.i50:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %.preheader.i47
  %.035.i51 = phi i64 [ %i.ds, %.preheader.i47 ], [ %i.ev, %_ZN8facebook5velox6StatusD2Ev.exit24.i50 ] ; 3 uses
  %i.ec = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i51, i1 true)
  %i.ed = load i8, ptr %i.dw, align 1, !tbaa !56, !noalias !1563
  %i.ee = sext i8 %i.ed to i64
  %i.ef = mul i64 %i.ee, -4417276706812531889     ; 2 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 31)
  %i.eh = mul i64 %i.eg, -7046029288634856825
  %i.ei = xor i64 %i.eh, 2870177450012600269      ; 2 uses
  %i.ej = call i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 27)
  %i.ek = mul i64 %i.ej, -7046029288634856825
  %i.el = add i64 %i.ek, -8796714831421723037     ; 2 uses
  %i.em = lshr i64 %i.el, 33
  %i.en = xor i64 %i.em, %i.el
  %i.eo = mul i64 %i.en, -4417276706812531889     ; 2 uses
  %i.ep = lshr i64 %i.eo, 29
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = mul i64 %i.eq, 1609587929392839161      ; 2 uses
  %i.es = lshr i64 %i.er, 32
  %i.et = xor i64 %i.es, %i.er
  %gep.i52 = getelementptr [8 x i8], ptr %invariant.gep.i49, i64 %i.ec
  store i64 %i.et, ptr %gep.i52, align 8, !tbaa !126
  %i.eu = add nsw i64 %.035.i51, -1
  %i.ev = and i64 %i.eu, %.035.i51                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i50, !llvm.loop !1555

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i50, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_20ConstantVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !632, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !633
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_20ConstantVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_20ConstantVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !620 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !624, !nonnull !79
  %i.p = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !625, !nonnull !79, !align !163
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !627, !nonnull !79, !align !163
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !342
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.m
  br label %_ZN8facebook5velox6StatusD2Ev.exit58

bb.b:                                             ; preds = %bb.a
  %i.u = shl i32 %1, 6                            ; 3 uses
  %i.v = add i32 %i.u, 64
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %.not83 = icmp eq i32 %i.u, -64
  br i1 %.not83, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.x = sext i32 %i.u to i64                     ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !620 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !624, !nonnull !79 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !625, !nonnull !79, !align !163
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !627, !nonnull !79, !align !163
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !342 ; 5 uses
  %i.ag = or disjoint i64 %i.x, 1
  %umax92 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.w) ; 2 uses
  %i.ah = sub i64 %umax92, %i.x                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 2
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ai = shl nsw i64 %i.x, 3
  %scevgep = getelementptr nuw i8, ptr %i.af, i64 %i.ai
  %i.aj = or disjoint i64 %i.x, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.w)
  %i.ak = shl nsw i64 %umax, 3
  %scevgep90 = getelementptr i8, ptr %i.af, i64 %i.ak
  %scevgep91 = getelementptr i8, ptr %i.aa, i64 1
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %i.aa, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check93 = icmp ult i64 %i.ah, 16
  %i.al = and i64 %umax92, 1                      ; 3 uses
  %n.vec94 = sub i64 %i.ah, %i.al                 ; 3 uses
  %i.am = add i64 %n.vec94, %i.x                  ; 2 uses
  %i.an = load i8, ptr %i.aa, align 1, !tbaa !56, !alias.scope !1575, !noalias !1576 ; 2 uses
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ao = sext <4 x i8> %broadcast.splat to <4 x i64>
  %i.ap = mul <4 x i64> %i.ao, splat (i64 -4417276706812531889) ; 2 uses
  %i.aq = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ap, <4 x i64> %i.ap, <4 x i64> splat (i64 31))
  %i.ar = mul <4 x i64> %i.aq, splat (i64 -7046029288634856825)
  %i.as = xor <4 x i64> %i.ar, splat (i64 2870177450012600269) ; 2 uses
  %i.at = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.as, <4 x i64> %i.as, <4 x i64> splat (i64 27))
  %i.au = mul <4 x i64> %i.at, splat (i64 -7046029288634856825)
  %i.av = add <4 x i64> %i.au, splat (i64 -8796714831421723037) ; 2 uses
  %i.aw = lshr <4 x i64> %i.av, splat (i64 33)
  %i.ax = xor <4 x i64> %i.aw, %i.av
  %i.ay = mul <4 x i64> %i.ax, splat (i64 -4417276706812531889) ; 2 uses
  %i.az = lshr <4 x i64> %i.ay, splat (i64 29)
  %i.ba = xor <4 x i64> %i.az, %i.ay
  %i.bb = mul <4 x i64> %i.ba, splat (i64 1609587929392839161) ; 2 uses
  %i.bc = lshr <4 x i64> %i.bb, splat (i64 32)
  %i.bd = xor <4 x i64> %i.bc, %i.bb              ; 4 uses
  %invariant.gep102 = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep103 = getelementptr [8 x i8], ptr %invariant.gep102, i64 %index ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %gep103, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %gep103, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %gep103, i64 96
  store <4 x i64> %i.bd, ptr %gep103, align 8, !tbaa !126, !alias.scope !1577, !noalias !1575
  store <4 x i64> %i.bd, ptr %i.be, align 8, !tbaa !126, !alias.scope !1577, !noalias !1575
  store <4 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !126, !alias.scope !1577, !noalias !1575
  store <4 x i64> %i.bd, ptr %i.bg, align 8, !tbaa !126, !alias.scope !1577, !noalias !1575
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec94
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert95 = insertelement <2 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat96 = shufflevector <2 x i8> %broadcast.splatinsert95, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.bi = sext <2 x i8> %broadcast.splat96 to <2 x i64>
  %i.bj = mul <2 x i64> %i.bi, splat (i64 -4417276706812531889) ; 2 uses
  %i.bk = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bj, <2 x i64> %i.bj, <2 x i64> splat (i64 31))
  %i.bl = mul <2 x i64> %i.bk, splat (i64 -7046029288634856825)
  %i.bm = xor <2 x i64> %i.bl, splat (i64 2870177450012600269) ; 2 uses
  %i.bn = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bm, <2 x i64> %i.bm, <2 x i64> splat (i64 27))
  %i.bo = mul <2 x i64> %i.bn, splat (i64 -7046029288634856825)
  %i.bp = add <2 x i64> %i.bo, splat (i64 -8796714831421723037) ; 2 uses
  %i.bq = lshr <2 x i64> %i.bp, splat (i64 33)
  %i.br = xor <2 x i64> %i.bq, %i.bp
  %i.bs = mul <2 x i64> %i.br, splat (i64 -4417276706812531889) ; 2 uses
  %i.bt = lshr <2 x i64> %i.bs, splat (i64 29)
  %i.bu = xor <2 x i64> %i.bt, %i.bs
  %i.bv = mul <2 x i64> %i.bu, splat (i64 1609587929392839161) ; 2 uses
  %i.bw = lshr <2 x i64> %i.bv, splat (i64 32)
  %i.bx = xor <2 x i64> %i.bw, %i.bv
  %invariant.gep104 = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 2 uses
  %gep105 = getelementptr [8 x i8], ptr %invariant.gep104, i64 %index97
  store <2 x i64> %i.bx, ptr %gep105, align 8, !tbaa !126, !alias.scope !1577, !noalias !1575
  %index.next98 = add nuw i64 %index97, 2         ; 2 uses
  %i.by = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1570

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.al, 0
  br i1 %cmp.n99, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit39.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.preheader:   ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.082.ph = phi i64 [ %i.am, %middle.block ], [ %i.x, %vector.memcheck ], [ %i.x, %iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39

_ZN8facebook5velox6StatusD2Ev.exit39:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39
  %.082 = phi i64 [ %i.cr, %_ZN8facebook5velox6StatusD2Ev.exit39 ], [ %.082.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.preheader ] ; 2 uses
  %i.bz = load i8, ptr %i.aa, align 1, !tbaa !56, !noalias !1576
  %i.ca = sext i8 %i.bz to i64
  %i.cb = mul i64 %i.ca, -4417276706812531889     ; 2 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 31)
  %i.cd = mul i64 %i.cc, -7046029288634856825
  %i.ce = xor i64 %i.cd, 2870177450012600269      ; 2 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 27)
  %i.cg = mul i64 %i.cf, -7046029288634856825
  %i.ch = add i64 %i.cg, -8796714831421723037     ; 2 uses
  %i.ci = lshr i64 %i.ch, 33
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, -4417276706812531889     ; 2 uses
  %i.cl = lshr i64 %i.ck, 29
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, 1609587929392839161      ; 2 uses
  %i.co = lshr i64 %i.cn, 32
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.082
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !126
  %i.cr = add nuw i64 %.082, 1                    ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.w
  br i1 %i.cs, label %_ZN8facebook5velox6StatusD2Ev.exit39, label %.loopexit, !llvm.loop !1571

_ZN8facebook5velox6StatusD2Ev.exit58:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_20ConstantVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01581 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_20ConstantVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.dm, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01581, i1 true)
  %i.cu = load i8, ptr %i.o, align 1, !tbaa !56, !noalias !1578
  %i.cv = sext i8 %i.cu to i64
  %i.cw = mul i64 %i.cv, -4417276706812531889     ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 31)
  %i.cy = mul i64 %i.cx, -7046029288634856825
  %i.cz = xor i64 %i.cy, 2870177450012600269      ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 27)
  %i.db = mul i64 %i.da, -7046029288634856825
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.aq = xor i32 %i.ag, -1
  %i.ar = add i32 %i.ae, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 7
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %i.au = shl nsw i64 %i.al, 3
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.au
  %i.av = xor i32 %i.ag, -1
  %i.aw = add i32 %i.ae, %i.av
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = add nsw i64 %i.al, %i.ax
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = getelementptr i8, ptr %i.ap, i64 %i.az
  %scevgep32 = getelementptr i8, ptr %i.ba, i64 8
  %scevgep33 = getelementptr i8, ptr %i.am, i64 %i.al
  %i.bb = getelementptr i8, ptr %i.am, i64 %i.al
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ax
  %scevgep34 = getelementptr i8, ptr %i.bc, i64 1
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 8589934588              ; 3 uses
  %i.bd = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = add i64 %index, %i.al                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.am, i64 %i.be
  %wide.load = load <4 x i8>, ptr %i.bf, align 1, !tbaa !56, !alias.scope !1587, !noalias !1586
  %i.bg = sext <4 x i8> %wide.load to <4 x i64>
  %i.bh = mul <4 x i64> %i.bg, splat (i64 -4417276706812531889) ; 2 uses
  %i.bi = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bh, <4 x i64> %i.bh, <4 x i64> splat (i64 31))
  %i.bj = mul <4 x i64> %i.bi, splat (i64 -7046029288634856825)
  %i.bk = xor <4 x i64> %i.bj, splat (i64 2870177450012600269) ; 2 uses
  %i.bl = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bk, <4 x i64> %i.bk, <4 x i64> splat (i64 27))
  %i.bm = mul <4 x i64> %i.bl, splat (i64 -7046029288634856825)
  %i.bn = add <4 x i64> %i.bm, splat (i64 -8796714831421723037) ; 2 uses
  %i.bo = lshr <4 x i64> %i.bn, splat (i64 33)
  %i.bp = xor <4 x i64> %i.bo, %i.bn
  %i.bq = mul <4 x i64> %i.bp, splat (i64 -4417276706812531889) ; 2 uses
  %i.br = lshr <4 x i64> %i.bq, splat (i64 29)
  %i.bs = xor <4 x i64> %i.br, %i.bq
  %i.bt = mul <4 x i64> %i.bs, splat (i64 1609587929392839161) ; 2 uses
  %i.bu = lshr <4 x i64> %i.bt, splat (i64 32)
  %i.bv = xor <4 x i64> %i.bu, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.be
  store <4 x i64> %i.bv, ptr %i.bw, align 8, !tbaa !126, !alias.scope !1588, !noalias !1587
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.preheader:   ; preds = %vector.memcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %vector.memcheck ], [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.bd, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.preheader, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ], [ %indvars.iv.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.preheader ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %i.am, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !56, !noalias !1586
  %i.ca = sext i8 %i.bz to i64
  %i.cb = mul i64 %i.ca, -4417276706812531889     ; 2 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 31)
  %i.cd = mul i64 %i.cc, -7046029288634856825
  %i.ce = xor i64 %i.cd, 2870177450012600269      ; 2 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 27)
  %i.cg = mul i64 %i.cf, -7046029288634856825
  %i.ch = add i64 %i.cg, -8796714831421723037     ; 2 uses
  %i.ci = lshr i64 %i.ch, 33
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, -4417276706812531889     ; 2 uses
  %i.cl = lshr i64 %i.ck, 29
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, 1609587929392839161      ; 2 uses
  %i.co = lshr i64 %i.cn, 32
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14, !llvm.loop !1585

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !429
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !430
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !642
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cr, ptr %i.cy, align 8, !tbaa !643
  store i8 1, ptr %3, align 8, !tbaa !645
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cr, ptr %i.cz, align 8, !tbaa !646
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS4_16FlatVectorReaderIaEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.ct, i32 noundef %i.cv, ptr noundef nonnull byval(%class.anon.1239) align 8 %2, ptr noundef nonnull byval(%class.anon.1240) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS4_16FlatVectorReaderIaEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1239) align 8 %2, ptr noundef byval(%class.anon.1240) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !642, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !643
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !634 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !637, !nonnull !79, !align !163
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !617, !noalias !1597
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !638, !nonnull !79, !align !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !640, !nonnull !79, !align !163
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bh, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56, !noalias !1597
  %i.ap = sext i8 %i.ao to i64
  %i.aq = mul i64 %i.ap, -4417276706812531889     ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 31)
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = xor i64 %i.as, 2870177450012600269      ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 27)
  %i.av = mul i64 %i.au, -7046029288634856825
  %i.aw = add i64 %i.av, -8796714831421723037     ; 2 uses
  %i.ax = lshr i64 %i.aw, 33
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -4417276706812531889     ; 2 uses
  %i.ba = lshr i64 %i.az, 29
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, 1609587929392839161      ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !126
  %i.bg = add nsw i64 %.031.i, -1
  %i.bh = and i64 %i.bg, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bh, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1591

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = sdiv i32 %0, 64                         ; 2 uses
  %i.bj = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask.i.i35, -1
  %i.bm = sub nsw i32 64, %i.bj
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bl, %i.bn
  %i.bp = load i8, ptr %2, align 8, !tbaa !642, !range !78, !noundef !79
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !643
  %i.bs = sext i32 %i.bi to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !126
  %i.bv = xor i8 %i.bp, 1
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = xor i64 %i.bu, %i.bx
  %i.bz = and i64 %i.by, %i.bo                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bz, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = shl nsw i32 %i.bi, 6
  %i.cc = sext i32 %i.cb to i64
  %.pre.i38 = load ptr, ptr %i.ca, align 8, !tbaa !634 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !637, !nonnull !79, !align !163
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !617, !noalias !1598
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !638, !nonnull !79, !align !163
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !640, !nonnull !79, !align !163
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i39

_ZN8facebook5velox6StatusD2Ev.exit20.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %.preheader.i37
  %.031.i40 = phi i64 [ %i.bz, %.preheader.i37 ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit20.i39 ] ; 3 uses
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  %i.cm = or disjoint i64 %i.cl, %i.cc            ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cf, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !56, !noalias !1598
  %i.cp = sext i8 %i.co to i64
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cs, 2870177450012600269      ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037     ; 2 uses
  %i.cx = lshr i64 %i.cw, 33
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4417276706812531889     ; 2 uses
  %i.da = lshr i64 %i.cz, 29
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 1609587929392839161      ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cm
  store i64 %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = add i64 %.031.i40, -1
  %i.dh = and i64 %i.dg, %.031.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.dh, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit20.i39, !llvm.loop !1591

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %bb.e, %bb.d
  %i.di = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3352 = icmp sgt i32 %i.di, %i.d
  br i1 %.not3352, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, %.lr.ph
  %i.dj = phi i32 [ %i.dl, %.lr.ph ], [ %i.di, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ] ; 2 uses
  %.053 = phi i32 [ %i.dj, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42 ]
  %i.dk = sdiv i32 %.053, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dk)
  %i.dl = add nsw i32 %i.dj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dl, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1594

bb.f:                                             ; preds = %._crit_edge
  %i.dm = ashr i32 %1, 6
  %i.dn = and i32 %1, 63
  %i.do = zext nneg i32 %i.dn to i64
  %notmask.i43 = shl nsw i64 -1, %i.do
  %i.dp = xor i64 %notmask.i43, -1
  %i.dq = load i8, ptr %2, align 8, !tbaa !642, !range !78, !noundef !79
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !643
  %i.dt = sext i32 %i.dm to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !126
  %i.dw = xor i8 %i.dq, 1
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = xor i64 %i.dv, %i.dy
  %i.ea = and i64 %i.dz, %i.dp                    ; 2 uses
  %.not.i44 = icmp eq i64 %i.ea, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = sext i32 %i.d to i64
  %.pre.i46 = load ptr, ptr %i.eb, align 8, !tbaa !634 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !637, !nonnull !79, !align !163
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !617, !noalias !1599
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre.i46, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !638, !nonnull !79, !align !163
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !640, !nonnull !79, !align !163
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i47

_ZN8facebook5velox6StatusD2Ev.exit20.i47:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %.preheader.i45
  %.031.i48 = phi i64 [ %i.ea, %.preheader.i45 ], [ %i.fh, %_ZN8facebook5velox6StatusD2Ev.exit20.i47 ] ; 3 uses
  %i.el = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.em = or disjoint i64 %i.el, %i.ec            ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.ef, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !56, !noalias !1599
  %i.ep = sext i8 %i.eo to i64
  %i.eq = mul i64 %i.ep, -4417276706812531889     ; 2 uses
  %i.er = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 31)
  %i.es = mul i64 %i.er, -7046029288634856825
  %i.et = xor i64 %i.es, 2870177450012600269      ; 2 uses
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 27)
  %i.ev = mul i64 %i.eu, -7046029288634856825
  %i.ew = add i64 %i.ev, -8796714831421723037     ; 2 uses
  %i.ex = lshr i64 %i.ew, 33
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = mul i64 %i.ey, -4417276706812531889     ; 2 uses
  %i.fa = lshr i64 %i.ez, 29
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = mul i64 %i.fb, 1609587929392839161      ; 2 uses
  %i.fd = lshr i64 %i.fc, 32
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.em
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !126
  %i.fg = add nsw i64 %.031.i48, -1
  %i.fh = and i64 %i.fg, %.031.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.fh, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i47, !llvm.loop !1591

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i47, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_16FlatVectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !645, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !646
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %.pre81 = load ptr, ptr %i.k, align 8, !tbaa !634 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre81, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !637, !nonnull !79, !align !163
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !617, !noalias !1610
  %i.q = getelementptr inbounds nuw i8, ptr %.pre81, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !638, !nonnull !79, !align !163
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !640, !nonnull !79, !align !163
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

bb.b:                                             ; preds = %bb.a
  %i.v = shl i32 %1, 6                            ; 5 uses
  %i.w = add i32 %i.v, 64
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %.not79 = icmp eq i32 %i.v, -64
  br i1 %.not79, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph: ; preds = %bb.b
  %i.y = sext i32 %i.v to i64                     ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !634 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !637, !nonnull !79, !align !163
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !617, !noalias !1611 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !638, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !640, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !342 ; 4 uses
  %i.ai = or disjoint i64 %i.y, 1
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.x) ; 2 uses
  %i.ak = sub i64 %i.aj, %i.y                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph
  %i.al = or disjoint i64 %i.y, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.x)
  %i.am = xor i64 %i.y, -1
  %i.an = add i64 %umax, %i.am                    ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.v, %i.ao
  %i.aq = icmp slt i32 %i.ap, %i.v
  %i.ar = icmp ugt i64 %i.an, 4294967295
  %i.as = or i1 %i.aq, %i.ar
  br i1 %i.as, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.at = shl nsw i64 %i.y, 3
  %scevgep = getelementptr nuw i8, ptr %i.ah, i64 %i.at
  %i.au = or disjoint i64 %i.y, 1
  %umax87 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.x) ; 2 uses
  %i.av = shl nsw i64 %umax87, 3
  %scevgep88 = getelementptr i8, ptr %i.ah, i64 %i.av
  %scevgep89 = getelementptr i8, ptr %i.ac, i64 %i.y
  %scevgep90 = getelementptr i8, ptr %i.ac, i64 %umax87
  %bound0 = icmp ult ptr %scevgep, %scevgep90
  %bound1 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aw = and i64 %i.aj, 1                        ; 2 uses
  %n.vec = sub i64 %i.ak, %i.aw                   ; 2 uses
  %i.ax = add i64 %n.vec, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add nuw i64 %index, %i.y                ; 2 uses
  %i.az = shl i64 %i.ay, 32
  %i.ba = ashr exact i64 %i.az, 32
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 %i.ba
  %wide.load = load <4 x i8>, ptr %i.bb, align 1, !tbaa !56, !alias.scope !1612, !noalias !1611
  %i.bc = sext <4 x i8> %wide.load to <4 x i64>
  %i.bd = mul <4 x i64> %i.bc, splat (i64 -4417276706812531889) ; 2 uses
  %i.be = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bd, <4 x i64> %i.bd, <4 x i64> splat (i64 31))
  %i.bf = mul <4 x i64> %i.be, splat (i64 -7046029288634856825)
  %i.bg = xor <4 x i64> %i.bf, splat (i64 2870177450012600269) ; 2 uses
  %i.bh = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bg, <4 x i64> %i.bg, <4 x i64> splat (i64 27))
  %i.bi = mul <4 x i64> %i.bh, splat (i64 -7046029288634856825)
  %i.bj = add <4 x i64> %i.bi, splat (i64 -8796714831421723037) ; 2 uses
  %i.bk = lshr <4 x i64> %i.bj, splat (i64 33)
  %i.bl = xor <4 x i64> %i.bk, %i.bj
  %i.bm = mul <4 x i64> %i.bl, splat (i64 -4417276706812531889) ; 2 uses
  %i.bn = lshr <4 x i64> %i.bm, splat (i64 29)
  %i.bo = xor <4 x i64> %i.bn, %i.bm
  %i.bp = mul <4 x i64> %i.bo, splat (i64 1609587929392839161) ; 2 uses
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 32)
  %i.br = xor <4 x i64> %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ay
  store <4 x i64> %i.br, ptr %i.bs, align 8, !tbaa !126, !alias.scope !1613, !noalias !1612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit35.preheader

_ZN8facebook5velox6StatusD2Ev.exit35.preheader:   ; preds = %vector.memcheck, %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph, %middle.block
  %.078.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %vector.scevcheck ], [ %i.y, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph ], [ %i.ax, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.preheader, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.078 = phi i64 [ %i.co, %_ZN8facebook5velox6StatusD2Ev.exit35 ], [ %.078.ph, %_ZN8facebook5velox6StatusD2Ev.exit35.preheader ] ; 3 uses
  %sext = shl i64 %.078, 32
  %i.bu = ashr exact i64 %sext, 32
  %i.bv = getelementptr inbounds i8, ptr %i.ac, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !56, !noalias !1611
  %i.bx = sext i8 %i.bw to i64
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
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.078
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !126
  %i.co = add nuw i64 %.078, 1                    ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.x
  br i1 %i.cp, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %.loopexit, !llvm.loop !1608

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph
  %.01577 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS1_16FlatVectorReaderIaEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph ], [ %i.dm, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01577, i1 true)
  %i.cr = or disjoint i64 %i.cq, %i.m             ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.p, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !56, !noalias !1610
  %i.cu = sext i8 %i.ct to i64
  %i.cv = mul i64 %i.cu, -4417276706812531889     ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 31)
  %i.cx = mul i64 %i.cw, -7046029288634856825
  %i.cy = xor i64 %i.cx, 2870177450012600269      ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 27)
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = add i64 %i.da, -8796714831421723037     ; 2 uses
  %i.dc = lshr i64 %i.db, 33
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -4417276706812531889     ; 2 uses
  %i.df = lshr i64 %i.de, 29
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, 1609587929392839161      ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cr
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !126
  %i.dl = add i64 %.01577, -1
  %i.dm = and i64 %i.dl, %.01577                  ; 2 uses
  %.not = icmp eq i64 %i.dm, 0
  br i1 %.not, label %.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit54, !llvm.loop !1609

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit54, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1265) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1266, align 8           ; 6 uses
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !467, !noalias !1617
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !468, !range !78, !noalias !1617, !noundef !79
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !653, !nonnull !79, !align !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !655, !nonnull !79, !align !163
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !342
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit14 ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ar, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !472, !range !78, !noalias !1617, !noundef !79
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !473, !noalias !1617
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !474, !noalias !1617
  %i.be = shl nsw i64 %indvars.iv, 2
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67, !noalias !1617
  br label %_ZN8facebook5velox6StatusD2Ev.exit14

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %bb.i ]
  %i.bh = sext i32 %.0.i.i.i to i64
  %i.bi = getelementptr inbounds i8, ptr %i.ao, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !56, !noalias !1617
  %i.bk = sext i8 %i.bj to i64
  %i.bl = mul i64 %i.bk, -4417276706812531889     ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 31)
  %i.bn = mul i64 %i.bm, -7046029288634856825
  %i.bo = xor i64 %i.bn, 2870177450012600269      ; 2 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 27)
  %i.bq = mul i64 %i.bp, -7046029288634856825
  %i.br = add i64 %i.bq, -8796714831421723037     ; 2 uses
  %i.bs = lshr i64 %i.br, 33
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, -4417276706812531889     ; 2 uses
  %i.bv = lshr i64 %i.bu, 29
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, 1609587929392839161      ; 2 uses
  %i.by = lshr i64 %i.bx, 32
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1616

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !429
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !430
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !657
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !658
  store i8 1, ptr %3, align 8, !tbaa !660
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !661
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS4_12VectorReaderIaEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cd, i32 noundef %i.cf, ptr noundef nonnull byval(%class.anon.1266) align 8 %2, ptr noundef nonnull byval(%class.anon.1267) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS4_12VectorReaderIaEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1266) align 8 %2, ptr noundef byval(%class.anon.1267) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !657, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !658
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !647 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !650, !nonnull !79, !align !163
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !652, !noalias !1626, !nonnull !79, !align !163 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !467, !noalias !1626
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !468, !range !78, !noalias !1626, !noundef !79
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !653, !nonnull !79, !align !163
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !655, !nonnull !79, !align !163
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !342
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.by, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %i.d, %i.at             ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.aj, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.ak, align 1, !tbaa !472, !range !78, !noalias !1626, !noundef !79
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.am, align 8, !tbaa !473, !noalias !1626
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

bb.g:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !474, !noalias !1626
  %i.ba = shl nsw i64 %i.av, 2
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67, !noalias !1626
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.ay, %bb.f ], [ %i.au, %bb.d ]
  %i.bd = sext i32 %.0.i.i.i.i to i64
  %i.be = getelementptr inbounds i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !56, !noalias !1626
  %i.bg = sext i8 %i.bf to i64
  %i.bh = mul i64 %i.bg, -4417276706812531889     ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 31)
  %i.bj = mul i64 %i.bi, -7046029288634856825
  %i.bk = xor i64 %i.bj, 2870177450012600269      ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 27)
  %i.bm = mul i64 %i.bl, -7046029288634856825
  %i.bn = add i64 %i.bm, -8796714831421723037     ; 2 uses
  %i.bo = lshr i64 %i.bn, 33
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, -4417276706812531889     ; 2 uses
  %i.br = lshr i64 %i.bq, 29
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, 1609587929392839161      ; 2 uses
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !126
  %i.bx = add nsw i64 %.031.i, -1
  %i.by = and i64 %i.bx, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.by, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1620

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = sdiv i32 %0, 64                         ; 2 uses
  %i.ca = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cb
  %i.cc = xor i64 %notmask.i.i35, -1
  %i.cd = sub nsw i32 64, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %i.cc, %i.ce
  %i.cg = load i8, ptr %2, align 8, !tbaa !657, !range !78, !noundef !79
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !658
  %i.cj = sext i32 %i.bz to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !126
  %i.cm = xor i8 %i.cg, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = and i64 %i.cp, %i.cf                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cq, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = shl nsw i32 %i.bz, 6
  %.pre.i38 = load ptr, ptr %i.cr, align 8, !tbaa !647 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !650, !nonnull !79, !align !163
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !652, !noalias !1627, !nonnull !79, !align !163 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !467, !noalias !1627
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 58
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !468, !range !78, !noalias !1627, !noundef !79
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 59
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !653, !nonnull !79, !align !163
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !655, !nonnull !79, !align !163
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !342
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i40, %.preheader.i37
  %.031.i39 = phi i64 [ %i.cq, %.preheader.i37 ], [ %i.ep, %_ZN8facebook5velox6StatusD2Ev.exit20.i40 ] ; 3 uses
  %i.dj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i39, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = or disjoint i32 %i.cs, %i.dk            ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  br i1 %i.da, label %_ZN8facebook5velox6StatusD2Ev.exit20.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = load i8, ptr %i.db, align 1, !tbaa !472, !range !78, !noalias !1627, !noundef !79
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %i.dd, align 8, !tbaa !473, !noalias !1627
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i40

bb.m:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !474, !noalias !1627
  %i.dr = shl nsw i64 %i.dm, 2
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !67, !noalias !1627
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i40

_ZN8facebook5velox6StatusD2Ev.exit20.i40:         ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.dt, %bb.m ], [ %i.dp, %bb.l ], [ %i.dl, %bb.j ]
  %i.du = sext i32 %.0.i.i.i.i41 to i64
  %i.dv = getelementptr inbounds i8, ptr %i.cx, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !56, !noalias !1627
  %i.dx = sext i8 %i.dw to i64
  %i.dy = mul i64 %i.dx, -4417276706812531889     ; 2 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 31)
  %i.ea = mul i64 %i.dz, -7046029288634856825
  %i.eb = xor i64 %i.ea, 2870177450012600269      ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 27)
  %i.ed = mul i64 %i.ec, -7046029288634856825
  %i.ee = add i64 %i.ed, -8796714831421723037     ; 2 uses
  %i.ef = lshr i64 %i.ee, 33
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.eg, -4417276706812531889     ; 2 uses
  %i.ei = lshr i64 %i.eh, 29
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = mul i64 %i.ej, 1609587929392839161      ; 2 uses
  %i.el = lshr i64 %i.ek, 32
  %i.em = xor i64 %i.el, %i.ek
  %i.en = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dm
  store i64 %i.em, ptr %i.en, align 8, !tbaa !126
  %i.eo = add i64 %.031.i39, -1
  %i.ep = and i64 %i.eo, %.031.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.ep, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, label %bb.j, !llvm.loop !1620

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i40, %bb.i, %bb.h
  %i.eq = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.eq, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43, %.lr.ph
  %i.er = phi i32 [ %i.et, %.lr.ph ], [ %i.eq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.er, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit43 ]
  %i.es = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.es)
  %i.et = add nsw i32 %i.er, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1623

bb.n:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i44 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i44, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !657, !range !78, !noundef !79
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !658
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !126
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.fi, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i47 = load ptr, ptr %i.fj, align 8, !tbaa !647 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !650, !nonnull !79, !align !163
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !652, !noalias !1628, !nonnull !79, !align !163 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !467, !noalias !1628
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 58
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !468, !range !78, !noalias !1628, !noundef !79
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 59
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre.i47, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !653, !nonnull !79, !align !163
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !655, !nonnull !79, !align !163
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !342
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %.preheader.i46
  %.031.i48 = phi i64 [ %i.fi, %.preheader.i46 ], [ %i.hg, %_ZN8facebook5velox6StatusD2Ev.exit20.i49 ] ; 3 uses
  %i.ga = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i48, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = or disjoint i32 %i.d, %i.gb             ; 2 uses
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  br i1 %i.fr, label %_ZN8facebook5velox6StatusD2Ev.exit20.i49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ge = load i8, ptr %i.fs, align 1, !tbaa !472, !range !78, !noalias !1628, !noundef !79
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !473, !noalias !1628
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

bb.r:                                             ; preds = %bb.p
  %i.gh = load ptr, ptr %i.ft, align 8, !tbaa !474, !noalias !1628
  %i.gi = shl nsw i64 %i.gd, 2
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !67, !noalias !1628
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

_ZN8facebook5velox6StatusD2Ev.exit20.i49:         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i50 = phi i32 [ %i.gk, %bb.r ], [ %i.gg, %bb.q ], [ %i.gc, %bb.o ]
  %i.gl = sext i32 %.0.i.i.i.i50 to i64
  %i.gm = getelementptr inbounds i8, ptr %i.fo, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !56, !noalias !1628
  %i.go = sext i8 %i.gn to i64
  %i.gp = mul i64 %i.go, -4417276706812531889     ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 31)
  %i.gr = mul i64 %i.gq, -7046029288634856825
  %i.gs = xor i64 %i.gr, 2870177450012600269      ; 2 uses
  %i.gt = call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 27)
  %i.gu = mul i64 %i.gt, -7046029288634856825
  %i.gv = add i64 %i.gu, -8796714831421723037     ; 2 uses
  %i.gw = lshr i64 %i.gv, 33
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = mul i64 %i.gx, -4417276706812531889     ; 2 uses
  %i.gz = lshr i64 %i.gy, 29
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = mul i64 %i.ha, 1609587929392839161      ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = xor i64 %i.hc, %i.hb
  %i.he = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gd
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !126
  %i.hf = add nsw i64 %.031.i48, -1
  %i.hg = and i64 %i.hf, %.031.i48                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hg, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !1620

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23XxHash64TinyIntFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJaEEEJaEEEE7iterateIJNS3_12VectorReaderIaEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !660, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !661
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %.pre85 = load ptr, ptr %i.k, align 8, !tbaa !647 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre85, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !650, !nonnull !79, !align !163
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !652, !noalias !1635, !nonnull !79, !align !163 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !467, !noalias !1635
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.s = load i8, ptr %i.r, align 2, !tbaa !468, !range !78, !noalias !1635, !noundef !79
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 59
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre85, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !653, !nonnull !79, !align !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !655, !nonnull !79, !align !163
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !342
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ac = shl i32 %1, 6                           ; 3 uses
  %i.ad = add i32 %i.ac, 64
  %i.ae = sext i32 %i.ad to i64
  %.not83 = icmp eq i32 %i.ac, -64
  br i1 %.not83, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !647 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !650, !nonnull !79, !align !163
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !652, !noalias !1636, !nonnull !79, !align !163 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !467, !noalias !1636
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !468, !range !78, !noalias !1636, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !653, !nonnull !79, !align !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !655, !nonnull !79, !align !163
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !342
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %_ZN8facebook5velox6StatusD2Ev.exit35
  %.081 = phi i64 [ %i.af, %.lr.ph82 ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit35 ] ; 4 uses
  %i.ax = trunc i64 %.081 to i32
  br i1 %i.ao, label %_ZN8facebook5velox6StatusD2Ev.exit35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.ap, align 1, !tbaa !472, !range !78, !noalias !1636, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.ar, align 8, !tbaa !473, !noalias !1636
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

bb.f:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !474, !noalias !1636
  %sext.i = shl i64 %.081, 32
  %i.bc = ashr exact i64 %sext.i, 30
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67, !noalias !1636
  br label %_ZN8facebook5velox6StatusD2Ev.exit35

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.be, %bb.f ], [ %i.ba, %bb.e ], [ %i.ax, %bb.c ]
  %i.bf = sext i32 %.0.i.i.i to i64
  %i.bg = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !56, !noalias !1636
  %i.bi = sext i8 %i.bh to i64
  %i.bj = mul i64 %i.bi, -4417276706812531889     ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 31)
  %i.bl = mul i64 %i.bk, -7046029288634856825
  %i.bm = xor i64 %i.bl, 2870177450012600269      ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 27)
  %i.bo = mul i64 %i.bn, -7046029288634856825
  %i.bp = add i64 %i.bo, -8796714831421723037     ; 2 uses
  %i.bq = lshr i64 %i.bp, 33
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, -4417276706812531889     ; 2 uses
  %i.bt = lshr i64 %i.bs, 29
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, 1609587929392839161      ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.081
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !126
  %i.bz = add nuw i64 %.081, 1                    ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.ae
  br i1 %i.ca, label %bb.c, label %.loopexit, !llvm.loop !1633

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit57
  %.01580 = phi i64 [ %i.j, %.lr.ph ], [ %i.dh, %_ZN8facebook5velox6StatusD2Ev.exit57 ] ; 3 uses
  %i.cb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = or disjoint i32 %i.l, %i.cc             ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  br i1 %i.t, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = load i8, ptr %i.u, align 1, !tbaa !472, !range !78, !noalias !1635, !noundef !79
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = load i32, ptr %i.w, align 8, !tbaa !473, !noalias !1635
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

bb.j:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !474, !noalias !1635
  %i.cj = shl nsw i64 %i.ce, 2
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !67, !noalias !1635
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %bb.j, %bb.i, %bb.g
  %.0.i.i.i44 = phi i32 [ %i.cl, %bb.j ], [ %i.ch, %bb.i ], [ %i.cd, %bb.g ]
  %i.cm = sext i32 %.0.i.i.i44 to i64
  %i.cn = getelementptr inbounds i8, ptr %i.q, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !56, !noalias !1635
  %i.cp = sext i8 %i.co to i64
  %i.cq = mul i64 %i.cp, -4417276706812531889     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cs, 2870177450012600269      ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.cv = mul i64 %i.cu, -7046029288634856825
  %i.cw = add i64 %i.cv, -8796714831421723037     ; 2 uses
  %i.cx = lshr i64 %i.cw, 33
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4417276706812531889     ; 2 uses
  %i.da = lshr i64 %i.cz, 29
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 1609587929392839161      ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ce
  store i64 %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = add i64 %.01580, -1
  %i.dh = and i64 %i.dg, %.01580                  ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !1634

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZN8facebook5velox6StatusD2Ev.exit57, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EERKSF_INS1_17SignatureVariableESaISQ_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !60
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CombineHashFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJllEEEJllEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CombineHashFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJllEEEJllEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EE.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CombineHashFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJllEEEJllEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EEE8instance) #26
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CombineHashFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJllEEEJllEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISJ_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_:bb.a
  %i.be = mul i64 %i.bc, 31
  %i.bf = add i64 %i.be, %i.bd
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ao, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !126, !alias.scope !1725, !noalias !1726
  store <4 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !126, !alias.scope !1725, !noalias !1726
  store <4 x i64> %broadcast.splat, ptr %i.bh, align 8, !tbaa !126, !alias.scope !1725, !noalias !1726
  store <4 x i64> %broadcast.splat, ptr %i.bi, align 8, !tbaa !126, !alias.scope !1725, !noalias !1726
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader, label %vec.epilog.ph, !prof !440

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.as, 8589934590            ; 3 uses
  %i.bk = add nsw i64 %n.vec19, %i.al
  %i.bl = load i64, ptr %.pre.i, align 8, !tbaa !126, !alias.scope !1721, !noalias !1722
  %i.bm = load i64, ptr %.pre30.i, align 8, !tbaa !126, !alias.scope !1723, !noalias !1724
  %i.bn = mul i64 %i.bl, 31
  %i.bo = add i64 %i.bn, %i.bm
  %broadcast.splatinsert21 = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat22 = shufflevector <2 x i64> %broadcast.splatinsert21, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep26 = getelementptr [8 x i8], ptr %i.ao, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index20
  store <2 x i64> %broadcast.splat22, ptr %gep27, align 8, !tbaa !126, !alias.scope !1725, !noalias !1726
  %index.next23 = add nuw i64 %index20, 2         ; 2 uses
  %i.bp = icmp eq i64 %index.next23, %n.vec19
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1719

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.as, %n.vec19
  br i1 %cmp.n24, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ] ; 4 uses
  %i.bq = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.br = sub i32 %i.ae, %i.bq
  %.neg = add i32 %i.bq, 1
  %xtraiter = and i32 %i.br, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol

_ZN8facebook5velox6StatusD2Ev.exit17.i.prol:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader
  %i.bs = load i64, ptr %.pre.i, align 8, !tbaa !126, !noalias !1722
  %i.bt = load i64, ptr %.pre30.i, align 8, !tbaa !126, !noalias !1724
  %i.bu = mul i64 %i.bs, 31
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.i.ph
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !126
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, 1
  br label %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit

_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit17.i.preheader ], [ %indvars.iv.next.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol ]
  %i.bx = icmp eq i32 %i.ae, %.neg
  br i1 %i.bx, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i

_ZN8facebook5velox6StatusD2Ev.exit17.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit17.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZN8facebook5velox6StatusD2Ev.exit17.i ], [ %indvars.iv.i.unr, %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit ] ; 3 uses
  %i.by = load i64, ptr %.pre.i, align 8, !tbaa !126, !noalias !1722
  %i.bz = load i64, ptr %.pre30.i, align 8, !tbaa !126, !noalias !1724
  %i.ca = mul i64 %i.by, 31
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.i
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !126
  %i.cd = load i64, ptr %.pre.i, align 8, !tbaa !126, !noalias !1722
  %i.ce = load i64, ptr %.pre30.i, align 8, !tbaa !126, !noalias !1724
  %i.cf = mul i64 %i.cd, 31
  %i.cg = add i64 %i.cf, %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !126
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ae, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit17.i, !llvm.loop !1720

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cj = load ptr, ptr %1, align 8, !tbaa !366   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !429
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !430
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.co, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.cp, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !682
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cj, ptr %i.cq, align 8, !tbaa !683
  store i8 1, ptr %4, align 8, !tbaa !685
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cj, ptr %i.cr, align 8, !tbaa !686
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cl, i32 noundef %i.cn, ptr noundef nonnull byval(%class.anon.1344) align 8 %3, ptr noundef nonnull byval(%class.anon.1345) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit17.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit17.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1344) align 8 %2, ptr noundef byval(%class.anon.1345) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !682, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !683
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1757 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !342
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.al, i64 %i.ac
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i

_ZN8facebook5velox6StatusD2Ev.exit23.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i, %.preheader.i
  %.034.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.as, %_ZN8facebook5velox6StatusD2Ev.exit23.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i, i1 true)
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1758
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !126, !noalias !1759
  %i.ap = mul i64 %i.an, 31
  %i.aq = add i64 %i.ap, %i.ao
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.am
  store i64 %i.aq, ptr %gep.i, align 8, !tbaa !126
  %i.ar = add nsw i64 %.034.i, -1
  %i.as = and i64 %i.ar, %.034.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.as, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit23.i, !llvm.loop !1731

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = sdiv i32 %0, 64                         ; 2 uses
  %i.au = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i35, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = load i8, ptr %2, align 8, !tbaa !682, !range !78, !noundef !79
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !683
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !126
  %i.bg = xor i8 %i.ba, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bf, %i.bi
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = shl nsw i32 %i.at, 6
  %i.bn = sext i32 %i.bm to i64
  %.pre.i38 = load ptr, ptr %i.bl, align 8, !tbaa !1757 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !342
  %invariant.gep.i39 = getelementptr [8 x i8], ptr %i.bw, i64 %i.bn
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i40

_ZN8facebook5velox6StatusD2Ev.exit23.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i40, %.preheader.i37
  %.034.i41 = phi i64 [ %i.bk, %.preheader.i37 ], [ %i.cd, %_ZN8facebook5velox6StatusD2Ev.exit23.i40 ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i41, i1 true)
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !126, !noalias !1760
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !126, !noalias !1761
  %i.ca = mul i64 %i.by, 31
  %i.cb = add i64 %i.ca, %i.bz
  %gep.i42 = getelementptr [8 x i8], ptr %invariant.gep.i39, i64 %i.bx
  store i64 %i.cb, ptr %gep.i42, align 8, !tbaa !126
  %i.cc = add i64 %.034.i41, -1
  %i.cd = and i64 %i.cc, %.034.i41                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.cd, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit23.i40, !llvm.loop !1731

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i40, %bb.e, %bb.d
  %i.ce = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3361 = icmp sgt i32 %i.ce, %i.d
  br i1 %.not3361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %i.cf = load i8, ptr %3, align 8, !tbaa !685, !range !78, !noundef !79
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !686
  %i.ci = xor i8 %i.cf, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.cl, align 8        ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  %i.cp = phi i32 [ %i.ce, %.lr.ph ], [ %i.er, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %.062 = phi i32 [ %i.c, %.lr.ph ], [ %i.cp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %i.cq = sdiv i32 %.062, 64                      ; 3 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !126
  %i.cu = xor i64 %i.ct, %i.ck                    ; 2 uses
  switch i64 %i.cu, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i: ; preds = %bb.f
  %i.cv = shl nsw i32 %i.cq, 6
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !342
  %invariant.gep.i46 = getelementptr [8 x i8], ptr %i.dc, i64 %i.cw
  br label %_ZN8facebook5velox6StatusD2Ev.exit55.i

bb.g:                                             ; preds = %bb.f
  %i.dd = shl nsw i32 %i.cq, 6                    ; 2 uses
  %i.de = add i32 %i.dd, 64
  %i.df = sext i32 %i.de to i64                   ; 3 uses
  %.0.off = add i32 %.062, 127
  %.not80.i = icmp ult i32 %.0.off, 64
  br i1 %.not80.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dg = sext i32 %i.dd to i64                   ; 9 uses
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !675, !nonnull !79, !align !163 ; 4 uses
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !676, !nonnull !79, !align !163 ; 4 uses
  %i.dj = load ptr, ptr %i.co, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !342 ; 5 uses
  %i.dn = or disjoint i64 %i.dg, 1
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.df) ; 2 uses
  %i.do = sub i64 %umax84, %i.dg                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.do, 2
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dp = shl nsw i64 %i.dg, 3
  %scevgep = getelementptr nuw i8, ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dq = or disjoint i64 %i.dg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.df)
  %i.dr = shl nsw i64 %umax, 3
  %scevgep78 = getelementptr i8, ptr %i.dm, i64 %i.dr ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep80 = getelementptr i8, ptr %i.di, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep79
  %bound1 = icmp ult ptr %i.dh, %scevgep78
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %i.di, %scevgep78
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check85 = icmp ult i64 %i.do, 16
  %i.ds = and i64 %umax84, 1                      ; 3 uses
  %n.vec86 = sub i64 %i.do, %i.ds                 ; 3 uses
  %i.dt = add i64 %n.vec86, %i.dg                 ; 2 uses
  %i.du = load i64, ptr %i.dh, align 8, !tbaa !126, !alias.scope !1762, !noalias !1763
  %i.dv = load i64, ptr %i.di, align 8, !tbaa !126, !alias.scope !1764, !noalias !1765
  %i.dw = mul i64 %i.du, 31
  %i.dx = add i64 %i.dw, %i.dv                    ; 2 uses
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.dm, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  store <4 x i64> %broadcast.splat, ptr %i.dy, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  store <4 x i64> %broadcast.splat, ptr %i.dz, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  store <4 x i64> %broadcast.splat, ptr %i.ea, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec86
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !1744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert88 = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat89 = shufflevector <2 x i64> %broadcast.splatinsert88, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep95 = getelementptr [8 x i8], ptr %i.dm, i64 %i.dg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %gep96 = getelementptr [8 x i8], ptr %invariant.gep95, i64 %index87
  store <2 x i64> %broadcast.splat89, ptr %gep96, align 8, !tbaa !126, !alias.scope !1766, !noalias !1767
  %index.next90 = add nuw i64 %index87, 2         ; 2 uses
  %i.ec = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1745

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.ds, 0
  br i1 %cmp.n91, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader: ; preds = %middle.block, %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.079.i.ph = phi i64 [ %i.dt, %middle.block ], [ %i.dg, %vector.memcheck ], [ %i.dg, %iter.check ], [ %i.dt, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit36.i

_ZN8facebook5velox6StatusD2Ev.exit36.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit36.i
  %.079.i = phi i64 [ %i.ei, %_ZN8facebook5velox6StatusD2Ev.exit36.i ], [ %.079.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit36.i.preheader ] ; 2 uses
  %i.ed = load i64, ptr %i.dh, align 8, !tbaa !126, !noalias !1763
  %i.ee = load i64, ptr %i.di, align 8, !tbaa !126, !noalias !1765
  %i.ef = mul i64 %i.ed, 31
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.079.i
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !126
  %i.ei = add nuw i64 %.079.i, 1                  ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.df
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit36.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, !llvm.loop !1746

_ZN8facebook5velox6StatusD2Ev.exit55.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit55.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i
  %.01578.i = phi i64 [ %i.cu, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i ], [ %i.eq, %_ZN8facebook5velox6StatusD2Ev.exit55.i ] ; 3 uses
  %i.ek = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01578.i, i1 true)
  %i.el = load i64, ptr %i.cx, align 8, !tbaa !126, !noalias !1768
  %i.em = load i64, ptr %i.cy, align 8, !tbaa !126, !noalias !1769
  %i.en = mul i64 %i.el, 31
  %i.eo = add i64 %i.en, %i.em
  %gep.i47 = getelementptr [8 x i8], ptr %invariant.gep.i46, i64 %i.ek
  store i64 %i.eo, ptr %gep.i47, align 8, !tbaa !126
  %i.ep = add i64 %.01578.i, -1
  %i.eq = and i64 %i.ep, %.01578.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.eq, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit55.i, !llvm.loop !1751

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36.i, %_ZN8facebook5velox6StatusD2Ev.exit55.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.er = add nsw i32 %i.cp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.er, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1752

bb.h:                                             ; preds = %._crit_edge
  %i.es = ashr i32 %1, 6
  %i.et = and i32 %1, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i49 = shl nsw i64 -1, %i.eu
  %i.ev = xor i64 %notmask.i49, -1
  %i.ew = load i8, ptr %2, align 8, !tbaa !682, !range !78, !noundef !79
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !683
  %i.ez = sext i32 %i.es to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !126
  %i.fc = xor i8 %i.ew, 1
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = xor i64 %i.fb, %i.fe
  %i.fg = and i64 %i.ff, %i.ev                    ; 2 uses
  %.not.i50 = icmp eq i64 %i.fg, 0
  br i1 %.not.i50, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.h
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = sext i32 %i.d to i64
  %.pre.i52 = load ptr, ptr %i.fh, align 8, !tbaa !1757 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !675, !nonnull !79, !align !163
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !676, !nonnull !79, !align !163
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !677, !nonnull !79, !align !163
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !679, !nonnull !79, !align !163
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !342
  %invariant.gep.i53 = getelementptr [8 x i8], ptr %i.fr, i64 %i.fi
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i54

_ZN8facebook5velox6StatusD2Ev.exit23.i54:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i54, %.preheader.i51
  %.034.i55 = phi i64 [ %i.fg, %.preheader.i51 ], [ %i.fy, %_ZN8facebook5velox6StatusD2Ev.exit23.i54 ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.034.i55, i1 true)
  %i.ft = load i64, ptr %i.fk, align 8, !tbaa !126, !noalias !1770
  %i.fu = load i64, ptr %i.fm, align 8, !tbaa !126, !noalias !1771
  %i.fv = mul i64 %i.ft, 31
  %i.fw = add i64 %i.fv, %i.fu
  %gep.i56 = getelementptr [8 x i8], ptr %invariant.gep.i53, i64 %i.fs
  store i64 %i.fw, ptr %gep.i56, align 8, !tbaa !126
  %i.fx = add nsw i64 %.034.i55, -1
  %i.fy = and i64 %i.fx, %.034.i55                ; 2 uses
  %.not10.i57 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit23.i54, !llvm.loop !1731

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i54, %_ZN8facebook5velox6StatusD2Ev.exit23.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1355) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1370, align 8           ; 8 uses
  %4 = alloca %class.anon.1371, align 8           ; 8 uses
  %5 = alloca %class.anon.1367, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !366    ; 2 uses
  %.not.i.i6.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i.i10.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i.i10.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i11, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.o
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !31

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i11 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i11, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !126
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !31

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !126
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !430 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !429 ; 4 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = sext i32 %i.ag to i64                   ; 8 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !688 ; 7 uses
  %.pre27.i = load ptr, ptr %i.aj, align 8, !tbaa !689
  %.pre28.i = load ptr, ptr %i.ak, align 8, !tbaa !690
  %i.am = load ptr, ptr %.pre27.i, align 8, !tbaa !351, !noalias !1783 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre28.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !342 ; 7 uses
  %i.aq = xor i32 %i.ag, -1
  %i.ar = add i32 %i.ae, %i.aq                    ; 3 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.au = shl nsw i64 %i.al, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.av = xor i32 %i.ag, -1
  %i.aw = add i32 %i.ae, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nsw i64 %i.al, %i.ax
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, 8                    ; 2 uses
  %scevgep12 = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %scevgep13 = getelementptr i8, ptr %.pre.i, i64 8
  %scevgep14 = getelementptr i8, ptr %i.am, i64 %i.au
  %scevgep15 = getelementptr i8, ptr %i.am, i64 %i.ba
  %bound0 = icmp ult ptr %scevgep, %scevgep13
  %bound1 = icmp ult ptr %.pre.i, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  %bound016 = icmp ult ptr %scevgep, %scevgep15
  %bound117 = icmp ult ptr %scevgep14, %scevgep12
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx = or i1 %found.conflict, %found.conflict18
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i32 %i.ar, 15
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.at, 12
  %n.vec = and i64 %i.at, 8589934576              ; 4 uses
  %i.bc = add nsw i64 %n.vec, %i.al
  %i.bd = load i64, ptr %.pre.i, align 8, !tbaa !126, !alias.scope !1784, !noalias !1785
  %i.be = mul i64 %i.bd, 31
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.be, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = add i64 %index, %i.al                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %wide.load = load <4 x i64>, ptr %i.bg, align 8, !tbaa !126, !alias.scope !1786, !noalias !1783
  %wide.load20 = load <4 x i64>, ptr %i.bh, align 8, !tbaa !126, !alias.scope !1786, !noalias !1783
  %wide.load21 = load <4 x i64>, ptr %i.bi, align 8, !tbaa !126, !alias.scope !1786, !noalias !1783
  %wide.load22 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !126, !alias.scope !1786, !noalias !1783
  %i.bk = add <4 x i64> %wide.load, %broadcast.splat
  %i.bl = add <4 x i64> %wide.load20, %broadcast.splat
  %i.bm = add <4 x i64> %wide.load21, %broadcast.splat
  %i.bn = add <4 x i64> %wide.load22, %broadcast.splat
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bf ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  store <4 x i64> %i.bk, ptr %i.bo, align 8, !tbaa !126, !alias.scope !1787, !noalias !1788
  store <4 x i64> %i.bl, ptr %i.bp, align 8, !tbaa !126, !alias.scope !1787, !noalias !1788
  store <4 x i64> %i.bm, ptr %i.bq, align 8, !tbaa !126, !alias.scope !1787, !noalias !1788
  store <4 x i64> %i.bn, ptr %i.br, align 8, !tbaa !126, !alias.scope !1787, !noalias !1788
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader, label %vec.epilog.ph, !prof !393

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.at, 8589934588            ; 3 uses
  %i.bt = add nsw i64 %n.vec23, %i.al
  %i.bu = load i64, ptr %.pre.i, align 8, !tbaa !126, !alias.scope !1784, !noalias !1785
  %i.bv = mul i64 %i.bu, 31
  %broadcast.splatinsert26 = insertelement <4 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat27 = shufflevector <4 x i64> %broadcast.splatinsert26, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = add i64 %index24, %i.al                 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bw
  %wide.load25 = load <4 x i64>, ptr %i.bx, align 8, !tbaa !126, !alias.scope !1786, !noalias !1783
  %i.by = add <4 x i64> %wide.load25, %broadcast.splat27
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bw
  store <4 x i64> %i.by, ptr %i.bz, align 8, !tbaa !126, !alias.scope !1787, !noalias !1788
  %index.next28 = add nuw i64 %index24, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1781

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.at, %n.vec23
  br i1 %cmp.n29, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 5 uses
  %i.cb = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.cc = sub i32 %i.ae, %i.cb
  %.neg = add i32 %i.cb, 1
  %xtraiter = and i32 %i.cc, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol

_ZN8facebook5velox6StatusD2Ev.exit14.i.prol:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader
  %i.cd = load i64, ptr %.pre.i, align 8, !tbaa !126, !noalias !1785
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.i.ph
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !126, !noalias !1783
  %i.cg = mul i64 %i.cd, 31
  %i.ch = add i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv.i.ph
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !126
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, 1
  br label %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit

_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit14.i.preheader ], [ %indvars.iv.next.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol ]
  %i.cj = icmp eq i32 %i.ae, %.neg
  br i1 %i.cj, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i

_ZN8facebook5velox6StatusD2Ev.exit14.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZN8facebook5velox6StatusD2Ev.exit14.i ], [ %indvars.iv.i.unr, %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit ] ; 4 uses
  %i.ck = load i64, ptr %.pre.i, align 8, !tbaa !126, !noalias !1785
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !126, !noalias !1783
  %i.cn = mul i64 %i.ck, 31
  %i.co = add i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !126
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cq = load i64, ptr %.pre.i, align 8, !tbaa !126, !noalias !1785
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !126, !noalias !1783
  %i.ct = mul i64 %i.cq, 31
  %i.cu = add i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !126
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ae, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit14.i, !llvm.loop !1782

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cw = load ptr, ptr %1, align 8, !tbaa !366   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !429
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !430
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.db, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.dc, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !695
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cw, ptr %i.dd, align 8, !tbaa !696
  store i8 1, ptr %4, align 8, !tbaa !698
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cw, ptr %i.de, align 8, !tbaa !699
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEENS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.cy, i32 noundef %i.da, ptr noundef nonnull byval(%class.anon.1370) align 8 %3, ptr noundef nonnull byval(%class.anon.1371) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_20ConstantVectorReaderIlEENS4_16FlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1370) align 8 %2, ptr noundef byval(%class.anon.1371) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !695, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !696
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1819 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !351, !noalias !1820
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1821
  %i.ap = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !126, !noalias !1820
  %i.as = mul i64 %i.ao, 31
  %i.at = add i64 %i.ar, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
  store i64 %i.at, ptr %i.au, align 8, !tbaa !126
  %i.av = add nsw i64 %.031.i, -1
  %i.aw = and i64 %i.av, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, !llvm.loop !1793

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = sdiv i32 %0, 64                         ; 2 uses
  %i.ay = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i35, -1
  %i.bb = sub nsw i32 64, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = load i8, ptr %2, align 8, !tbaa !695, !range !78, !noundef !79
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !696
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !126
  %i.bk = xor i8 %i.be, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = xor i64 %i.bj, %i.bm
  %i.bo = and i64 %i.bn, %i.bd                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bo, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = shl nsw i32 %i.ax, 6
  %i.br = sext i32 %i.bq to i64
  %.pre.i38 = load ptr, ptr %i.bp, align 8, !tbaa !1819 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !351, !noalias !1822
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i39

_ZN8facebook5velox6StatusD2Ev.exit20.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %.preheader.i37
  %.031.i40 = phi i64 [ %i.bo, %.preheader.i37 ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit20.i39 ] ; 3 uses
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  %i.cd = load i64, ptr %i.bt, align 8, !tbaa !126, !noalias !1823
  %i.ce = or disjoint i64 %i.cc, %i.br            ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !126, !noalias !1822
  %i.ch = mul i64 %i.cd, 31
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ce
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !126
  %i.ck = add i64 %.031.i40, -1
  %i.cl = and i64 %i.ck, %.031.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit20.i39, !llvm.loop !1793

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i39, %bb.e, %bb.d
  %i.cm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %i.cn = load i8, ptr %3, align 8, !tbaa !698, !range !78, !noundef !79
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !699
  %i.cq = xor i8 %i.cn, 1
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.ct, align 8        ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.cx = phi i32 [ %i.cm, %.lr.ph ], [ %i.gm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.cx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.cy = sdiv i32 %.056, 64                      ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !126
  %i.dc = xor i64 %i.db, %i.cs                    ; 2 uses
  switch i64 %i.dc, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i: ; preds = %bb.f
  %i.dd = shl nsw i32 %i.cy, 6
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !351, !noalias !1824
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit52.i

bb.g:                                             ; preds = %bb.f
  %i.dm = shl nsw i32 %i.cy, 6                    ; 4 uses
  %i.dn = add i32 %i.dm, 64
  %i.do = sext i32 %i.dn to i64                   ; 4 uses
  %.0.off = add i32 %.056, 127
  %.not77.i = icmp ult i32 %.0.off, 64
  br i1 %.not77.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dp = sext i32 %i.dm to i64                   ; 12 uses
  %i.dq = load ptr, ptr %i.cu, align 8, !tbaa !688, !nonnull !79, !align !163 ; 4 uses
  %i.dr = load ptr, ptr %i.cv, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !351, !noalias !1825 ; 5 uses
  %i.dt = load ptr, ptr %i.cw, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !342 ; 5 uses
  %i.dx = or disjoint i64 %i.dp, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.do) ; 2 uses
  %i.dy = sub i64 %umax80, %i.dp                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dz = or disjoint i64 %i.dp, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.do)
  %i.ea = xor i64 %i.dp, -1
  %i.eb = add i64 %umax, %i.ea                    ; 2 uses
  %i.ec = sext i32 %i.dm to i35                   ; 2 uses
  %i.ed = shl nsw i35 %i.ec, 3
  %i.ee = trunc i64 %i.eb to i35
  %i.ef = add i35 %i.ec, %i.ee
  %i.eg = shl i35 %i.ef, 3
  %i.eh = icmp slt i35 %i.eg, %i.ed
  %i.ei = icmp ugt i64 %i.eb, 4294967295
  %i.ej = or i1 %i.eh, %i.ei
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ek = shl nsw i64 %i.dp, 3                    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.dw, i64 %i.ek ; 2 uses
  %i.el = or disjoint i64 %i.dp, 1
  %umax72 = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.do)
  %i.em = shl nsw i64 %umax72, 3                  ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.dw, i64 %i.em ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.dq, i64 8
  %i.en = sext i32 %i.dm to i35
  %i.eo = shl nsw i35 %i.en, 3
  %i.ep = sext i35 %i.eo to i64                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.ds, i64 %i.ep
  %i.eq = add i64 %i.em, %i.ep
  %i.er = sub i64 %i.eq, %i.ek
  %scevgep76 = getelementptr i8, ptr %i.ds, i64 %i.er
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %i.dq, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %scevgep, %scevgep76
  %bound178 = icmp ult ptr %scevgep75, %scevgep73
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dy, 16
  %i.es = and i64 %umax80, 1                      ; 3 uses
  %n.vec85 = sub i64 %i.dy, %i.es                 ; 3 uses
  %i.et = add i64 %n.vec85, %i.dp                 ; 2 uses
  %i.eu = load i64, ptr %i.dq, align 8, !tbaa !126, !alias.scope !1826, !noalias !1827
  %i.ev = mul i64 %i.eu, 31
  %broadcast.splatinsert88 = insertelement <4 x i64> poison, i64 %i.ev, i64 0
  %broadcast.splat89 = shufflevector <4 x i64> %broadcast.splatinsert88, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check81, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ew = add nuw i64 %index, %i.dp               ; 2 uses
  %i.ex = shl i64 %i.ew, 32
  %i.ey = ashr exact i64 %i.ex, 29
  %i.ez = getelementptr inbounds i8, ptr %i.ds, i64 %i.ey ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %wide.load = load <4 x i64>, ptr %i.ez, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %wide.load82 = load <4 x i64>, ptr %i.fa, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %wide.load83 = load <4 x i64>, ptr %i.fb, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %wide.load84 = load <4 x i64>, ptr %i.fc, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %i.fd = add <4 x i64> %wide.load, %broadcast.splat89
  %i.fe = add <4 x i64> %wide.load82, %broadcast.splat89
  %i.ff = add <4 x i64> %wide.load83, %broadcast.splat89
  %i.fg = add <4 x i64> %wide.load84, %broadcast.splat89
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ew ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  store <4 x i64> %i.fd, ptr %i.fh, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  store <4 x i64> %i.fe, ptr %i.fi, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  store <4 x i64> %i.ff, ptr %i.fj, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  store <4 x i64> %i.fg, ptr %i.fk, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec85
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !1808

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index86 = phi i64 [ %index.next90, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fm = add nuw i64 %index86, %i.dp             ; 2 uses
  %i.fn = shl i64 %i.fm, 32
  %i.fo = ashr exact i64 %i.fn, 29
  %i.fp = getelementptr inbounds i8, ptr %i.ds, i64 %i.fo
  %wide.load87 = load <4 x i64>, ptr %i.fp, align 8, !tbaa !126, !alias.scope !1828, !noalias !1825
  %i.fq = add <4 x i64> %wide.load87, %broadcast.splat89
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fm
  store <4 x i64> %i.fq, ptr %i.fr, align 8, !tbaa !126, !alias.scope !1829, !noalias !1830
  %index.next90 = add nuw i64 %index86, 4         ; 2 uses
  %i.fs = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1809

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.es, 0
  br i1 %cmp.n91, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader: ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.076.i.ph = phi i64 [ %i.et, %middle.block ], [ %i.dp, %vector.scevcheck ], [ %i.dp, %vector.memcheck ], [ %i.dp, %iter.check ], [ %i.et, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit33.i

_ZN8facebook5velox6StatusD2Ev.exit33.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit33.i
  %.076.i = phi i64 [ %i.ga, %_ZN8facebook5velox6StatusD2Ev.exit33.i ], [ %.076.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit33.i.preheader ] ; 3 uses
  %i.ft = load i64, ptr %i.dq, align 8, !tbaa !126, !noalias !1827
  %sext.i = shl i64 %.076.i, 32
  %i.fu = ashr exact i64 %sext.i, 29
  %i.fv = getelementptr inbounds i8, ptr %i.ds, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !126, !noalias !1825
  %i.fx = mul i64 %i.ft, 31
  %i.fy = add i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.076.i
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !126
  %i.ga = add nuw i64 %.076.i, 1                  ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.do
  br i1 %i.gb, label %_ZN8facebook5velox6StatusD2Ev.exit33.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !1810

_ZN8facebook5velox6StatusD2Ev.exit52.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit52.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i
  %.01575.i = phi i64 [ %i.dc, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_20ConstantVectorReaderIlEENS1_16FlatVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i ], [ %i.gl, %_ZN8facebook5velox6StatusD2Ev.exit52.i ] ; 3 uses
  %i.gc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575.i, i1 true)
  %i.gd = load i64, ptr %i.df, align 8, !tbaa !126, !noalias !1831
  %i.ge = or disjoint i64 %i.gc, %i.de            ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !126, !noalias !1824
  %i.gh = mul i64 %i.gd, 31
  %i.gi = add i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ge
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !126
  %i.gk = add i64 %.01575.i, -1
  %i.gl = and i64 %i.gk, %.01575.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.gl, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit52.i, !llvm.loop !1813

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit33.i, %_ZN8facebook5velox6StatusD2Ev.exit52.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.gm = add nsw i32 %i.cx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gm, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1814

bb.h:                                             ; preds = %._crit_edge
  %i.gn = ashr i32 %1, 6
  %i.go = and i32 %1, 63
  %i.gp = zext nneg i32 %i.go to i64
  %notmask.i45 = shl nsw i64 -1, %i.gp
  %i.gq = xor i64 %notmask.i45, -1
  %i.gr = load i8, ptr %2, align 8, !tbaa !695, !range !78, !noundef !79
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !696
  %i.gu = sext i32 %i.gn to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !126
  %i.gx = xor i8 %i.gr, 1
  %i.gy = zext nneg i8 %i.gx to i64
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = xor i64 %i.gw, %i.gz
  %i.hb = and i64 %i.ha, %i.gq                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.hb, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hd = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.hc, align 8, !tbaa !1819 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !688, !nonnull !79, !align !163
  %i.hg = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !689, !nonnull !79, !align !163
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !351, !noalias !1832
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !690, !nonnull !79, !align !163
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !692, !nonnull !79, !align !163
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit20.i49

_ZN8facebook5velox6StatusD2Ev.exit20.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %.preheader.i47
  %.031.i50 = phi i64 [ %i.hb, %.preheader.i47 ], [ %i.hx, %_ZN8facebook5velox6StatusD2Ev.exit20.i49 ] ; 3 uses
  %i.ho = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i50, i1 true)
  %i.hp = load i64, ptr %i.hf, align 8, !tbaa !126, !noalias !1833
  %i.hq = or disjoint i64 %i.ho, %i.hd            ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !126, !noalias !1832
  %i.ht = mul i64 %i.hp, 31
  %i.hu = add i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hq
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !126
  %i.hw = add nsw i64 %.031.i50, -1
  %i.hx = and i64 %i.hw, %.031.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hx, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit20.i49, !llvm.loop !1793

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_20ConstantVectorReaderIlEENS3_16FlatVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i49, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1381) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1396, align 8           ; 8 uses
  %4 = alloca %class.anon.1397, align 8           ; 8 uses
  %5 = alloca %class.anon.1393, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !366    ; 2 uses
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
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !31

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i11 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i11, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !126
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !31

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !126
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !430 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !429 ; 4 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = sext i32 %i.ag to i64                   ; 8 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !701
  %.pre26.i = load ptr, ptr %i.aj, align 8, !tbaa !702 ; 7 uses
  %.pre27.i = load ptr, ptr %i.ak, align 8, !tbaa !703
  %i.am = load ptr, ptr %.pre.i, align 8, !tbaa !351, !noalias !1845 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre27.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !342 ; 7 uses
  %i.aq = xor i32 %i.ag, -1
  %i.ar = add i32 %i.ae, %i.aq                    ; 3 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.au = shl nsw i64 %i.al, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.av = xor i32 %i.ag, -1
  %i.aw = add i32 %i.ae, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nsw i64 %i.al, %i.ax
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, 8                    ; 2 uses
  %scevgep12 = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %scevgep13 = getelementptr i8, ptr %i.am, i64 %i.au
  %scevgep14 = getelementptr i8, ptr %i.am, i64 %i.ba
  %scevgep15 = getelementptr i8, ptr %.pre26.i, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep14
  %bound1 = icmp ult ptr %scevgep13, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  %bound016 = icmp ult ptr %scevgep, %scevgep15
  %bound117 = icmp ult ptr %.pre26.i, %scevgep12
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx = or i1 %found.conflict, %found.conflict18
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i32 %i.ar, 15
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.at, 12
  %n.vec = and i64 %i.at, 8589934576              ; 4 uses
  %i.bc = add nsw i64 %n.vec, %i.al
  %i.bd = load i64, ptr %.pre26.i, align 8, !tbaa !126, !alias.scope !1846, !noalias !1847
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = add i64 %index, %i.al                   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %wide.load = load <4 x i64>, ptr %i.bf, align 8, !tbaa !126, !alias.scope !1848, !noalias !1845
  %wide.load20 = load <4 x i64>, ptr %i.bg, align 8, !tbaa !126, !alias.scope !1848, !noalias !1845
  %wide.load21 = load <4 x i64>, ptr %i.bh, align 8, !tbaa !126, !alias.scope !1848, !noalias !1845
  %wide.load22 = load <4 x i64>, ptr %i.bi, align 8, !tbaa !126, !alias.scope !1848, !noalias !1845
  %i.bj = mul <4 x i64> %wide.load, splat (i64 31)
  %i.bk = mul <4 x i64> %wide.load20, splat (i64 31)
  %i.bl = mul <4 x i64> %wide.load21, splat (i64 31)
  %i.bm = mul <4 x i64> %wide.load22, splat (i64 31)
  %i.bn = add <4 x i64> %i.bj, %broadcast.splat
  %i.bo = add <4 x i64> %i.bk, %broadcast.splat
  %i.bp = add <4 x i64> %i.bl, %broadcast.splat
  %i.bq = add <4 x i64> %i.bm, %broadcast.splat
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.be ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store <4 x i64> %i.bn, ptr %i.br, align 8, !tbaa !126, !alias.scope !1849, !noalias !1850
  store <4 x i64> %i.bo, ptr %i.bs, align 8, !tbaa !126, !alias.scope !1849, !noalias !1850
  store <4 x i64> %i.bp, ptr %i.bt, align 8, !tbaa !126, !alias.scope !1849, !noalias !1850
  store <4 x i64> %i.bq, ptr %i.bu, align 8, !tbaa !126, !alias.scope !1849, !noalias !1850
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1842

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vec.epilog.ph, !prof !393

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.at, 8589934588            ; 3 uses
  %i.bw = add nsw i64 %n.vec23, %i.al
  %i.bx = load i64, ptr %.pre26.i, align 8, !tbaa !126, !alias.scope !1846, !noalias !1847
  %broadcast.splatinsert26 = insertelement <4 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat27 = shufflevector <4 x i64> %broadcast.splatinsert26, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.by = add i64 %index24, %i.al                 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.by
  %wide.load25 = load <4 x i64>, ptr %i.bz, align 8, !tbaa !126, !alias.scope !1848, !noalias !1845
  %i.ca = mul <4 x i64> %wide.load25, splat (i64 31)
  %i.cb = add <4 x i64> %i.ca, %broadcast.splat27
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.by
  store <4 x i64> %i.cb, ptr %i.cc, align 8, !tbaa !126, !alias.scope !1849, !noalias !1850
  %index.next28 = add nuw i64 %index24, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1843

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.at, %n.vec23
  br i1 %cmp.n29, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 5 uses
  %i.ce = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.cf = sub i32 %i.ae, %i.ce
  %.neg = add i32 %i.ce, 1
  %xtraiter = and i32 %i.cf, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol

_ZN8facebook5velox6StatusD2Ev.exit13.i.prol:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.i.ph
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !126, !noalias !1845
  %i.ci = load i64, ptr %.pre26.i, align 8, !tbaa !126, !noalias !1847
  %i.cj = mul i64 %i.ch, 31
  %i.ck = add i64 %i.cj, %i.ci
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv.i.ph
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !126
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, 1
  br label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit

_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader ], [ %indvars.iv.next.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol ]
  %i.cm = icmp eq i32 %i.ae, %.neg
  br i1 %i.cm, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i

_ZN8facebook5velox6StatusD2Ev.exit13.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZN8facebook5velox6StatusD2Ev.exit13.i ], [ %indvars.iv.i.unr, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit ] ; 4 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !126, !noalias !1845
  %i.cp = load i64, ptr %.pre26.i, align 8, !tbaa !126, !noalias !1847
  %i.cq = mul i64 %i.co, 31
  %i.cr = add i64 %i.cq, %i.cp
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !126
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !126, !noalias !1845
  %i.cv = load i64, ptr %.pre26.i, align 8, !tbaa !126, !noalias !1847
  %i.cw = mul i64 %i.cu, 31
  %i.cx = add i64 %i.cw, %i.cv
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !126
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ae, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i, !llvm.loop !1844

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cz = load ptr, ptr %1, align 8, !tbaa !366   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !429
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !430
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.de, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.df, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !708
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cz, ptr %i.dg, align 8, !tbaa !709
  store i8 1, ptr %4, align 8, !tbaa !711
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cz, ptr %i.dh, align 8, !tbaa !712
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEENS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %i.db, i32 noundef %i.dd, ptr noundef nonnull byval(%class.anon.1396) align 8 %3, ptr noundef nonnull byval(%class.anon.1397) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEENS4_20ConstantVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1396) align 8 %2, ptr noundef byval(%class.anon.1397) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !708, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !709
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1881 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !351, !noalias !1882
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !126, !noalias !1882
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !126, !noalias !1883
  %i.as = mul i64 %i.aq, 31
  %i.at = add i64 %i.as, %i.ar
  %i.au = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store i64 %i.at, ptr %i.au, align 8, !tbaa !126
  %i.av = add nsw i64 %.030.i, -1
  %i.aw = and i64 %i.av, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !1855

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = sdiv i32 %0, 64                         ; 2 uses
  %i.ay = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i35, -1
  %i.bb = sub nsw i32 64, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = load i8, ptr %2, align 8, !tbaa !708, !range !78, !noundef !79
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !709
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !126
  %i.bk = xor i8 %i.be, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = xor i64 %i.bj, %i.bm
  %i.bo = and i64 %i.bn, %i.bd                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bo, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = shl nsw i32 %i.ax, 6
  %i.br = sext i32 %i.bq to i64
  %.pre.i38 = load ptr, ptr %i.bp, align 8, !tbaa !1881 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !351, !noalias !1884
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.030.i40 = phi i64 [ %i.bo, %.preheader.i37 ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.cc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i40, i1 true)
  %i.cd = or disjoint i64 %i.cc, %i.br            ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !126, !noalias !1884
  %i.cg = load i64, ptr %i.bv, align 8, !tbaa !126, !noalias !1885
  %i.ch = mul i64 %i.cf, 31
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cd
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !126
  %i.ck = add i64 %.030.i40, -1
  %i.cl = and i64 %i.ck, %.030.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !1855

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %i.cn = load i8, ptr %3, align 8, !tbaa !711, !range !78, !noundef !79
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !712
  %i.cq = xor i8 %i.cn, 1
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.ct, align 8        ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  %i.cx = phi i32 [ %i.cm, %.lr.ph ], [ %i.gq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.cx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit ] ; 2 uses
  %i.cy = sdiv i32 %.056, 64                      ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !126
  %i.dc = xor i64 %i.db, %i.cs                    ; 2 uses
  switch i64 %i.dc, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i: ; preds = %bb.f
  %i.dd = shl nsw i32 %i.cy, 6
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !351, !noalias !1886
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.dm = shl nsw i32 %i.cy, 6                    ; 4 uses
  %i.dn = add i32 %i.dm, 64
  %i.do = sext i32 %i.dn to i64                   ; 4 uses
  %.0.off = add i32 %.056, 127
  %.not76.i = icmp ult i32 %.0.off, 64
  br i1 %.not76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dp = sext i32 %i.dm to i64                   ; 12 uses
  %i.dq = load ptr, ptr %i.cu, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.dr = load ptr, ptr %i.cv, align 8, !tbaa !702, !nonnull !79, !align !163 ; 4 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !351, !noalias !1887 ; 5 uses
  %i.dt = load ptr, ptr %i.cw, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !342 ; 5 uses
  %i.dx = or disjoint i64 %i.dp, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.do) ; 2 uses
  %i.dy = sub i64 %umax80, %i.dp                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dz = or disjoint i64 %i.dp, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.do)
  %i.ea = xor i64 %i.dp, -1
  %i.eb = add i64 %umax, %i.ea                    ; 2 uses
  %i.ec = sext i32 %i.dm to i35                   ; 2 uses
  %i.ed = shl nsw i35 %i.ec, 3
  %i.ee = trunc i64 %i.eb to i35
  %i.ef = add i35 %i.ec, %i.ee
  %i.eg = shl i35 %i.ef, 3
  %i.eh = icmp slt i35 %i.eg, %i.ed
  %i.ei = icmp ugt i64 %i.eb, 4294967295
  %i.ej = or i1 %i.eh, %i.ei
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ek = shl nsw i64 %i.dp, 3                    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.dw, i64 %i.ek ; 2 uses
  %i.el = or disjoint i64 %i.dp, 1
  %umax72 = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.do)
  %i.em = shl nsw i64 %umax72, 3                  ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.dw, i64 %i.em ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.dr, i64 8
  %i.en = sext i32 %i.dm to i35
  %i.eo = shl nsw i35 %i.en, 3
  %i.ep = sext i35 %i.eo to i64                   ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.ds, i64 %i.ep
  %i.eq = add i64 %i.em, %i.ep
  %i.er = sub i64 %i.eq, %i.ek
  %scevgep76 = getelementptr i8, ptr %i.ds, i64 %i.er
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %i.dr, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %scevgep, %scevgep76
  %bound178 = icmp ult ptr %scevgep75, %scevgep73
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dy, 16
  %i.es = and i64 %umax80, 1                      ; 3 uses
  %n.vec85 = sub i64 %i.dy, %i.es                 ; 3 uses
  %i.et = add i64 %n.vec85, %i.dp                 ; 2 uses
  %i.eu = load i64, ptr %i.dr, align 8, !tbaa !126, !alias.scope !1888, !noalias !1889
  %broadcast.splatinsert88 = insertelement <4 x i64> poison, i64 %i.eu, i64 0
  %broadcast.splat89 = shufflevector <4 x i64> %broadcast.splatinsert88, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check81, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ev = add nuw i64 %index, %i.dp               ; 2 uses
  %i.ew = shl i64 %i.ev, 32
  %i.ex = ashr exact i64 %i.ew, 29
  %i.ey = getelementptr inbounds i8, ptr %i.ds, i64 %i.ex ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96
  %wide.load = load <4 x i64>, ptr %i.ey, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %wide.load82 = load <4 x i64>, ptr %i.ez, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %wide.load83 = load <4 x i64>, ptr %i.fa, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %wide.load84 = load <4 x i64>, ptr %i.fb, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %i.fc = mul <4 x i64> %wide.load, splat (i64 31)
  %i.fd = mul <4 x i64> %wide.load82, splat (i64 31)
  %i.fe = mul <4 x i64> %wide.load83, splat (i64 31)
  %i.ff = mul <4 x i64> %wide.load84, splat (i64 31)
  %i.fg = add <4 x i64> %i.fc, %broadcast.splat89
  %i.fh = add <4 x i64> %i.fd, %broadcast.splat89
  %i.fi = add <4 x i64> %i.fe, %broadcast.splat89
  %i.fj = add <4 x i64> %i.ff, %broadcast.splat89
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ev ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  store <4 x i64> %i.fg, ptr %i.fk, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  store <4 x i64> %i.fh, ptr %i.fl, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  store <4 x i64> %i.fi, ptr %i.fm, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  store <4 x i64> %i.fj, ptr %i.fn, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec85
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !1870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index86 = phi i64 [ %index.next90, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fp = add nuw i64 %index86, %i.dp             ; 2 uses
  %i.fq = shl i64 %i.fp, 32
  %i.fr = ashr exact i64 %i.fq, 29
  %i.fs = getelementptr inbounds i8, ptr %i.ds, i64 %i.fr
  %wide.load87 = load <4 x i64>, ptr %i.fs, align 8, !tbaa !126, !alias.scope !1890, !noalias !1887
  %i.ft = mul <4 x i64> %wide.load87, splat (i64 31)
  %i.fu = add <4 x i64> %i.ft, %broadcast.splat89
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  store <4 x i64> %i.fu, ptr %i.fv, align 8, !tbaa !126, !alias.scope !1891, !noalias !1892
  %index.next90 = add nuw i64 %index86, 4         ; 2 uses
  %i.fw = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1871

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.es, 0
  br i1 %cmp.n91, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %middle.block, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.075.i.ph = phi i64 [ %i.et, %middle.block ], [ %i.dp, %vector.scevcheck ], [ %i.dp, %vector.memcheck ], [ %i.dp, %iter.check ], [ %i.et, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.075.i = phi i64 [ %i.ge, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.075.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.075.i, 32
  %i.fx = ashr exact i64 %sext.i, 29
  %i.fy = getelementptr inbounds i8, ptr %i.ds, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !126, !noalias !1887
  %i.ga = load i64, ptr %i.dr, align 8, !tbaa !126, !noalias !1889
  %i.gb = mul i64 %i.fz, 31
  %i.gc = add i64 %i.gb, %i.ga
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.075.i
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !126
  %i.ge = add nuw i64 %.075.i, 1                  ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.do
  br i1 %i.gf, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, !llvm.loop !1872

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i
  %.01574.i = phi i64 [ %i.dc, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEENS1_20ConstantVectorReaderIlEEEEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.lr.ph.i ], [ %i.gp, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.gg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01574.i, i1 true)
  %i.gh = or disjoint i64 %i.gg, %i.de            ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !126, !noalias !1886
  %i.gk = load i64, ptr %i.dg, align 8, !tbaa !126, !noalias !1893
  %i.gl = mul i64 %i.gj, 31
  %i.gm = add i64 %i.gl, %i.gk
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gh
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !126
  %i.go = add i64 %.01574.i, -1
  %i.gp = and i64 %i.go, %.01574.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.gp, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !1875

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.g
  %i.gq = add nsw i32 %i.cx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gq, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1876

bb.h:                                             ; preds = %._crit_edge
  %i.gr = ashr i32 %1, 6
  %i.gs = and i32 %1, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %notmask.i45 = shl nsw i64 -1, %i.gt
  %i.gu = xor i64 %notmask.i45, -1
  %i.gv = load i8, ptr %2, align 8, !tbaa !708, !range !78, !noundef !79
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !709
  %i.gy = sext i32 %i.gr to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !126
  %i.hb = xor i8 %i.gv, 1
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = xor i64 %i.ha, %i.hd
  %i.hf = and i64 %i.he, %i.gu                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.hf, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hh = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.hg, align 8, !tbaa !1881 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !701, !nonnull !79, !align !163
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !702, !nonnull !79, !align !163
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !351, !noalias !1894
  %i.hn = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !703, !nonnull !79, !align !163
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !705, !nonnull !79, !align !163
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i49

_ZN8facebook5velox6StatusD2Ev.exit19.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %.preheader.i47
  %.030.i50 = phi i64 [ %i.hf, %.preheader.i47 ], [ %i.ib, %_ZN8facebook5velox6StatusD2Ev.exit19.i49 ] ; 3 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i50, i1 true)
  %i.ht = or disjoint i64 %i.hs, %i.hh            ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !126, !noalias !1894
  %i.hw = load i64, ptr %i.hl, align 8, !tbaa !126, !noalias !1895
  %i.hx = mul i64 %i.hv, 31
  %i.hy = add i64 %i.hx, %i.hw
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ht
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !126
  %i.ia = add nsw i64 %.030.i50, -1
  %i.ib = and i64 %i.ia, %.030.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.ib, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i49, !llvm.loop !1855

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEENS3_20ConstantVectorReaderIlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESH_EEEvRNSE_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISO_EEvRKNS0_17SelectivityVectorESN_EUlSN_E_EEvSS_SN_T0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef byval(%class.anon.1407) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.1422, align 8           ; 8 uses
  %4 = alloca %class.anon.1423, align 8           ; 8 uses
  %5 = alloca %class.anon.1419, align 1           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !430  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !431
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !366    ; 2 uses
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
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !31

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i11 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i11, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !126
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !31

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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !126
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !430 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !429 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit

iter.check:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = sext i32 %i.ag to i64                   ; 6 uses
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !714
  %.pre26.i = load ptr, ptr %i.aj, align 8, !tbaa !715
  %.pre27.i = load ptr, ptr %i.ak, align 8, !tbaa !716
  %i.am = load ptr, ptr %.pre.i, align 8, !tbaa !351, !noalias !1903 ; 6 uses
  %i.an = load ptr, ptr %.pre26.i, align 8, !tbaa !351, !noalias !1904 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre27.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !718, !nonnull !79, !align !163
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !342 ; 6 uses
  %i.ar = xor i32 %i.ag, -1
  %i.as = add i32 %i.ae, %i.ar                    ; 3 uses
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.as, 3
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.av = ptrtoaddr ptr %i.aq to i64              ; 2 uses
  %i.aw = ptrtoaddr ptr %i.an to i64
  %i.ax = ptrtoaddr ptr %i.am to i64
  %i.ay = sub i64 %i.ax, %i.av
  %diff.check = icmp ugt i64 %i.ay, -128
  %i.az = sub i64 %i.aw, %i.av
  %diff.check12 = icmp ugt i64 %i.az, -128
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i32 %i.as, 15
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 8589934576              ; 4 uses
  %i.bb = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = add i64 %index, %i.al                   ; 3 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %wide.load = load <4 x i64>, ptr %i.bd, align 8, !tbaa !126, !noalias !1903
  %wide.load14 = load <4 x i64>, ptr %i.be, align 8, !tbaa !126, !noalias !1903
  %wide.load15 = load <4 x i64>, ptr %i.bf, align 8, !tbaa !126, !noalias !1903
  %wide.load16 = load <4 x i64>, ptr %i.bg, align 8, !tbaa !126, !noalias !1903
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bc ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %wide.load17 = load <4 x i64>, ptr %i.bh, align 8, !tbaa !126, !noalias !1904
  %wide.load18 = load <4 x i64>, ptr %i.bi, align 8, !tbaa !126, !noalias !1904
  %wide.load19 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !126, !noalias !1904
  %wide.load20 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !126, !noalias !1904
  %i.bl = mul <4 x i64> %wide.load, splat (i64 31)
  %i.bm = mul <4 x i64> %wide.load14, splat (i64 31)
  %i.bn = mul <4 x i64> %wide.load15, splat (i64 31)
  %i.bo = mul <4 x i64> %wide.load16, splat (i64 31)
  %i.bp = add <4 x i64> %wide.load17, %i.bl
  %i.bq = add <4 x i64> %wide.load18, %i.bm
  %i.br = add <4 x i64> %wide.load19, %i.bn
  %i.bs = add <4 x i64> %wide.load20, %i.bo
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  store <4 x i64> %i.bp, ptr %i.bt, align 8, !tbaa !126
  store <4 x i64> %i.bq, ptr %i.bu, align 8, !tbaa !126
  store <4 x i64> %i.br, ptr %i.bv, align 8, !tbaa !126
  store <4 x i64> %i.bs, ptr %i.bw, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader, label %vec.epilog.ph, !prof !393

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.au, 8589934588            ; 3 uses
  %i.by = add nsw i64 %n.vec21, %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.bz = add i64 %index22, %i.al                 ; 3 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bz
  %wide.load23 = load <4 x i64>, ptr %i.ca, align 8, !tbaa !126, !noalias !1903
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bz
  %wide.load24 = load <4 x i64>, ptr %i.cb, align 8, !tbaa !126, !noalias !1904
  %i.cc = mul <4 x i64> %wide.load23, splat (i64 31)
  %i.cd = add <4 x i64> %wide.load24, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bz
  store <4 x i64> %i.cd, ptr %i.ce, align 8, !tbaa !126
  %index.next25 = add nuw i64 %index22, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next25, %n.vec21
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1901

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.au, %n.vec21
  br i1 %cmp.n26, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.al, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 6 uses
  %i.cg = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.ch = sub i32 %i.ae, %i.cg
  %.neg = add i32 %i.cg, 1
  %xtraiter = and i32 %i.ch, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol

_ZN8facebook5velox6StatusD2Ev.exit13.i.prol:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.i.ph
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !126, !noalias !1903
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.i.ph
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !126, !noalias !1904
  %i.cm = mul i64 %i.cj, 31
  %i.cn = add i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.i.ph
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !126
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, 1
  br label %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit

_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit13.i.preheader ], [ %indvars.iv.next.i.prol, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol ]
  %i.cp = icmp eq i32 %i.ae, %.neg
  br i1 %i.cp, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i

_ZN8facebook5velox6StatusD2Ev.exit13.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZN8facebook5velox6StatusD2Ev.exit13.i ], [ %indvars.iv.i.unr, %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit ] ; 5 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !126, !noalias !1903
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !126, !noalias !1904
  %i.cu = mul i64 %i.cr, 31
  %i.cv = add i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !126
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !126, !noalias !1903
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !126, !noalias !1904
  %i.db = mul i64 %i.cy, 31
  %i.dc = add i64 %i.da, %i.db
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !126
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ae, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit, label %_ZN8facebook5velox6StatusD2Ev.exit13.i, !llvm.loop !1902

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.de = load ptr, ptr %1, align 8, !tbaa !366   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !429
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !430
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %i.dj, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %i.dk, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %.sroa.7.0..sroa_idx6, align 8
  store i8 1, ptr %3, align 8, !tbaa !721
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.de, ptr %i.dl, align 8, !tbaa !722
  store i8 1, ptr %4, align 8, !tbaa !724
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.de, ptr %i.dm, align 8, !tbaa !725
  call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.dg, i32 noundef %i.di, ptr noundef nonnull byval(%class.anon.1422) align 8 %3, ptr noundef nonnull byval(%class.anon.1423) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit13.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_16FlatVectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1422) align 8 %2, ptr noundef byval(%class.anon.1423) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !721, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !722
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1930 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !714, !nonnull !79, !align !163
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !715, !nonnull !79, !align !163
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !351, !noalias !1931
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !351, !noalias !1932
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !716, !nonnull !79, !align !163
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !718, !nonnull !79, !align !163
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.030.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ay, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i, i1 true)
  %i.ap = or disjoint i64 %i.ao, %i.ac            ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !126, !noalias !1931
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ap
  %i.at = load i64, ptr %i.as, align 8, !tbaa !126, !noalias !1932
  %i.au = mul i64 %i.ar, 31
  %i.av = add i64 %i.at, %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !126
  %i.ax = add nsw i64 %.030.i, -1
  %i.ay = and i64 %i.ax, %.030.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ay, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !1909

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = sdiv i32 %0, 64                         ; 2 uses
  %i.ba = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bb
  %i.bc = xor i64 %notmask.i.i35, -1
  %i.bd = sub nsw i32 64, %i.ba
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl i64 %i.bc, %i.be
  %i.bg = load i8, ptr %2, align 8, !tbaa !721, !range !78, !noundef !79
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !722
  %i.bj = sext i32 %i.az to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !126
  %i.bm = xor i8 %i.bg, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = xor i64 %i.bl, %i.bo
  %i.bq = and i64 %i.bp, %i.bf                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bq, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = shl nsw i32 %i.az, 6
  %i.bt = sext i32 %i.bs to i64
  %.pre.i38 = load ptr, ptr %i.br, align 8, !tbaa !1930 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !714, !nonnull !79, !align !163
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !715, !nonnull !79, !align !163
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !351, !noalias !1933
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !351, !noalias !1934
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !716, !nonnull !79, !align !163
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !718, !nonnull !79, !align !163
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.030.i40 = phi i64 [ %i.bq, %.preheader.i37 ], [ %i.cp, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.cf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i40, i1 true)
  %i.cg = or disjoint i64 %i.cf, %i.bt            ; 3 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !126, !noalias !1933
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cg
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !126, !noalias !1934
  %i.cl = mul i64 %i.ci, 31
  %i.cm = add i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cg
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !126
  %i.co = add i64 %.030.i40, -1
  %i.cp = and i64 %i.co, %.030.i40                ; 2 uses
  %.not10.i41 = icmp eq i64 %i.cp, 0
  br i1 %.not10.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !1909

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cq = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3355 = icmp sgt i32 %i.cq, %i.d
  br i1 %.not3355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42
  %i.cr = load i8, ptr %3, align 8, !tbaa !724, !range !78, !noundef !79
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !725
  %i.cu = xor i8 %i.cr, 1
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i43 = load ptr, ptr %i.cx, align 8        ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i43, i64 32 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit42
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  %i.db = phi i32 [ %i.cq, %.lr.ph ], [ %i.ge, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %i.db, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit ] ; 2 uses
  %i.dc = sdiv i32 %.056, 64                      ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !126
  %i.dg = xor i64 %i.df, %i.cw                    ; 2 uses
  switch i64 %i.dg, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i: ; preds = %bb.f
  %i.dh = shl nsw i32 %i.dc, 6
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !714, !nonnull !79, !align !163
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !715, !nonnull !79, !align !163
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !351, !noalias !1935
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !351, !noalias !1936
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !716, !nonnull !79, !align !163
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !718, !nonnull !79, !align !163
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit51.i

bb.g:                                             ; preds = %bb.f
  %i.dr = shl nsw i32 %i.dc, 6                    ; 4 uses
  %i.ds = add i32 %i.dr, 64
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %.0.off = add i32 %.056, 127
  %.not76.i = icmp ult i32 %.0.off, 64
  br i1 %.not76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph.i: ; preds = %bb.g
  %i.du = sext i32 %i.dr to i64                   ; 9 uses
  %i.dv = load ptr, ptr %i.cy, align 8, !tbaa !714, !nonnull !79, !align !163
  %i.dw = load ptr, ptr %i.cz, align 8, !tbaa !715, !nonnull !79, !align !163
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !351, !noalias !1937 ; 3 uses
  %i.dy = ptrtoaddr ptr %i.dx to i64
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !351, !noalias !1938 ; 3 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = load ptr, ptr %i.da, align 8, !tbaa !716, !nonnull !79, !align !163
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !718, !nonnull !79, !align !163
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !342 ; 3 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64              ; 2 uses
  %i.eg = or disjoint i64 %i.du, 1
  %i.eh = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.dt) ; 2 uses
  %i.ei = sub i64 %i.eh, %i.du                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ei, 12
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph.i
  %i.ej = or disjoint i64 %i.du, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.dt)
  %i.ek = xor i64 %i.du, -1
  %i.el = add i64 %umax, %i.ek                    ; 2 uses
  %i.em = trunc i64 %i.el to i32
  %i.en = add i32 %i.dr, %i.em
  %i.eo = icmp slt i32 %i.en, %i.dr
  %i.ep = icmp ugt i64 %i.el, 4294967295
  %i.eq = or i1 %i.eo, %i.ep
  br i1 %i.eq, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.er = sub i64 %i.dy, %i.ef
  %diff.check = icmp ugt i64 %i.er, -64
  %i.es = sub i64 %i.ea, %i.ef
  %diff.check72 = icmp ugt i64 %i.es, -64
  %conflict.rdx = or i1 %diff.check, %diff.check72
  br i1 %conflict.rdx, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.et = and i64 %i.eh, 1                        ; 2 uses
  %n.vec = sub i64 %i.ei, %i.et                   ; 2 uses
  %i.eu = add i64 %n.vec, %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = add nuw i64 %index, %i.du               ; 2 uses
  %i.ew = shl i64 %i.ev, 32
  %i.ex = ashr exact i64 %i.ew, 32                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %wide.load = load <4 x i64>, ptr %i.ey, align 8, !tbaa !126, !noalias !1937
  %wide.load73 = load <4 x i64>, ptr %i.ez, align 8, !tbaa !126, !noalias !1937
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ex ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %wide.load74 = load <4 x i64>, ptr %i.fa, align 8, !tbaa !126, !noalias !1938
  %wide.load75 = load <4 x i64>, ptr %i.fb, align 8, !tbaa !126, !noalias !1938
  %i.fc = mul <4 x i64> %wide.load, splat (i64 31)
  %i.fd = mul <4 x i64> %wide.load73, splat (i64 31)
  %i.fe = add <4 x i64> %wide.load74, %i.fc
  %i.ff = add <4 x i64> %wide.load75, %i.fd
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ev ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store <4 x i64> %i.fe, ptr %i.fg, align 8, !tbaa !126
  store <4 x i64> %i.ff, ptr %i.fh, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !1922

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph.i, %middle.block
  %.075.i.ph = phi i64 [ %i.du, %vector.memcheck ], [ %i.du, %vector.scevcheck ], [ %i.du, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSL_.exit.lr.ph.i ], [ %i.eu, %middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.075.i = phi i64 [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.075.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.075.i, 32
  %i.fj = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !126, !noalias !1937
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fj
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !126, !noalias !1938
  %i.fo = mul i64 %i.fl, 31
  %i.fp = add i64 %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.075.i
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !126
  %i.fr = add nuw i64 %.075.i, 1                  ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dt
  br i1 %i.fs, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, !llvm.loop !1923

_ZN8facebook5velox6StatusD2Ev.exit51.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit51.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i
  %.01574.i = phi i64 [ %i.dg, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS1_16FlatVectorReaderIlEESF_EEEvRNSC_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSL_.exit.lr.ph.i ], [ %i.gd, %_ZN8facebook5velox6StatusD2Ev.exit51.i ] ; 3 uses
  %i.ft = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01574.i, i1 true)
  %i.fu = or disjoint i64 %i.ft, %i.di            ; 3 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !126, !noalias !1935
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fu
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !126, !noalias !1936
  %i.fz = mul i64 %i.fw, 31
  %i.ga = add i64 %i.fy, %i.fz
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.fu
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !126
  %i.gc = add i64 %.01574.i, -1
  %i.gd = and i64 %i.gc, %.01574.i                ; 2 uses
  %.not.i44 = icmp eq i64 %i.gd, 0
  br i1 %.not.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit51.i, !llvm.loop !1924

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit51.i, %middle.block, %bb.f, %bb.g
  %i.ge = add nsw i32 %i.db, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ge, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !1925

bb.h:                                             ; preds = %._crit_edge
  %i.gf = ashr i32 %1, 6
  %i.gg = and i32 %1, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %notmask.i45 = shl nsw i64 -1, %i.gh
  %i.gi = xor i64 %notmask.i45, -1
  %i.gj = load i8, ptr %2, align 8, !tbaa !721, !range !78, !noundef !79
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !722
  %i.gm = sext i32 %i.gf to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !126
  %i.gp = xor i8 %i.gj, 1
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = sub nsw i64 0, %i.gq
  %i.gs = xor i64 %i.go, %i.gr
  %i.gt = and i64 %i.gs, %i.gi                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.gt, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.h
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gv = sext i32 %i.d to i64
  %.pre.i48 = load ptr, ptr %i.gu, align 8, !tbaa !1930 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !714, !nonnull !79, !align !163
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !715, !nonnull !79, !align !163
  %i.ha = load ptr, ptr %i.gx, align 8, !tbaa !351, !noalias !1939
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !351, !noalias !1940
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre.i48, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !716, !nonnull !79, !align !163
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !718, !nonnull !79, !align !163
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !342
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i49

_ZN8facebook5velox6StatusD2Ev.exit19.i49:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %.preheader.i47
  %.030.i50 = phi i64 [ %i.gt, %.preheader.i47 ], [ %i.hr, %_ZN8facebook5velox6StatusD2Ev.exit19.i49 ] ; 3 uses
  %i.hh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.030.i50, i1 true)
  %i.hi = or disjoint i64 %i.hh, %i.gv            ; 3 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !126, !noalias !1939
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hi
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !126, !noalias !1940
  %i.hn = mul i64 %i.hk, 31
  %i.ho = add i64 %i.hm, %i.hn
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.hi
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !126
  %i.hq = add nsw i64 %.030.i50, -1
  %i.hr = and i64 %i.hq, %.030.i50                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.hr, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i49, !llvm.loop !1909

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_16FlatVectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i49, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJllEEEJllEEEE6unpackILi1ELb0EJNS1_12VectorReaderIlEEEEEvRNSC_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISL_EERKSI_ISt10shared_ptrINS0_10BaseVectorEESaISR_EEDpRT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.1445, align 1           ; 3 uses
  %6 = alloca %class.anon.1447, align 8           ; 6 uses
  %7 = alloca %class.anon.1433, align 8           ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %class.anon.1430, align 8           ; 6 uses
  %9 = alloca %"class.facebook::velox::exec::LocalDecodedVector", align 8 ; 7 uses
  %10 = alloca %"struct.facebook::velox::exec::VectorReader", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !669, !nonnull !79, !align !163
  %i.e = load ptr, ptr %3, align 8, !tbaa !236
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !233
  %i.h = load ptr, ptr %1, align 8, !tbaa !668
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !278
  store ptr %i.i, ptr %9, align 8, !tbaa !362
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store ptr null, ptr %i.j, align 8, !tbaa !363
  %i.k = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(94) %i.g, ptr noundef nonnull align 8 dereferenceable(38) %i.h, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #26
  resume { ptr, i32 } %i.l

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !331    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !334, !range !78, !noundef !79
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load ptr, ptr %9, align 8, !tbaa !362
  store ptr %i.r, ptr %i.n, align 8, !tbaa !362
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !364
  store ptr null, ptr %i.j, align 8, !tbaa !364
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !364  ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !364
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !366  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !367
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !370 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !371
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #28
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 120) #28
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

bb.h:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !364
  store i64 %i.aj, ptr %i.s, align 8, !tbaa !364
  store ptr null, ptr %i.j, align 8, !tbaa !364
  store i8 1, ptr %i.o, align 8, !tbaa !334
  br label %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit

_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %bb.h
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !332
  %i.am = load ptr, ptr %2, align 8, !tbaa !331   ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 24                ; 2 uses
  %.not.i.i = icmp ugt i64 %i.aq, 1
  br i1 %.not.i.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.90, i64 noundef 1, i64 noundef %i.aq) #29
  unreachable

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit: ; preds = %_ZNSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !334, !range !78, !noundef !79
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit: ; preds = %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EE2atEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.av = call noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.av, ptr %10, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !670
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %1, ptr %8, align 8, !tbaa !672
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.ay, align 8, !tbaa !347
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.az, align 8, !tbaa !347
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !669, !nonnull !79, !align !163
  %i.bb = load ptr, ptr %1, align 8, !tbaa !668
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %0, ptr %7, align 8
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.423.0..sroa_idx.i.i, align 8
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %10, ptr %.sroa.524.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %8, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %7, ptr %6, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.bc, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !1941
  call void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %i.bb, ptr noundef nonnull byval(%class.anon.1447) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1447) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1448, align 8           ; 6 uses
  %3 = alloca %class.anon.1449, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !427, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !60, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !429
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKS1_SP_EUlSP_E_EEvST_SP_T0_EUlSP_E_EEvSP_:bb.a
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !474
  %i.bo = shl nsw i64 %indvars.iv, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bq, %bb.l ], [ %i.bm, %bb.k ], [ %i.bj, %bb.i ]
  %i.br = sext i32 %.0.i.i.i to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !126
  br i1 %i.bb, label %_ZN8facebook5velox6StatusD2Ev.exit19, label %bb.m

bb.m:                                             ; preds = %.noexc5
  %i.bu = load i8, ptr %i.bc, align 1, !tbaa !472, !range !78, !noundef !79
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = load i32, ptr %i.be, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit19

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !474
  %i.by = shl nsw i64 %indvars.iv, 2
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit19

_ZN8facebook5velox6StatusD2Ev.exit19:             ; preds = %.noexc5, %bb.n, %bb.o
  %.0.i.i.i10 = phi i32 [ %i.ca, %bb.o ], [ %i.bw, %bb.n ], [ %i.bj, %.noexc5 ]
  %i.cb = sext i32 %.0.i.i.i10 to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !126
  %i.ce = mul i64 %i.bt, 31
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !126
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1942

bb.p:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !366   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !429
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !430
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !735
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !736
  store i8 1, ptr %3, align 8, !tbaa !738
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ch, ptr %i.cp, align 8, !tbaa !739
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_12VectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %i.cj, i32 noundef %i.cl, ptr noundef nonnull byval(%class.anon.1448) align 8 %2, ptr noundef nonnull byval(%class.anon.1449) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19, %bb.h, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS4_12VectorReaderIlEESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_ZNS3_ISY_EEvS10_iibSQ_EUliE_EEviiSQ_SX_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1448) align 8 %2, ptr noundef byval(%class.anon.1449) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.k

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
  %i.q = load i8, ptr %2, align 8, !tbaa !735, !range !78, !noundef !79
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !736
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !126
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !727 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !729, !nonnull !79, !align !163
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !730, !nonnull !79, !align !163
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !467
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !468, !range !78, !noundef !79
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !467
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 58
  %i.at = load i8, ptr %i.as, align 2, !tbaa !468, !range !78, !noundef !79
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !731, !nonnull !79, !align !163
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !733, !nonnull !79, !align !163
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !342
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i, %.preheader.i
  %.036.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.cf, %_ZN8facebook5velox6StatusD2Ev.exit25.i ] ; 3 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i, i1 true)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = or disjoint i32 %i.d, %i.be             ; 3 uses
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  br i1 %i.al, label %.noexc12.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load i8, ptr %i.am, align 1, !tbaa !472, !range !78, !noundef !79
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !473
  br label %.noexc12.i

bb.g:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !474
  %i.bl = shl nsw i64 %i.bg, 2
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !67
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bn, %bb.g ], [ %i.bj, %bb.f ], [ %i.bf, %bb.d ]
  %i.bo = sext i32 %.0.i.i.i.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !126
  br i1 %i.au, label %_ZN8facebook5velox6StatusD2Ev.exit25.i, label %bb.h

bb.h:                                             ; preds = %.noexc12.i
  %i.br = load i8, ptr %i.av, align 1, !tbaa !472, !range !78, !noundef !79
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.ax, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i

bb.j:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.aw, align 8, !tbaa !474
  %i.bv = shl nsw i64 %i.bg, 2
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i

_ZN8facebook5velox6StatusD2Ev.exit25.i:           ; preds = %bb.j, %bb.i, %.noexc12.i
  %.0.i.i.i16.i = phi i32 [ %i.bx, %bb.j ], [ %i.bt, %bb.i ], [ %i.bf, %.noexc12.i ]
  %i.by = sext i32 %.0.i.i.i16.i to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !126
  %i.cb = mul i64 %i.bq, 31
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bg
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !126
  %i.ce = add nsw i64 %.036.i, -1
  %i.cf = and i64 %i.ce, %.036.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.cf, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1943

bb.k:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = sdiv i32 %0, 64                         ; 2 uses
  %i.ch = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ci
  %i.cj = xor i64 %notmask.i.i35, -1
  %i.ck = sub nsw i32 64, %i.ch
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl i64 %i.cj, %i.cl
  %i.cn = load i8, ptr %2, align 8, !tbaa !735, !range !78, !noundef !79
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !736
  %i.cq = sext i32 %i.cg to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !126
  %i.ct = xor i8 %i.cn, 1
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = xor i64 %i.cs, %i.cv
  %i.cx = and i64 %i.cw, %i.cm                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cx, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = shl nsw i32 %i.cg, 6
  %.pre.i38 = load ptr, ptr %i.cy, align 8, !tbaa !727 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !729, !nonnull !79, !align !163
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !730, !nonnull !79, !align !163
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !467
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 58
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !468, !range !78, !noundef !79
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 59
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dn = load ptr, ptr %i.dd, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !467
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 58
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !468, !range !78, !noundef !79
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 59
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !731, !nonnull !79, !align !163
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !733, !nonnull !79, !align !163
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !342
  br label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i42, %.preheader.i37
  %.036.i39 = phi i64 [ %i.cx, %.preheader.i37 ], [ %i.fd, %_ZN8facebook5velox6StatusD2Ev.exit25.i42 ] ; 3 uses
  %i.eb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i39, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = or disjoint i32 %i.cz, %i.ec            ; 3 uses
  %i.ee = sext i32 %i.ed to i64                   ; 3 uses
  br i1 %i.dj, label %.noexc12.i40, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = load i8, ptr %i.dk, align 1, !tbaa !472, !range !78, !noundef !79
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eh = load i32, ptr %i.dm, align 8, !tbaa !473
  br label %.noexc12.i40

bb.p:                                             ; preds = %bb.n
  %i.ei = load ptr, ptr %i.dl, align 8, !tbaa !474
  %i.ej = shl nsw i64 %i.ee, 2
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !67
  br label %.noexc12.i40

.noexc12.i40:                                     ; preds = %bb.p, %bb.o, %bb.m
  %.0.i.i.i.i41 = phi i32 [ %i.el, %bb.p ], [ %i.eh, %bb.o ], [ %i.ed, %bb.m ]
  %i.em = sext i32 %.0.i.i.i.i41 to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !126
  br i1 %i.ds, label %_ZN8facebook5velox6StatusD2Ev.exit25.i42, label %bb.q

bb.q:                                             ; preds = %.noexc12.i40
  %i.ep = load i8, ptr %i.dt, align 1, !tbaa !472, !range !78, !noundef !79
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.er = load i32, ptr %i.dv, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i42

bb.s:                                             ; preds = %bb.q
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !474
  %i.et = shl nsw i64 %i.ee, 2
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i42

_ZN8facebook5velox6StatusD2Ev.exit25.i42:         ; preds = %bb.s, %bb.r, %.noexc12.i40
  %.0.i.i.i16.i43 = phi i32 [ %i.ev, %bb.s ], [ %i.er, %bb.r ], [ %i.ed, %.noexc12.i40 ]
  %i.ew = sext i32 %.0.i.i.i16.i43 to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !126
  %i.ez = mul i64 %i.eo, 31
  %i.fa = add i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ee
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !126
  %i.fc = add i64 %.036.i39, -1
  %i.fd = and i64 %i.fc, %.036.i39                ; 2 uses
  %.not10.i44 = icmp eq i64 %i.fd, 0
  br i1 %.not10.i44, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45, label %bb.m, !llvm.loop !1943

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i42, %bb.l, %bb.k
  %i.fe = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3358 = icmp sgt i32 %i.fe, %i.d
  br i1 %.not3358, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.t

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45, %.lr.ph
  %i.ff = phi i32 [ %i.fh, %.lr.ph ], [ %i.fe, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45 ] ; 2 uses
  %.059 = phi i32 [ %i.ff, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit45 ]
  %i.fg = sdiv i32 %.059, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fg)
  %i.fh = add nsw i32 %i.ff, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fh, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1944

bb.t:                                             ; preds = %._crit_edge
  %i.fi = ashr i32 %1, 6
  %i.fj = and i32 %1, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %notmask.i46 = shl nsw i64 -1, %i.fk
  %i.fl = xor i64 %notmask.i46, -1
  %i.fm = load i8, ptr %2, align 8, !tbaa !735, !range !78, !noundef !79
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !736
  %i.fp = sext i32 %i.fi to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !126
  %i.fs = xor i8 %i.fm, 1
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = sub nsw i64 0, %i.ft
  %i.fv = xor i64 %i.fr, %i.fu
  %i.fw = and i64 %i.fv, %i.fl                    ; 2 uses
  %.not.i47 = icmp eq i64 %i.fw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %.preheader.i48

.preheader.i48:                                   ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i49 = load ptr, ptr %i.fx, align 8, !tbaa !727 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre.i49, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !729, !nonnull !79, !align !163
  %i.ga = getelementptr inbounds nuw i8, ptr %.pre.i49, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !730, !nonnull !79, !align !163
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !467
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 58
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !468, !range !78, !noundef !79
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 59
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gl = load ptr, ptr %i.gb, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !467
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 58
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !468, !range !78, !noundef !79
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 59
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre.i49, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !731, !nonnull !79, !align !163
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !733, !nonnull !79, !align !163
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !342
  br label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i53, %.preheader.i48
  %.036.i50 = phi i64 [ %i.fw, %.preheader.i48 ], [ %i.ib, %_ZN8facebook5velox6StatusD2Ev.exit25.i53 ] ; 3 uses
  %i.gz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.036.i50, i1 true)
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = or disjoint i32 %i.d, %i.ha             ; 3 uses
  %i.hc = sext i32 %i.hb to i64                   ; 3 uses
  br i1 %i.gh, label %.noexc12.i51, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hd = load i8, ptr %i.gi, align 1, !tbaa !472, !range !78, !noundef !79
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hf = load i32, ptr %i.gk, align 8, !tbaa !473
  br label %.noexc12.i51

bb.x:                                             ; preds = %bb.v
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !474
  %i.hh = shl nsw i64 %i.hc, 2
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !67
  br label %.noexc12.i51

.noexc12.i51:                                     ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i.i.i52 = phi i32 [ %i.hj, %bb.x ], [ %i.hf, %bb.w ], [ %i.hb, %bb.u ]
  %i.hk = sext i32 %.0.i.i.i.i52 to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !126
  br i1 %i.gq, label %_ZN8facebook5velox6StatusD2Ev.exit25.i53, label %bb.y

bb.y:                                             ; preds = %.noexc12.i51
  %i.hn = load i8, ptr %i.gr, align 1, !tbaa !472, !range !78, !noundef !79
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hp = load i32, ptr %i.gt, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i53

bb.aa:                                            ; preds = %bb.y
  %i.hq = load ptr, ptr %i.gs, align 8, !tbaa !474
  %i.hr = shl nsw i64 %i.hc, 2
  %i.hs = getelementptr inbounds i8, ptr %i.hq, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i53

_ZN8facebook5velox6StatusD2Ev.exit25.i53:         ; preds = %bb.aa, %bb.z, %.noexc12.i51
  %.0.i.i.i16.i54 = phi i32 [ %i.ht, %bb.aa ], [ %i.hp, %bb.z ], [ %i.hb, %.noexc12.i51 ]
  %i.hu = sext i32 %.0.i.i.i16.i54 to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !126
  %i.hx = mul i64 %i.hm, 31
  %i.hy = add i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.hc
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !126
  %i.ia = add nsw i64 %.036.i50, -1
  %i.ib = and i64 %i.ia, %.036.i50                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ib, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit, label %bb.u, !llvm.loop !1943

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i53, %_ZN8facebook5velox6StatusD2Ev.exit25.i, %bb.t, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CombineHashFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJllEEEJllEEEE7iterateIJNS3_12VectorReaderIlEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !738, !range !78, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !739
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %.pre93 = load ptr, ptr %i.k, align 8, !tbaa !727 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre93, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !729, !nonnull !79, !align !163
  %i.o = getelementptr inbounds nuw i8, ptr %.pre93, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !730, !nonnull !79, !align !163
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !467
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %i.u = load i8, ptr %i.t, align 2, !tbaa !468, !range !78, !noundef !79
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 59
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !467
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 58
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !468, !range !78, !noundef !79
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre93, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !731, !nonnull !79, !align !163
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !733, !nonnull !79, !align !163
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !342
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.an = shl i32 %1, 6                           ; 3 uses
  %i.ao = add i32 %i.an, 64
  %i.ap = sext i32 %i.ao to i64
  %.not91 = icmp eq i32 %i.an, -64
  br i1 %.not91, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.b
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !727 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !729, !nonnull !79, !align !163
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !730, !nonnull !79, !align !163
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !467
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !468, !range !78, !noundef !79
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !466, !nonnull !79, !align !163 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !467
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 58
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !468, !range !78, !noundef !79
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !731, !nonnull !79, !align !163
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !733, !nonnull !79, !align !163
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !342
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph90, %_ZN8facebook5velox6StatusD2Ev.exit40
  %.089 = phi i64 [ %i.aq, %.lr.ph90 ], [ %i.cr, %_ZN8facebook5velox6StatusD2Ev.exit40 ] ; 5 uses
  %i.bt = trunc i64 %.089 to i32                  ; 2 uses
  br i1 %i.bb, label %.noexc26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = load i8, ptr %i.bc, align 1, !tbaa !472, !range !78, !noundef !79
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bw = load i32, ptr %i.be, align 8, !tbaa !473
  br label %.noexc26

bb.f:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !474
  %sext.i = shl i64 %.089, 32
  %i.by = ashr exact i64 %sext.i, 30
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !67
  br label %.noexc26

.noexc26:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.ca, %bb.f ], [ %i.bw, %bb.e ], [ %i.bt, %bb.c ]
  %i.cb = sext i32 %.0.i.i.i to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !126
  br i1 %i.bk, label %_ZN8facebook5velox6StatusD2Ev.exit40, label %bb.g

bb.g:                                             ; preds = %.noexc26
  %i.ce = load i8, ptr %i.bl, align 1, !tbaa !472, !range !78, !noundef !79
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = load i32, ptr %i.bn, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit40

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %i.bm, align 8, !tbaa !474
  %sext.i30 = shl i64 %.089, 32
  %i.ci = ashr exact i64 %sext.i30, 30
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  br label %_ZN8facebook5velox6StatusD2Ev.exit40

_ZN8facebook5velox6StatusD2Ev.exit40:             ; preds = %.noexc26, %bb.h, %bb.i
  %.0.i.i.i31 = phi i32 [ %i.ck, %bb.i ], [ %i.cg, %bb.h ], [ %i.bt, %.noexc26 ]
  %i.cl = sext i32 %.0.i.i.i31 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !126
  %i.co = mul i64 %i.cd, 31
  %i.cp = add i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.089
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !126
  %i.cr = add nuw i64 %.089, 1                    ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.ap
  br i1 %i.cs, label %bb.c, label %.loopexit, !llvm.loop !1945

bb.j:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit65
  %.01588 = phi i64 [ %i.j, %.lr.ph ], [ %i.dv, %_ZN8facebook5velox6StatusD2Ev.exit65 ] ; 3 uses
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01588, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = or disjoint i32 %i.l, %i.cu             ; 3 uses
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  br i1 %i.v, label %.noexc18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = load i8, ptr %i.w, align 1, !tbaa !472, !range !78, !noundef !79
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = load i32, ptr %i.y, align 8, !tbaa !473
  br label %.noexc18

bb.m:                                             ; preds = %bb.k
  %i.da = load ptr, ptr %i.x, align 8, !tbaa !474
  %i.db = shl nsw i64 %i.cw, 2
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !67
  br label %.noexc18

.noexc18:                                         ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i49 = phi i32 [ %i.dd, %bb.m ], [ %i.cz, %bb.l ], [ %i.cv, %bb.j ]
  %i.de = sext i32 %.0.i.i.i49 to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !126
  br i1 %i.ae, label %_ZN8facebook5velox6StatusD2Ev.exit65, label %bb.n

bb.n:                                             ; preds = %.noexc18
  %i.dh = load i8, ptr %i.af, align 1, !tbaa !472, !range !78, !noundef !79
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dj = load i32, ptr %i.ah, align 8, !tbaa !473
  br label %_ZN8facebook5velox6StatusD2Ev.exit65

bb.p:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %i.ag, align 8, !tbaa !474
end_hunk_13
