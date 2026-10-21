Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanTransforms?download=true
inline.NumInlined: 28623
inline.NumDeleted: 13159
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_1EclIPPNS2_7VPValueEEEbT_":bb.a
  br i1 %.not15.i.i.i.not.i85.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.thread107.i.i.i.i.i.i", label %bb.t

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.i.i.i.i.i.i": ; preds = %bb.r
  %i.ef = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %.0.val, ptr noundef %i.du) #25
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.thread107.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.thread107.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i83.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i"

"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit63.i.i.i.i.i.i", %bb.j, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit55.i.i.i.i.i.i", %bb.h, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit47.i.i.i.i.i.i", %bb.f, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i", %bb.d, %bb.e, %bb.g, %bb.i, %bb.k, %bb.n, %bb.q, %bb.t, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.thread107.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.i.i.i.i.i.i", %bb.s, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit79.i.i.i.i.i.i", %bb.p, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit71.i.i.i.i.i.i", %bb.m
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit79.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %bb.m ], [ %.1.i.i.i.i.i.i, %bb.p ], [ %.2.i.i.i.i.i.i, %bb.s ], [ %i.j, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.thread107.i.i.i.i.i.i" ], [ %i.an, %bb.g ], [ %.029.lcssa.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit71.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit87.i.i.i.i.i.i" ], [ %.1.i.i.i.i.i.i, %bb.q ], [ %i.bh, %bb.i ], [ %i.cb, %bb.k ], [ %.029149.i.i.i.i.i.i, %bb.e ], [ %.2.i.i.i.i.i.i, %bb.t ], [ %.029.lcssa.i.i.i.i.i.i, %bb.n ], [ %.029149.i.i.i.i.i.i, %bb.d ], [ %i.ag, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit47.i.i.i.i.i.i" ], [ %i.ba, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit55.i.i.i.i.i.i" ], [ %i.bu, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit63.i.i.i.i.i.i" ], [ %i.ag, %bb.f ], [ %i.ba, %bb.h ], [ %i.bu, %bb.j ], [ %.029149.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i" ]
  %i.eh = icmp ne ptr %i.j, %.028.i.i.i.i.i.i
  br label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueE.exit"

"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueE.exit": ; preds = %bb.a, %_ZN4llvm3isaIJNS_17VPWidenCastRecipeEEPNS_7VPValueEEEbRKT0_.exit.i, %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i"
  %i.ei = phi i1 [ false, %_ZN4llvm3isaIJNS_17VPWidenCastRecipeEEPNS_7VPValueEEEbRKT0_.exit.i ], [ %i.eh, %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i" ], [ false, %bb.a ]
  ret i1 %i.ei
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_3EclIPPNS2_6VPUserEEEbT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr %.0.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::VPlanPatternMatch::Recipe_match.3094", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !135   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.0.val, i64 -32 ; 9 uses
  switch i8 %i.b, label %_ZNK4llvm15SmallPtrSetImplIPNS_13VPBlendRecipeEE8containsEPKS1_.exit.thread34.i [
    i8 34, label %bb.b
    i8 25, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !4313
  %i.e = icmp eq ptr %i.c, %i.d
  br label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4314, !nonnull !255, !align !432
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !791
  %i.j = icmp eq ptr %i.c, %i.i
  br i1 %i.j, label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !4315, !nonnull !255, !align !432 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !253, !range !254, !noundef !255
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !256  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !302  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not17.i.i.i, label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.01218.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !305
  %.not15.i.i.i = icmp eq ptr %i.u, %i.c          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  %or.cond.i = select i1 %.not15.i.i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit", label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.l, ptr noundef nonnull %i.c) #25
  %i.x = icmp ne ptr %i.w, null
  br label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit"

_ZNK4llvm15SmallPtrSetImplIPNS_13VPBlendRecipeEE8containsEPKS1_.exit.thread34.i: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !4314, !nonnull !255, !align !432 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !790
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4316, !nonnull !255, !align !432 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !808, !noalias !4317
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !809, !noalias !4317 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !810, !noalias !4317 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_13VPBlendRecipeEE8containsEPKS1_.exit.thread34.i
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  %i.al = ptrtoint ptr %i.c to i64
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ak, %i.ap                    ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !197
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i21.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i, !prof !290

.lr.ph.i.i21.i:                                   ; preds = %bb.g, %bb.h
  %i.ay = phi i64 [ %i.be, %bb.h ], [ %i.ar, %bb.g ]
  %.017.i.i.i = phi i32 [ %i.bd, %bb.h ], [ %i.aq, %bb.g ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !412
  %i.bb = icmp eq ptr %i.c, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.h, !prof !194

bb.h:                                             ; preds = %.lr.ph.i.i21.i
  %i.bc = add nuw i32 %.017.i.i.i, 1
  %i.bd = and i32 %i.bc, %i.ak                    ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !197
  %i.bi = and i32 %i.bd, 31
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i.i21.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i, !prof !294

bb.i:                                             ; preds = %.lr.ph.i.i21.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.1.in.i.sroa.speculate.load..i = load i32, ptr %i.bl, align 4, !tbaa !197
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i: ; preds = %bb.h, %bb.i, %bb.g, %_ZNK4llvm15SmallPtrSetImplIPNS_13VPBlendRecipeEE8containsEPKS1_.exit.thread34.i
  %.1.in.i.sroa.speculated.i = phi i32 [ %.1.in.i.sroa.speculate.load..i, %bb.i ], [ 0, %_ZNK4llvm15SmallPtrSetImplIPNS_13VPBlendRecipeEE8containsEPKS1_.exit.thread34.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  %i.bm = icmp eq i32 %i.ab, %.1.in.i.sroa.speculated.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  br i1 %i.bm, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !787 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %spec.select.i = select i1 %i.bo, ptr null, ptr %i.bp
  %.not37.i = icmp eq i8 %i.b, 5
  br i1 %.not37.i, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i.i.i, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i.i.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.val, i64 192
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !149
  %i.bs = icmp eq i8 %i.br, 85
  br i1 %i.bs, label %bb.k, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

bb.k:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !76
  switch i32 %i.bu, label %bb.l [
    i32 0, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i
    i32 1, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.bv = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #25 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i:   ; preds = %bb.l
  %i.bx = add nuw i32 %i.bv, 1                    ; 2 uses
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !76
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.m, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

bb.m:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i
  %i.ca = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #25 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = add nuw i32 %i.ca, 1
  %i.cd = load i32, ptr %i.bt, align 8, !tbaa !76
  %i.ce = icmp eq i32 %i.cc, %i.cd
  %i.cf = sext i1 %i.ce to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.cf, %bb.n ], [ 0, %bb.m ]
  %i.cg = add i32 %.0.i.i.i.i.i, %i.bx
  %.not22.i.i.i = icmp eq i32 %i.cg, 1
  br i1 %.not22.i.i.i, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i: ; preds = %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !75
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !157
  %i.ck = icmp eq ptr %i.cj, %spec.select.i
  br i1 %i.ck, label %bb.o, label %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i

_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i: ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i, %bb.l, %bb.k, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS5_EEbPKNS_12VPRecipeBaseE.exit.i.i.i, %bb.j
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !4314, !nonnull !255, !align !432
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !787 ; 2 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !4313  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.co = insertelement <2 x ptr> poison, ptr %i.cn, i64 0
  %i.cp = insertelement <2 x ptr> %i.co, ptr %i.cm, i64 1
  %i.cq = icmp eq <2 x ptr> %i.cp, splat (ptr null)
  %3 = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  %4 = insertelement <2 x ptr> poison, ptr %3, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %2, i64 1
  %i.cr = select <2 x i1> %i.cq, <2 x ptr> splat (ptr null), <2 x ptr> %5
  %i.cs = ptrtoint <2 x ptr> %i.cr to <2 x i64>
  store <2 x i64> %i.cs, ptr %1, align 16, !tbaa !157, !alias.scope !4318
  %i.ct = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i, %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i
  %i.cu = phi i1 [ true, %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i ], [ true, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9lookup_orIiEEjPKS2_OT_.exit.i ], [ %i.ct, %_ZN4llvm17VPlanPatternMatch5matchINS0_12Recipe_matchISt5tupleIJNS0_14specificval_tyEEELj85ELb0EJNS_13VPInstructionEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit"

"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_3clEPNS_6VPUserE.exit": ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %bb.e, %bb.f, %bb.o
  %.3.i = phi i1 [ %i.e, %bb.b ], [ %i.cu, %bb.o ], [ true, %bb.c ], [ false, %bb.e ], [ %i.x, %bb.f ], [ %.not15.i.i.i, %.lr.ph.i.i.i ]
  %i.cv = xor i1 %.3.i, true
  ret i1 %i.cv
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !135   ; 6 uses
  %i.c = icmp ne i8 %i.b, 24
  %.not3.i = icmp eq ptr %1, null                 ; 6 uses
  %.not.i = or i1 %.not3.i, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !193
  %i.f = icmp eq i32 %i.e, 59
  br i1 %i.f, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i8 %i.b, 10
  %.not.i27 = or i1 %.not3.i, %i.g
  br i1 %.not.i27, label %bb.c, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.j = load i8, ptr %i.i, align 8, !tbaa !112
  %i.k = icmp eq i8 %i.j, 89
  br i1 %i.k, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ne i8 %i.b, 16
  %.not.i29 = or i1 %.not3.i, %i.l
  br i1 %.not.i29, label %bb.d, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = load i32, ptr %i.m, align 8, !tbaa !191
  %i.o = icmp eq i32 %i.n, 59
  br i1 %i.o, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ne i8 %i.b, 5
  %.not.i31 = or i1 %.not3.i, %i.p
  br i1 %.not.i31, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load i8, ptr %i.q, align 8, !tbaa !149
  %i.s = icmp eq i8 %i.r, 59
  br i1 %i.s, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.e:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !76   ; 3 uses
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not45 = icmp eq i32 %i.u, 3
  br i1 %.not45, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ne i8 %i.b, 5
  %.not = or i1 %.not3.i, %i.w
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #25 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit

_ZNK4llvm13VPInstruction8isMaskedEv.exit:         ; preds = %bb.h
  %i.z = add nuw i32 %i.x, 1                      ; 2 uses
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !76
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.i:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit
  %i.ac = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #25 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nuw i32 %i.ac, 1
  %i.af = load i32, ptr %i.t, align 8, !tbaa !76
  %i.ag = icmp eq i32 %i.ae, %i.af
  %i.ah = sext i1 %i.ag to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.ai = add i32 %.0.i.i, %i.z
  %.not25 = icmp eq i32 %i.ai, 3
  br i1 %.not25, label %.critedge, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.k:                                             ; preds = %bb.g
  %i.aj = icmp ne i8 %i.b, 10
  %.not23 = or i1 %.not3.i, %i.aj
  br i1 %.not23, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !188, !range !254, !noundef !255
  %i.am = trunc nuw i8 %i.al to i1
  %.not24 = icmp eq i32 %i.u, 4
  %or.cond = and i1 %.not24, %i.am
  br i1 %or.cond, label %.critedge, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

.critedge:                                        ; preds = %bb.l, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.an, align 8, !tbaa !157
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !157
  %i.as = icmp eq ptr %i.ar, %.sroa.01.0.copyload.i
  br i1 %i.as, label %bb.m, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

bb.m:                                             ; preds = %.critedge
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !157
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !157
  %i.av = icmp eq ptr %i.au, %.sroa.0.0.copyload.i
  br label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSD_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESI_.exit: ; preds = %bb.e, %bb.h, %bb.l, %bb.k, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, %_ZNK4llvm13VPInstruction8isMaskedEv.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit, %bb.d, %bb.m, %.critedge, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit
  %.4 = phi i1 [ false, %bb.h ], [ false, %.critedge ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit ], [ %i.av, %bb.m ], [ false, %bb.d ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEENS0_14specificval_tyES7_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit ], [ false, %_ZNK4llvm13VPInstruction8isMaskedEv.exit ], [ false, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit ], [ false, %bb.k ], [ false, %bb.e ], [ false, %bb.l ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN4llvm12ElementCountEEZNS0_15VPlanTransforms23createPartialReductionsERNS0_5VPlanERNS0_13VPCostContextERNS0_7VFRangeEE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !4321  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !4322 ; 4 uses
  %.val3 = load i64, ptr %1, align 4              ; 4 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !75 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val4 = load i32, ptr %i.b, align 8, !tbaa !76 ; 2 uses
  %i.c = zext i32 %.val.val4 to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.c, 72
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 %.idx.i.i.i.i
  %.not100.i.i.i.i = icmp eq i32 %.val.val4, 0
  br i1 %.not100.i.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm15VPlanTransforms23createPartialReductionsERNS0_5VPlanERNS0_13VPCostContextERNS0_7VFRangeEE3$_0JNS0_12ElementCountEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %bb.a, %._crit_edge.i.i.i.i
  %.047104.i.i.i.i = phi ptr [ %i.bx, %._crit_edge.i.i.i.i ], [ %.val.val, %bb.a ] ; 10 uses
  %.sroa.080.0103.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %._crit_edge.i.i.i.i ], [ 0, %bb.a ]
  %.sroa.10.0102.i.i.i.i = phi i32 [ %.sroa.10.2.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ 0, %bb.a ]
  %.sroa.076.0101.i.i.i.i = phi i64 [ %.sroa.076.2.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.047104.i.i.i.i, i64 8 ; 3 uses
  %i.f = load ptr, ptr %.val2, align 8, !tbaa !4324, !nonnull !255, !align !432 ; 2 uses
  %i.g = load ptr, ptr %.047104.i.i.i.i, align 8, !tbaa !787 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.047104.i.i.i.i, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4325
  %.not.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph106.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !4326
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.n = load i32, ptr %i.m, align 8, !tbaa !193
  %i.o = zext i32 %i.n to i64
  %i.p = or disjoint i64 %i.o, 4294967296
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph106.i.i.i.i
  %.sroa.425.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %i.p, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %trunc.i.i.i.i.i.i.i = trunc i32 %i.r to i8
  switch i8 %trunc.i.i.i.i.i.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.i.i.i.i [
    i8 3, label %_ZNSt8optionalIN4llvm13FastMathFlagsEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i
    i8 2, label %_ZNSt8optionalIN4llvm13FastMathFlagsEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i
    i8 0, label %_ZNSt8optionalIN4llvm13FastMathFlagsEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i
    i8 1, label %_ZNSt8optionalIN4llvm13FastMathFlagsEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i
    i8 5, label %_ZNSt8optionalIN4llvm13FastMathFlagsEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = and i32 %i.r, 253
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.s, 4
end_hunk_0
