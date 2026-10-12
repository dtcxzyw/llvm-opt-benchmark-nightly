Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopStrengthReduce?download=true
inline.NumInlined: 10948
inline.NumDeleted: 5106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_:bb.a
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1553

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1554

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !401
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aw, align 8, !tbaa !649
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ax, align 8, !tbaa !649
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.az = zext i32 %i.av to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val11, i64 noundef %i.be, i64 noundef 8) #23
  store i32 0, ptr %i.b, align 4, !tbaa !401
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEN12_GLOBAL__N_111RegSortDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction20isLifetimeStartOrEndEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance25InsertSupplementalFormulaEPKN4llvm4SCEVERNS_6LSRUseEm(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(2096) %2, i64 noundef %3) unnamed_addr #3 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit:
  %4 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.b, align 8, !tbaa !534
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 17, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 4, ptr %i.f, align 4, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  store ptr %1, ptr %i.d, align 8
  store i32 1, ptr %i.e, align 8, !tbaa !84
  store i8 1, ptr %i.a, align 8, !tbaa !533
  %i.h = trunc i64 %3 to i32
  %i.i = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %2, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(112) %4) ; 0 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.j) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit

_ZN12_GLOBAL__N_17FormulaD2Ev.exit:               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111LSRInstance26GenerateReassociationsImplERNS_6LSRUseEjRKNS_7FormulaEjmb(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %3, i32 noundef range(i32 0, 3) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"struct.llvm::SCEVUseT", align 8   ; 8 uses
  %8 = alloca %"struct.llvm::SCEVUseT", align 8   ; 8 uses
  %9 = alloca %"class.llvm::SmallVector.609", align 8 ; 13 uses
  %10 = alloca %"class.llvm::SmallVector.418", align 8 ; 13 uses
  %11 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 13 uses
  %12 = alloca %"struct.(anonymous namespace)::Formula", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %5
  %.in = select i1 %6, ptr %i.a, ptr %i.d
  %i.e = load ptr, ptr %.in, align 8, !tbaa !390  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !455
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !470, !nonnull !68, !align !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !452
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !468, !nonnull !68, !align !80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val88 = load i32, ptr %i.o, align 8, !tbaa !584
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val89 = load ptr, ptr %i.p, align 8
  %i.q = tail call fastcc noundef zeroext i1 @_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 %.val88, ptr %.val89, ptr noundef %i.e, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(1152) %i.n)
  br i1 %i.q, label %bb.ay, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 8, ptr %i.t, align 4, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !452
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !468, !nonnull !68, !align !80
  %i.y = call fastcc noundef ptr @_ZL15CollectSubexprsPKN4llvm4SCEVEPKNS_12SCEVConstantERNS_15SmallVectorImplIS2_EEPKNS_4LoopERNS_15ScalarEvolutionEj(ptr noundef %i.e, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(1152) %i.x, i32 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.y, null
  %.pre159 = load i32, ptr %i.s, align 8, !tbaa !84 ; 3 uses
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.t, align 4, !tbaa !85
  %.not.i = icmp ult i32 %.pre159, %i.z
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !134

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.y)
  %.pre = load i32, ptr %i.s, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = zext i32 %.pre159 to i64
  %i.ab = load ptr, ptr %9, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %i.y, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !84
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %i.af = phi i32 [ %i.ae, %bb.f ], [ %.pre, %bb.e ], [ %.pre159, %bb.c ] ; 3 uses
  %i.ag = icmp eq i32 %i.af, 1
  %.pre163 = load ptr, ptr %9, align 8, !tbaa !71 ; 5 uses
  %.pre163180 = ptrtoaddr ptr %.pre163 to i64     ; 3 uses
  br i1 %i.ag, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit
  %i.ah = zext i32 %i.af to i64
  %.idx158 = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre163, i64 %.idx158
  %.not74154 = icmp eq i32 %i.af, 0
  br i1 %.not74154, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 52 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 3 uses
  %.idx150 = shl nuw nsw i64 %5, 3
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.bh = add nuw nsw i32 %4, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bj = add i64 %.pre163180, -8
  %invariant.op = sub i64 -16, %.pre163180
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph157, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread
  %indvar = phi i64 [ 0, %.lr.ph157 ], [ %indvar.next, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread ] ; 4 uses
  %.0155 = phi ptr [ %.pre163, %.lr.ph157 ], [ %i.mu, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread ] ; 9 uses
  %i.bk = mul nsw i64 %indvar, -8
  %reass.sub202 = sub i64 %i.bk, %.pre163180
  %i.bl = load ptr, ptr %.0155, align 8, !tbaa !390 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !378
  %i.bo = icmp eq i16 %i.bn, 16
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !468, !nonnull !68, !align !80
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !452
  %i.br = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.bp, ptr noundef nonnull %i.bl, ptr noundef %i.bq) #23
  br i1 %i.br, label %._crit_edge160, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread

._crit_edge160:                                   ; preds = %bb.i
  %.pre161 = load ptr, ptr %.0155, align 8, !tbaa !390
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge160, %bb.h
  %i.bs = phi ptr [ %.pre161, %._crit_edge160 ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !470, !nonnull !68, !align !80
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !468, !nonnull !68, !align !80 ; 2 uses
  %.sroa.028.0.copyload = load i64, ptr %i.ak, align 8
  %.sroa.229.0.copyload = load i8, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.025.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.226.0.copyload = load i8, ptr %.sroa.226.0..sroa_idx, align 8
  %i.bv = load i32, ptr %i.am, align 8, !tbaa !584 ; 2 uses
  %.sroa.0130.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !480
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !404
  %.val84 = load i32, ptr %i.ao, align 8, !tbaa !84
  %.val85 = load ptr, ptr %i.a, align 8, !tbaa !536
  %i.bw = icmp ne ptr %.val85, null
  %i.bx = zext i1 %i.bw to i64
  %i.by = zext i32 %.val84 to i64
  %i.bz = add nuw nsw i64 %i.bx, %i.by
  %i.ca = icmp samesign ugt i64 %i.bz, 1
  %i.cb = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bs) #23
  br i1 %i.cb, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cc = ptrtoint ptr %i.bs to i64
  %i.cd = and i64 %i.cc, -7
  store i64 %i.cd, ptr %8, align 8
  %i.ce = call fastcc { i64, i8 } @_ZL16ExtractImmediateRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionEb(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(1152) %i.bu, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ce, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ce, 1
  %i.cf = call fastcc noundef ptr @_ZL13ExtractSymbolRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(1152) %i.bu) ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %8, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ch) #23
  br i1 %i.ci, label %bb.l, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138

bb.l:                                             ; preds = %bb.k
  %i.cj = icmp eq i64 %.fca.0.extract.i, 0
  %i.ck = icmp eq ptr %i.cf, null
  %or.cond.not.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.not.i, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread140, label %bb.m

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread140: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cl = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.cl, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138: ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.n

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit: ; preds = %bb.m
  %i.cm = icmp eq i32 %i.bv, 3
  %i.cn = select i1 %i.cm, i64 -1, i64 1
  %i.co = call fastcc noundef zeroext i1 @_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i64 %.sroa.028.0.copyload, i8 %.sroa.229.0.copyload, i64 %.sroa.025.0.copyload, i8 %.sroa.226.0.copyload, i32 noundef %i.bv, ptr %.sroa.0130.0.copyload, i32 %.sroa.2.0.copyload, ptr noundef %i.cf, i64 %.fca.0.extract.i, i8 0, i1 noundef zeroext %i.ca, i64 noundef %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.co, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit.thread138, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cp = load ptr, ptr %9, align 8, !tbaa !71    ; 6 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !71
  store i32 0, ptr %i.aq, align 8, !tbaa !84
  store i32 8, ptr %i.ar, align 4, !tbaa !85
  %i.cq = ptrtoint ptr %.0155 to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, 8
  br i1 %i.cu, label %bb.o, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull %i.ap, i64 noundef %i.ct, i64 noundef 8) #23
  %.pre.i.i = load i32, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i = phi i64 [ 0, %bb.n ], [ %.pre9.i.i, %bb.o ] ; 2 uses
  %i.cv = phi i32 [ 0, %bb.n ], [ %.pre.i.i, %bb.o ]
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.cp, %.0155
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i
  %i.cw = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.pre-phi.i.i ; 4 uses
  %13 = shl i64 %indvar, 3
  %14 = add i64 %13, %i.bj                        ; 2 uses
  %i.cy = sub i64 %14, %i.cr                      ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check187 = icmp ult i64 %i.cy, 40
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck184

vector.memcheck184:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.db = ptrtoaddr ptr %i.cw to i64
  %i.dc = shl nuw nsw i64 %.pre-phi.i.i, 3
  %i.dd = add i64 %i.dc, %i.db
  %i.de = sub i64 %i.cr, %i.dd
  %diff.check185 = icmp ugt i64 %i.de, -32
  br i1 %diff.check185, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck184
  %n.vec189 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.df = shl i64 %n.vec189, 3                    ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cx, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.cp, i64 %i.df
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.di = shl i64 %index191, 3                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.cx, i64 %i.di ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.cp, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x ptr>, ptr %next.gep193, align 8, !tbaa !390
  %wide.load195 = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !390
  %i.dk = ptrtoint <2 x ptr> %wide.load194 to <2 x i64>
  %i.dl = ptrtoint <2 x ptr> %wide.load195 to <2 x i64>
  %i.dm = and <2 x i64> %i.dk, splat (i64 -7)
  %i.dn = and <2 x i64> %i.dl, splat (i64 -7)
  %i.do = getelementptr i8, ptr %next.gep192, i64 16
  store <2 x i64> %i.dm, ptr %next.gep192, align 8
  store <2 x i64> %i.dn, ptr %i.do, align 8
  %index.next196 = add nuw i64 %index191, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.dp, label %middle.block197, label %vector.body190, !llvm.loop !1555

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.da, %n.vec189
  br i1 %cmp.n198, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck184, %.lr.ph.i.i.i.i.preheader.i.i, %middle.block197
  %.011.i.i.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck184 ], [ %i.cx, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.dg, %middle.block197 ] ; 2 uses
  %.0810.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck184 ], [ %i.cp, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.dh, %middle.block197 ] ; 3 uses
  %.0810.i.i.i.i.i.i.ph205 = ptrtoaddr ptr %.0810.i.i.i.i.i.i.ph to i64
  %i.dq = sub i64 %14, %.0810.i.i.i.i.i.i.ph205   ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1
  %xtraiter = and i64 %i.ds, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.prol ], [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i.i.prol = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dt = load ptr, ptr %.0810.i.i.i.i.i.i.prol, align 8, !tbaa !390
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, -7
  store i64 %i.dv, ptr %.011.i.i.i.i.i.i.prol, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1556

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.unr = phi ptr [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.unr = phi ptr [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dy = icmp ult i64 %i.dq, 56
  br i1 %i.dy, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dz = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !390
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, -7
  store i64 %i.eb, ptr %.011.i.i.i.i.i.i, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !390
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, -7
  store i64 %i.eg, ptr %i.ed, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !390
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, -7
  store i64 %i.el, ptr %i.ei, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !390
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = and i64 %i.ep, -7
  store i64 %i.eq, ptr %i.en, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !390
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = and i64 %i.eu, -7
  store i64 %i.ev, ptr %i.es, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !390
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = and i64 %i.ez, -7
  store i64 %i.fa, ptr %i.ex, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !390
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = and i64 %i.fe, -7
  store i64 %i.ff, ptr %i.fc, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 56
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !390
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = and i64 %i.fj, -7
  store i64 %i.fk, ptr %i.fh, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.fl, %.0155
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1557

_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block197
  %.pre8.i.i = load i32, ptr %i.aq, align 8, !tbaa !84
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i
  %i.fn = phi i32 [ %.pre8.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i.i ], [ %i.cv, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i.i ]
  %i.fo = trunc i64 %i.ct to i32
  %i.fp = add i32 %i.fn, %i.fo                    ; 3 uses
  store i32 %i.fp, ptr %i.aq, align 8, !tbaa !84
  %i.fq = getelementptr inbounds nuw i8, ptr %.0155, i64 8 ; 6 uses
  %i.fr = load ptr, ptr %9, align 8, !tbaa !71    ; 2 uses
  %i.fs = load i32, ptr %i.s, align 8, !tbaa !84
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ft ; 3 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fq to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 3                 ; 2 uses
  %i.fz = zext i32 %i.fp to i64                   ; 2 uses
  %i.ga = add nsw i64 %i.fy, %i.fz                ; 2 uses
  %i.gb = load i32, ptr %i.ar, align 4, !tbaa !85
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp ugt i64 %i.ga, %i.gc
  br i1 %i.gd, label %bb.p, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.ap, i64 noundef %i.ga, i64 noundef 8) #23
  %.pre.i = load i32, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %.pre9.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i: ; preds = %bb.p, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit
  %.pre-phi.i = phi i64 [ %i.fz, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit ], [ %.pre9.i, %bb.p ] ; 2 uses
  %i.ge = phi i32 [ %i.fp, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj8EEC2IPKS4_vEET_SA_.exit ], [ %.pre.i, %bb.p ]
  %.not9.i.i.i.i.i = icmp eq ptr %i.fq, %i.fu
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i
  %i.gf = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.pre-phi.i ; 4 uses
  %i.gh = ptrtoaddr ptr %i.fr to i64
  %15 = mul i64 %indvar, -8
  %.reass = add i64 %15, %invariant.op
  %i.gi = add i64 %.reass, %i.gh
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, %i.ft
  %i.gl = and i64 %i.gk, 2305843009213693951      ; 2 uses
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.gl, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.gn = ptrtoaddr ptr %i.gf to i64
  %i.go = shl nuw nsw i64 %.pre-phi.i, 3
  %op.rdx = add nsw i64 %i.go, -9
  %op.rdx203 = add i64 %reass.sub202, %i.gn
  %op.rdx204 = add i64 %op.rdx, %op.rdx203
  %diff.check = icmp ult i64 %op.rdx204, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gm, 4611686018427387900     ; 3 uses
  %i.gp = shl i64 %n.vec, 3                       ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gg, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.fq, i64 %i.gp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gg, i64 %i.gs ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.fq, i64 %i.gs ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep181, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep181, align 8, !tbaa !390
  %wide.load182 = load <2 x ptr>, ptr %i.gt, align 8, !tbaa !390
  %i.gu = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.gv = ptrtoint <2 x ptr> %wide.load182 to <2 x i64>
  %i.gw = and <2 x i64> %i.gu, splat (i64 -7)
  %i.gx = and <2 x i64> %i.gv, splat (i64 -7)
  %i.gy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.gw, ptr %next.gep, align 8
  store <2 x i64> %i.gx, ptr %i.gy, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !1558

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gm, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gg, %vector.memcheck ], [ %i.gg, %.lr.ph.i.i.i.i.preheader.i ], [ %i.gq, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fq, %vector.memcheck ], [ %i.fq, %.lr.ph.i.i.i.i.preheader.i ], [ %i.gr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ha = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !390
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = and i64 %i.hb, -7
  store i64 %i.hc, ptr %.011.i.i.i.i.i, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.fu
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1559

_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pre8.i = load i32, ptr %i.aq, align 8, !tbaa !84
  br label %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit

_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i
  %i.hf = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE18uninitialized_copyIPKS4_PS5_EEvT_SB_T0_.exit.loopexit.i ], [ %i.ge, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE7reserveEm.exit.i ]
  %i.hg = trunc i64 %i.fy to i32
  %i.hh = add i32 %i.hf, %i.hg                    ; 2 uses
  store i32 %i.hh, ptr %i.aq, align 8, !tbaa !84
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit
  %i.hj = load ptr, ptr %i.aj, align 8, !tbaa !470, !nonnull !68, !align !80
  %i.hk = load ptr, ptr %i.w, align 8, !tbaa !468, !nonnull !68, !align !80 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.ak, align 8
  %.sroa.223.0.copyload = load i8, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.020.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.221.0.copyload = load i8, ptr %.sroa.226.0..sroa_idx, align 8
  %i.hl = load i32, ptr %i.am, align 8, !tbaa !584 ; 2 uses
  %.sroa.0134.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !480
  %.sroa.2135.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !404
  %i.hm = load ptr, ptr %10, align 8, !tbaa !71
  %.0.copyload.i.i.i.i = load i64, ptr %i.hm, align 8
  %i.hn = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %i.ho = inttoptr i64 %i.hn to ptr
  %.val82 = load i32, ptr %i.ao, align 8, !tbaa !84
  %.val83 = load ptr, ptr %i.a, align 8, !tbaa !536
  %i.hp = icmp ne ptr %.val83, null
  %i.hq = zext i1 %i.hp to i64
  %i.hr = zext i32 %.val82 to i64
  %i.hs = add nuw nsw i64 %i.hq, %i.hr
  %i.ht = icmp samesign ugt i64 %i.hs, 1
  %i.hu = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ho) #23
  br i1 %i.hu, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %i.hn, ptr %7, align 8
  %i.hv = call fastcc { i64, i8 } @_ZL16ExtractImmediateRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionEb(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(1152) %i.hk, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i90 = extractvalue { i64, i8 } %i.hv, 0 ; 2 uses
  %.fca.1.extract.i91 = extractvalue { i64, i8 } %i.hv, 1
  %i.hw = call fastcc noundef ptr @_ZL13ExtractSymbolRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(1152) %i.hk) ; 2 uses
  %.0.copyload.i.i.i.i.i92 = load i64, ptr %7, align 8
  %i.hx = and i64 %.0.copyload.i.i.i.i.i92, -8
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hy) #23
  br i1 %i.hz, label %bb.s, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143

bb.s:                                             ; preds = %bb.r
  %i.ia = icmp eq i64 %.fca.0.extract.i90, 0
  %i.ib = icmp eq ptr %i.hw, null
  %or.cond.not.i95 = and i1 %i.ib, %i.ia
  br i1 %or.cond.not.i95, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread145, label %bb.t

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread145: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread

bb.t:                                             ; preds = %bb.s
  %i.ic = trunc nuw i8 %.fca.1.extract.i91 to i1
  br i1 %i.ic, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143: ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99: ; preds = %bb.t
  %i.id = icmp eq i32 %i.hl, 3
  %i.ie = select i1 %i.id, i64 -1, i64 1
  %i.if = call fastcc noundef zeroext i1 @_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, i64 %.sroa.022.0.copyload, i8 %.sroa.223.0.copyload, i64 %.sroa.020.0.copyload, i8 %.sroa.221.0.copyload, i32 noundef %i.hl, ptr %.sroa.0134.0.copyload, i32 %.sroa.2135.0.copyload, ptr noundef %i.hw, i64 %.fca.0.extract.i90, i8 0, i1 noundef zeroext %i.ht, i64 noundef %i.ie)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.if, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread, label %bb.u

bb.u:                                             ; preds = %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread143, %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99, %_ZN4llvm15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEE6appendIPKS4_vEEvT_SA_.exit
  %i.ig = load ptr, ptr %i.w, align 8, !tbaa !468, !nonnull !68, !align !80
  %i.ih = call noundef ptr @_ZN4llvm15ScalarEvolution10getAddExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0, i32 noundef 0) #23 ; 5 uses
  %i.ii = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ih) #23
  br i1 %i.ii, label %_ZL16isAlwaysFoldableRKN4llvm19TargetTransformInfoERNS_15ScalarEvolutionEN12_GLOBAL__N_19ImmediateES6_NS5_6LSRUse8KindTypeENS5_11MemAccessTyEPKNS_4SCEVEb.exit99.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull readonly align 8 dereferenceable(112) %3, i64 40, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !71
  store i32 0, ptr %i.au, align 8, !tbaa !84
  store i32 4, ptr %i.av, align 4, !tbaa !85
  %i.ij = load i32, ptr %i.ao, align 8, !tbaa !84 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ik = icmp ugt i32 %i.ij, 4
  br i1 %i.ik, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i: ; preds = %bb.w
  %i.il = zext i32 %i.ij to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull %i.at, i64 noundef %i.il, i64 noundef 8) #23
  %.pre.i.i100 = load i32, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i100, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i
  %.pre.i101 = load ptr, ptr %i.as, align 8, !tbaa !71
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i, %bb.w
  %i.im = phi ptr [ %.pre.i101, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i ], [ %i.at, %bb.w ]
  %i.in = phi i32 [ %.pre.i.i100, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i ], [ %i.ij, %bb.w ]
  %i.io = zext i32 %i.in to i64
  %i.ip = load ptr, ptr %i.b, align 8, !tbaa !71
  %gepdiff.i.i.i = shl nuw nsw i64 %i.io, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr align 8 %i.ip, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i
  store i32 %i.ij, ptr %i.au, align 8, !tbaa !84
  br label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit

_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit:           ; preds = %bb.v, %.sink.split.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.a, i64 17, i1 false)
  %.val = load i64, ptr %i.ax, align 8, !tbaa !582
  %i.iq = icmp ne i64 %.val, 0
  %.val77 = load i8, ptr %i.ay, align 8, !range !67
  %i.ir = trunc nuw i8 %.val77 to i1
  %or.cond = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %or.cond, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.it = load i16, ptr %i.is, align 8, !tbaa !378
  %.not149 = icmp eq i16 %i.it, 0
  br i1 %.not149, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.iu = load ptr, ptr %i.w, align 8, !tbaa !468, !nonnull !68, !align !80
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 40 ; 3 uses
end_hunk_0
