begin_hunk_0_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.ob, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %69 = insertelement <8 x i32> poison, i32 %i.od, i64 0
  %70 = insertelement <8 x i32> poison, i32 %i.of, i64 0
  %71 = icmp eq <8 x i32> %69, %70
  %72 = shufflevector <8 x i1> %71, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.cw
end_hunk_0
begin_hunk_1_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.os = sdiv i32 %.02229.i.i, 8
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds i8, ptr %i.v, i64 %i.ot
  store <8 x i1> %72, ptr %i.ou, align 1, !tbaa !32
  %i.ov = add nuw i32 %.02229.i.i, 8              ; 2 uses
  %i.ow = icmp ult i32 %i.ov, %i.nz
  br i1 %i.ow, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !343
end_hunk_1
begin_hunk_2_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.ahp, label %.lr.ph.i.preheader.i164, label %.preheader.i.i161

.lr.ph.i.preheader.i164:                          ; preds = %bb.hb
  %73 = insertelement <32 x i8> poison, i8 %i.ahr, i64 0
  %74 = insertelement <32 x i8> poison, i8 %i.aht, i64 0
  %75 = icmp eq <32 x i8> %73, %74
  %76 = shufflevector <32 x i1> %75, <32 x i1> poison, <32 x i32> zeroinitializer
  br label %.lr.ph.i.i165

.preheader.i.i161:                                ; preds = %.lr.ph.i.i165, %bb.hb
end_hunk_2
begin_hunk_3_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.aig = sdiv i32 %.02330.i.i166, 8
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds i8, ptr %i.tj, i64 %i.aih
  store <32 x i1> %76, ptr %i.aii, align 4, !tbaa !3
  %i.aij = add nuw i32 %.02330.i.i166, 32         ; 2 uses
  %i.aik = icmp ult i32 %i.aij, %i.ahn
  br i1 %i.aik, label %.lr.ph.i.i165, label %.preheader.i.i161, !llvm.loop !409
end_hunk_3
begin_hunk_4_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.bvt, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %77 = insertelement <4 x i64> poison, i64 %i.bvv, i64 0
  %78 = insertelement <4 x i64> poison, i64 %i.bvx, i64 0
  %79 = icmp eq <4 x i64> %77, %78
  %80 = shufflevector <4 x i1> %79, <4 x i1> poison, <4 x i32> zeroinitializer
  %81 = bitcast <4 x i1> %80 to i4
  %82 = zext i4 %81 to i8                         ; 4 uses
  %i.bvy = shl nuw i8 %82, 4                      ; 3 uses
  %i.bvz = add i32 %i.bvn, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvr, i32 %i.bvz)
  %i.bwa = xor i32 %i.bvn, -1
end_hunk_4
begin_hunk_5_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec = and i32 %i.bwd, 1073741792             ; 4 uses
  %i.bwe = shl i32 %n.vec, 3
  %i.bwf = add i32 %i.bvn, %i.bwe                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %82, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <32 x i8> poison, i8 %i.bvy, i64 0
  %broadcast.splat1433 = shufflevector <32 x i8> %broadcast.splatinsert1432, <32 x i8> poison, <32 x i32> zeroinitializer
end_hunk_5
begin_hunk_6_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec1439 = and i32 %i.bwd, 1073741816         ; 3 uses
  %i.cci = shl i32 %n.vec1439, 3
  %i.ccj = add i32 %i.bvn, %i.cci
  %broadcast.splatinsert1440 = insertelement <8 x i8> poison, i8 %82, i64 0
  %broadcast.splat1441 = shufflevector <8 x i8> %broadcast.splatinsert1440, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1442 = insertelement <8 x i8> poison, i8 %i.bvy, i64 0
  %broadcast.splat1443 = shufflevector <8 x i8> %broadcast.splatinsert1442, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_6
begin_hunk_7_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt8equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cew = icmp ult i32 %invariant.op.i.i, %i.bvr
  %i.cex = select i1 %i.cew, i8 %i.bvy, i8 0
  %spec.select.i = or disjoint i8 %i.cex, %82
  store i8 %spec.select.i, ptr %i.cev, align 1, !tbaa !32
  %i.cey = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cez = icmp ult i32 %i.cey, %i.bvr
end_hunk_7
begin_hunk_8_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.scalar.i.i.a = icmp ne i32 %i.od, %i.of
  %69 = insertelement <8 x i1> poison, i1 %.scalar.i.i.a, i64 0
  %70 = shufflevector <8 x i1> %69, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.cw
end_hunk_8
begin_hunk_9_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.or = sdiv i32 %.02229.i.i, 8
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds i8, ptr %i.v, i64 %i.os
  store <8 x i1> %70, ptr %i.ot, align 1, !tbaa !32
  %i.ou = add nuw i32 %.02229.i.i, 8              ; 2 uses
  %i.ov = icmp ult i32 %i.ou, %i.nz
  br i1 %i.ov, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !919
end_hunk_9
begin_hunk_10_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.lr.ph.i.preheader.i168:                          ; preds = %bb.hb
  %.scalar.i.i169 = icmp ne i8 %i.ahn, %i.ahp
  %71 = insertelement <32 x i1> poison, i1 %.scalar.i.i169, i64 0
  %72 = shufflevector <32 x i1> %71, <32 x i1> poison, <32 x i32> zeroinitializer
  br label %.lr.ph.i.i170

.preheader.i.i164:                                ; preds = %.lr.ph.i.i170, %bb.hb
end_hunk_10
begin_hunk_11_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.aib = sdiv i32 %.02330.i.i171, 8
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds i8, ptr %i.tf, i64 %i.aic
  store <32 x i1> %72, ptr %i.aid, align 4, !tbaa !3
  %i.aie = add nuw i32 %.02330.i.i171, 32         ; 2 uses
  %i.aif = icmp ult i32 %i.aie, %i.ahj
  br i1 %i.aif, label %.lr.ph.i.i170, label %.preheader.i.i164, !llvm.loop !963
end_hunk_11
begin_hunk_12_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.bvf, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp ne i64 %i.bvh, %i.bvj
  %73 = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %74 = shufflevector <4 x i1> %73, <4 x i1> poison, <4 x i32> zeroinitializer
  %75 = bitcast <4 x i1> %74 to i4
  %76 = zext i4 %75 to i8                         ; 4 uses
  %i.bvk = shl nuw i8 %76, 4                      ; 3 uses
  %i.bvl = add i32 %i.buz, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvd, i32 %i.bvl)
  %i.bvm = xor i32 %i.buz, -1
end_hunk_12
begin_hunk_13_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec = and i32 %i.bvp, 1073741792             ; 4 uses
  %i.bvq = shl i32 %n.vec, 3
  %i.bvr = add i32 %i.buz, %i.bvq                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %76, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <32 x i8> poison, i8 %i.bvk, i64 0
  %broadcast.splat1444 = shufflevector <32 x i8> %broadcast.splatinsert1443, <32 x i8> poison, <32 x i32> zeroinitializer
end_hunk_13
begin_hunk_14_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec1450 = and i32 %i.bvp, 1073741816         ; 3 uses
  %i.cbu = shl i32 %n.vec1450, 3
  %i.cbv = add i32 %i.buz, %i.cbu
  %broadcast.splatinsert1451 = insertelement <8 x i8> poison, i8 %76, i64 0
  %broadcast.splat1452 = shufflevector <8 x i8> %broadcast.splatinsert1451, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1453 = insertelement <8 x i8> poison, i8 %i.bvk, i64 0
  %broadcast.splat1454 = shufflevector <8 x i8> %broadcast.splatinsert1453, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_14
begin_hunk_15_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt12not_equal_toIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.ceh = icmp ult i32 %invariant.op.i.i, %i.bvd
  %i.cei = select i1 %i.ceh, i8 %i.bvk, i8 0
  %spec.select.i = or disjoint i8 %i.cei, %76
  store i8 %spec.select.i, ptr %i.ceg, align 1, !tbaa !32
  %i.cej = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cek = icmp ult i32 %i.cej, %i.bvd
end_hunk_15
begin_hunk_16_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.ob, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %69 = insertelement <8 x i32> poison, i32 %i.od, i64 0
  %70 = insertelement <8 x i32> poison, i32 %i.of, i64 0
  %71 = icmp sgt <8 x i32> %70, %69
  %72 = shufflevector <8 x i1> %71, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.cw
end_hunk_16
begin_hunk_17_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.os = sdiv i32 %.02229.i.i, 8
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds i8, ptr %i.v, i64 %i.ot
  store <8 x i1> %72, ptr %i.ou, align 1, !tbaa !32
  %i.ov = add nuw i32 %.02229.i.i, 8              ; 2 uses
  %i.ow = icmp ult i32 %i.ov, %i.nz
  br i1 %i.ow, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !1190
end_hunk_17
begin_hunk_18_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.ahp, label %.lr.ph.i.preheader.i164, label %.preheader.i.i161

.lr.ph.i.preheader.i164:                          ; preds = %bb.hb
  %73 = insertelement <32 x i8> poison, i8 %i.ahr, i64 0
  %74 = insertelement <32 x i8> poison, i8 %i.aht, i64 0
  %75 = icmp sgt <32 x i8> %74, %73
  %76 = shufflevector <32 x i1> %75, <32 x i1> poison, <32 x i32> zeroinitializer
  br label %.lr.ph.i.i165

.preheader.i.i161:                                ; preds = %.lr.ph.i.i165, %bb.hb
end_hunk_18
begin_hunk_19_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.aig = sdiv i32 %.02330.i.i166, 8
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds i8, ptr %i.tj, i64 %i.aih
  store <32 x i1> %76, ptr %i.aii, align 4, !tbaa !3
  %i.aij = add nuw i32 %.02330.i.i166, 32         ; 2 uses
  %i.aik = icmp ult i32 %i.aij, %i.ahn
  br i1 %i.aik, label %.lr.ph.i.i165, label %.preheader.i.i161, !llvm.loop !1234
end_hunk_19
begin_hunk_20_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.bvt, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %77 = insertelement <4 x i64> poison, i64 %i.bvv, i64 0
  %78 = insertelement <4 x i64> poison, i64 %i.bvx, i64 0
  %79 = icmp sgt <4 x i64> %78, %77
  %80 = shufflevector <4 x i1> %79, <4 x i1> poison, <4 x i32> zeroinitializer
  %81 = bitcast <4 x i1> %80 to i4
  %82 = zext i4 %81 to i8                         ; 4 uses
  %i.bvy = shl nuw i8 %82, 4                      ; 3 uses
  %i.bvz = add i32 %i.bvn, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvr, i32 %i.bvz)
  %i.bwa = xor i32 %i.bvn, -1
end_hunk_20
begin_hunk_21_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec = and i32 %i.bwd, 1073741792             ; 4 uses
  %i.bwe = shl i32 %n.vec, 3
  %i.bwf = add i32 %i.bvn, %i.bwe                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %82, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1432 = insertelement <32 x i8> poison, i8 %i.bvy, i64 0
  %broadcast.splat1433 = shufflevector <32 x i8> %broadcast.splatinsert1432, <32 x i8> poison, <32 x i32> zeroinitializer
end_hunk_21
begin_hunk_22_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec1439 = and i32 %i.bwd, 1073741816         ; 3 uses
  %i.cci = shl i32 %n.vec1439, 3
  %i.ccj = add i32 %i.bvn, %i.cci
  %broadcast.splatinsert1440 = insertelement <8 x i8> poison, i8 %82, i64 0
  %broadcast.splat1441 = shufflevector <8 x i8> %broadcast.splatinsert1440, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1442 = insertelement <8 x i8> poison, i8 %i.bvy, i64 0
  %broadcast.splat1443 = shufflevector <8 x i8> %broadcast.splatinsert1442, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_22
begin_hunk_23_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt4lessIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cew = icmp ult i32 %invariant.op.i.i, %i.bvr
  %i.cex = select i1 %i.cew, i8 %i.bvy, i8 0
  %spec.select.i = or disjoint i8 %i.cex, %82
  store i8 %spec.select.i, ptr %i.cev, align 1, !tbaa !32
  %i.cey = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cez = icmp ult i32 %i.cey, %i.bvr
end_hunk_23
begin_hunk_24_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.ob, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %69 = insertelement <8 x i32> poison, i32 %i.od, i64 0
  %70 = insertelement <8 x i32> poison, i32 %i.of, i64 0
  %71 = icmp sgt <8 x i32> %69, %70
  %72 = shufflevector <8 x i1> %71, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.cw
end_hunk_24
begin_hunk_25_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.os = sdiv i32 %.02229.i.i, 8
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds i8, ptr %i.v, i64 %i.ot
  store <8 x i1> %72, ptr %i.ou, align 1, !tbaa !32
  %i.ov = add nuw i32 %.02229.i.i, 8              ; 2 uses
  %i.ow = icmp ult i32 %i.ov, %i.nz
  br i1 %i.ow, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !1461
end_hunk_25
begin_hunk_26_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.ahp, label %.lr.ph.i.preheader.i164, label %.preheader.i.i161

.lr.ph.i.preheader.i164:                          ; preds = %bb.hb
  %73 = insertelement <32 x i8> poison, i8 %i.ahr, i64 0
  %74 = insertelement <32 x i8> poison, i8 %i.aht, i64 0
  %75 = icmp sgt <32 x i8> %73, %74
  %76 = shufflevector <32 x i1> %75, <32 x i1> poison, <32 x i32> zeroinitializer
  br label %.lr.ph.i.i165

.preheader.i.i161:                                ; preds = %.lr.ph.i.i165, %bb.hb
end_hunk_26
begin_hunk_27_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.aig = sdiv i32 %.02330.i.i166, 8
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds i8, ptr %i.tj, i64 %i.aih
  store <32 x i1> %76, ptr %i.aii, align 4, !tbaa !3
  %i.aij = add nuw i32 %.02330.i.i166, 32         ; 2 uses
  %i.aik = icmp ult i32 %i.aij, %i.ahn
  br i1 %i.aik, label %.lr.ph.i.i165, label %.preheader.i.i161, !llvm.loop !1505
end_hunk_27
begin_hunk_28_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.bvt, label %iter.check, label %.preheader.i.i488

iter.check:                                       ; preds = %bb.pl
  %77 = insertelement <4 x i64> poison, i64 %i.bvv, i64 0
  %78 = insertelement <4 x i64> poison, i64 %i.bvx, i64 0
  %79 = icmp sgt <4 x i64> %77, %78
  %80 = shufflevector <4 x i1> %79, <4 x i1> poison, <4 x i32> zeroinitializer
  %81 = bitcast <4 x i1> %80 to i4
  %82 = zext i4 %81 to i8                         ; 4 uses
  %i.bvy = shl nuw i8 %82, 4                      ; 3 uses
  %i.bvz = add i32 %i.bvn, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvr, i32 %i.bvz)
  %i.bwa = xor i32 %i.bvn, -1
end_hunk_28
begin_hunk_29_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec = and i32 %i.bwd, 1073741792             ; 4 uses
  %i.bwe = shl i32 %n.vec, 3
  %i.bwf = add i32 %i.bvn, %i.bwe                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %82, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1406 = insertelement <32 x i8> poison, i8 %i.bvy, i64 0
  %broadcast.splat1407 = shufflevector <32 x i8> %broadcast.splatinsert1406, <32 x i8> poison, <32 x i32> zeroinitializer
end_hunk_29
begin_hunk_30_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec1413 = and i32 %i.bwd, 1073741816         ; 3 uses
  %i.cci = shl i32 %n.vec1413, 3
  %i.ccj = add i32 %i.bvn, %i.cci
  %broadcast.splatinsert1414 = insertelement <8 x i8> poison, i8 %82, i64 0
  %broadcast.splat1415 = shufflevector <8 x i8> %broadcast.splatinsert1414, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1416 = insertelement <8 x i8> poison, i8 %i.bvy, i64 0
  %broadcast.splat1417 = shufflevector <8 x i8> %broadcast.splatinsert1416, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_30
begin_hunk_31_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt7greaterIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.cew = icmp ult i32 %invariant.op.i.i, %i.bvr
  %i.cex = select i1 %i.cew, i8 %i.bvy, i8 0
  %spec.select.i = or disjoint i8 %i.cex, %82
  store i8 %spec.select.i, ptr %i.cev, align 1, !tbaa !32
  %i.cey = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cez = icmp ult i32 %i.cey, %i.bvr
end_hunk_31
begin_hunk_32_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.scalar.i.i.a = icmp sge i32 %i.of, %i.od
  %69 = insertelement <8 x i1> poison, i1 %.scalar.i.i.a, i64 0
  %70 = shufflevector <8 x i1> %69, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.cw
end_hunk_32
begin_hunk_33_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.or = sdiv i32 %.02229.i.i, 8
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds i8, ptr %i.v, i64 %i.os
  store <8 x i1> %70, ptr %i.ot, align 1, !tbaa !32
  %i.ou = add nuw i32 %.02229.i.i, 8              ; 2 uses
  %i.ov = icmp ult i32 %i.ou, %i.nz
  br i1 %i.ov, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !1732
end_hunk_33
begin_hunk_34_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.lr.ph.i.preheader.i168:                          ; preds = %bb.hb
  %.scalar.i.i169 = icmp sge i8 %i.ahp, %i.ahn
  %71 = insertelement <32 x i1> poison, i1 %.scalar.i.i169, i64 0
  %72 = shufflevector <32 x i1> %71, <32 x i1> poison, <32 x i32> zeroinitializer
  br label %.lr.ph.i.i170

.preheader.i.i164:                                ; preds = %.lr.ph.i.i170, %bb.hb
end_hunk_34
begin_hunk_35_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.aib = sdiv i32 %.02330.i.i171, 8
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds i8, ptr %i.tf, i64 %i.aic
  store <32 x i1> %72, ptr %i.aid, align 4, !tbaa !3
  %i.aie = add nuw i32 %.02330.i.i171, 32         ; 2 uses
  %i.aif = icmp ult i32 %i.aie, %i.ahj
  br i1 %i.aif, label %.lr.ph.i.i170, label %.preheader.i.i164, !llvm.loop !1776
end_hunk_35
begin_hunk_36_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.bvf, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp sge i64 %i.bvj, %i.bvh
  %73 = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %74 = shufflevector <4 x i1> %73, <4 x i1> poison, <4 x i32> zeroinitializer
  %75 = bitcast <4 x i1> %74 to i4
  %76 = zext i4 %75 to i8                         ; 4 uses
  %i.bvk = shl nuw i8 %76, 4                      ; 3 uses
  %i.bvl = add i32 %i.buz, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvd, i32 %i.bvl)
  %i.bvm = xor i32 %i.buz, -1
end_hunk_36
begin_hunk_37_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec = and i32 %i.bvp, 1073741792             ; 4 uses
  %i.bvq = shl i32 %n.vec, 3
  %i.bvr = add i32 %i.buz, %i.bvq                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %76, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <32 x i8> poison, i8 %i.bvk, i64 0
  %broadcast.splat1436 = shufflevector <32 x i8> %broadcast.splatinsert1435, <32 x i8> poison, <32 x i32> zeroinitializer
end_hunk_37
begin_hunk_38_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec1442 = and i32 %i.bvp, 1073741816         ; 3 uses
  %i.cbu = shl i32 %n.vec1442, 3
  %i.cbv = add i32 %i.buz, %i.cbu
  %broadcast.splatinsert1443 = insertelement <8 x i8> poison, i8 %76, i64 0
  %broadcast.splat1444 = shufflevector <8 x i8> %broadcast.splatinsert1443, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <8 x i8> poison, i8 %i.bvk, i64 0
  %broadcast.splat1446 = shufflevector <8 x i8> %broadcast.splatinsert1445, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_38
begin_hunk_39_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt10less_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.ceh = icmp ult i32 %invariant.op.i.i, %i.bvd
  %i.cei = select i1 %i.ceh, i8 %i.bvk, i8 0
  %spec.select.i = or disjoint i8 %i.cei, %76
  store i8 %spec.select.i, ptr %i.ceg, align 1, !tbaa !32
  %i.cej = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cek = icmp ult i32 %i.cej, %i.bvd
end_hunk_39
begin_hunk_40_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.scalar.i.i.a = icmp sge i32 %i.od, %i.of
  %69 = insertelement <8 x i1> poison, i1 %.scalar.i.i.a, i64 0
  %70 = shufflevector <8 x i1> %69, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.cw
end_hunk_40
begin_hunk_41_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.or = sdiv i32 %.02229.i.i, 8
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds i8, ptr %i.v, i64 %i.os
  store <8 x i1> %70, ptr %i.ot, align 1, !tbaa !32
  %i.ou = add nuw i32 %.02229.i.i, 8              ; 2 uses
  %i.ov = icmp ult i32 %i.ou, %i.nz
  br i1 %i.ov, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !2003
end_hunk_41
begin_hunk_42_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a

.lr.ph.i.preheader.i168:                          ; preds = %bb.hb
  %.scalar.i.i169 = icmp sge i8 %i.ahn, %i.ahp
  %71 = insertelement <32 x i1> poison, i1 %.scalar.i.i169, i64 0
  %72 = shufflevector <32 x i1> %71, <32 x i1> poison, <32 x i32> zeroinitializer
  br label %.lr.ph.i.i170

.preheader.i.i164:                                ; preds = %.lr.ph.i.i170, %bb.hb
end_hunk_42
begin_hunk_43_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %i.aib = sdiv i32 %.02330.i.i171, 8
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds i8, ptr %i.tf, i64 %i.aic
  store <32 x i1> %72, ptr %i.aid, align 4, !tbaa !3
  %i.aie = add nuw i32 %.02330.i.i171, 32         ; 2 uses
  %i.aif = icmp ult i32 %i.aie, %i.ahj
  br i1 %i.aif, label %.lr.ph.i.i170, label %.preheader.i.i164, !llvm.loop !2047
end_hunk_43
begin_hunk_44_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  br i1 %i.bvf, label %iter.check, label %.preheader.i.i498

iter.check:                                       ; preds = %bb.pl
  %.scalar.i.i501 = icmp sge i64 %i.bvh, %i.bvj
  %73 = insertelement <4 x i1> poison, i1 %.scalar.i.i501, i64 0
  %74 = shufflevector <4 x i1> %73, <4 x i1> poison, <4 x i32> zeroinitializer
  %75 = bitcast <4 x i1> %74 to i4
  %76 = zext i4 %75 to i8                         ; 4 uses
  %i.bvk = shl nuw i8 %76, 4                      ; 3 uses
  %i.bvl = add i32 %i.buz, 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bvd, i32 %i.bvl)
  %i.bvm = xor i32 %i.buz, -1
end_hunk_44
begin_hunk_45_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec = and i32 %i.bvp, 1073741792             ; 4 uses
  %i.bvq = shl i32 %n.vec, 3
  %i.bvr = add i32 %i.buz, %i.bvq                 ; 2 uses
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %76, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1435 = insertelement <32 x i8> poison, i8 %i.bvk, i64 0
  %broadcast.splat1436 = shufflevector <32 x i8> %broadcast.splatinsert1435, <32 x i8> poison, <32 x i32> zeroinitializer
end_hunk_45
begin_hunk_46_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %n.vec1442 = and i32 %i.bvp, 1073741816         ; 3 uses
  %i.cbu = shl i32 %n.vec1442, 3
  %i.cbv = add i32 %i.buz, %i.cbu
  %broadcast.splatinsert1443 = insertelement <8 x i8> poison, i8 %76, i64 0
  %broadcast.splat1444 = shufflevector <8 x i8> %broadcast.splatinsert1443, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <8 x i8> poison, i8 %i.bvk, i64 0
  %broadcast.splat1446 = shufflevector <8 x i8> %broadcast.splatinsert1445, <8 x i8> poison, <8 x i32> zeroinitializer
end_hunk_46
begin_hunk_47_@_ZZNK8facebook5velox9functions12_GLOBAL__N_122ComparisonSimdFunctionISt13greater_equalIvEN5xsimd4fma3INS6_4avx2EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERNS0_4exec7EvalCtxERSH_ENKUlvE_clEv:bb.a
  %invariant.op.i.i = add nuw i32 %.03241.i.i, 4
  %i.ceh = icmp ult i32 %invariant.op.i.i, %i.bvd
  %i.cei = select i1 %i.ceh, i8 %i.bvk, i8 0
  %spec.select.i = or disjoint i8 %i.cei, %76
  store i8 %spec.select.i, ptr %i.ceg, align 1, !tbaa !32
  %i.cej = add nsw i32 %.03241.i.i, 8             ; 2 uses
  %i.cek = icmp ult i32 %i.cej, %i.bvd
end_hunk_47
