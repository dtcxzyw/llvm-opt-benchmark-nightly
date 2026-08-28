Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IntRangeOptimizations?download=true
inline.NumInlined: 5606
inline.NumDeleted: 3306
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm15SmallVectorImplIjEaSEOS1_:bb.a
  store i32 %i.z, ptr %i.y, align 4, !tbaa !109
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !35
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !17
  %.idx39 = shl nuw nsw i64 %.026, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !35
  store i32 0, ptr %i.m, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4mlir14DataFlowSolver11lookupStateINS_8dataflow24IntegerValueRangeLatticeENS_5ValueEEEPKT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = or i64 %i.a, 4
  %i.c = tail call i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfINS_8dataflow24IntegerValueRangeLatticeEEENS_13LatticeAnchorES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94, !noalias !366 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107, !noalias !366 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.i = load i32, ptr %i.h, align 4, !tbaa !108, !noalias !366 ; 4 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %i.i, -1                         ; 2 uses
  %i.l = mul i64 %i.c, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.k, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !109, !noalias !375
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !111

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ac, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !375
  %i.z = icmp eq i64 %i.c, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.z, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit, label %bb.c, !prof !112

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.k                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !109, !noalias !375
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !113

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.aj = zext i32 %i.i to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.aj
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.i to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.y, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.pre-phi
  %i.am = icmp eq ptr %.lcssa.sink.i.i, %i.al
  br i1 %i.am, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit, !prof !114

bb.e:                                             ; preds = %bb.d
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id) #24
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 40) #24
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit

_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !115, !noalias !376 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127, !noalias !376 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !128, !noalias !376 ; 4 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit.i.i6, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit
  %i.ay = add i32 %i.aw, -1                       ; 2 uses
  %i.az = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.ba = mul i64 %i.az, -4658895280553007687     ; 2 uses
  %i.bb = lshr i64 %i.ba, 31
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.ay, %i.bd                    ; 3 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = lshr i64 %i.bf, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !109, !noalias !385
  %i.bj = and i32 %i.be, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %.lr.ph.i.i.i9, label %.loopexit.i.i6, !prof !111

.lr.ph.i.i.i9:                                    ; preds = %bb.g, %bb.h
  %i.bm = phi i64 [ %i.br, %bb.h ], [ %i.bf, %bb.g ]
  %.01419.i.i.i = phi i32 [ %i.bq, %bb.h ], [ %i.be, %bb.g ]
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bm ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !14, !noalias !385
  %i.bo = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i.i
  br i1 %i.bo, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit, label %bb.h, !prof !112

bb.h:                                             ; preds = %.lr.ph.i.i.i9
  %i.bp = add nuw i32 %.01419.i.i.i, 1
  %i.bq = and i32 %i.bp, %i.ay                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !109, !noalias !385
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i9, label %.loopexit.i.i6, !prof !113

.loopexit.i.i6:                                   ; preds = %bb.h, %bb.g, %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit
  %i.by = zext i32 %i.aw to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.by
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i9
  %.pre32 = zext i32 %i.aw to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit, %.loopexit.i.i6
  %.pre-phi33 = phi i64 [ %.pre32, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit ], [ %i.by, %.loopexit.i.i6 ]
  %.lcssa.sink.i.i7 = phi ptr [ %i.bn, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit ], [ %i.bz, %.loopexit.i.i6 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.pre-phi33
  %i.cb = icmp eq ptr %.lcssa.sink.i.i7, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i7, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit
  %.1 = phi ptr [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit ], [ %i.cd, %bb.i ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit ]
  ret ptr %.1
}

declare void @_ZNK4mlir17ConstantIntRanges16getConstantValueEv(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfINS_8dataflow24IntegerValueRangeLatticeEEENS_13LatticeAnchorES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.014 = alloca [8 x i8], align 8           ; 7 uses
  store i64 %1, ptr %.sroa.014, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id) #24
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 40) #24
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit

_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !132, !noalias !386
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !138, !noalias !386 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139, !noalias !386 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !109
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i, label %bb.l, !prof !111

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ae, %bb.e ], [ %i.s, %bb.d ]
  %.01419.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %i.aa = getelementptr inbounds nuw [176 x i8], ptr %i.f, i64 %i.z
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ab = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit, label %bb.e, !prof !112

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = add nuw i32 %.01419.i.i, 1
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !109
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i, label %bb.l, !prof !113

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit: ; preds = %.lr.ph.i.i
  %i.al = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.f, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit7, !prof !114

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit
  %i.an = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id) #24
  %.not.i.i6 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i6, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 40) #24
  store ptr %i.ao, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit7

_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit7: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8containsERKS3_.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i5 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !132, !noalias !391 ; 2 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !138, !noalias !391 ; 2 uses
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !139, !noalias !391 ; 3 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit7
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = ptrtoint ptr %.sroa.01.0.copyload.i.i5 to i64
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.at, %i.ay                    ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !109, !noalias !400
  %i.be = and i32 %i.az, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %i.bh = phi i64 [ %i.bm, %bb.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.01419.i.i.i.i = phi i32 [ %i.bl, %bb.i ], [ %i.az, %bb.h ]
  %i.bi = getelementptr inbounds nuw [176 x i8], ptr %i.ap, i64 %i.bh
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !14, !noalias !400
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i5, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.bj, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit, label %bb.i, !prof !112

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = add nuw i32 %.01419.i.i.i.i, 1
  %i.bl = and i32 %i.bk, %i.at                    ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !109, !noalias !400
  %i.bq = and i32 %i.bl, 31
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !113

.loopexit.i.i.i:                                  ; preds = %bb.i, %bb.h, %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit7
  %i.bt = zext i32 %i.ar to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.bu = phi i64 [ %i.bt, %.loopexit.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [176 x i8], ptr %i.ap, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !151, !noalias !401 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !159, !noalias !401 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !160, !noalias !401 ; 4 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit.i.i.i8, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.cd = add i32 %i.cb, -1                       ; 2 uses
  %.sroa.014.0..sroa.014.0..sroa.014.0..sroa.014.0..0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.014, align 8, !noalias !410 ; 2 uses
  %i.ce = mul i64 %.sroa.014.0..sroa.014.0..sroa.014.0..sroa.014.0..0.copyload.i.i.i.i.i.i.i, -4658895280553007687 ; 2 uses
  %i.cf = lshr i64 %i.ce, 31
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.cd, %i.ch                    ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = lshr i64 %i.cj, 5
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !109, !noalias !410
  %i.cn = and i32 %i.ci, 31
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i.i.i.i9, label %.loopexit.i.i.i8, !prof !111

.lr.ph.i.i.i.i9:                                  ; preds = %bb.j, %bb.k
  %i.cq = phi i64 [ %i.cv, %bb.k ], [ %i.cj, %bb.j ]
  %.017.i.i.i.i = phi i32 [ %i.cu, %bb.k ], [ %i.ci, %bb.j ]
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.cq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cr, align 8, !noalias !410
  %i.cs = icmp eq i64 %.sroa.014.0..sroa.014.0..sroa.014.0..sroa.014.0..0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.cs, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, label %bb.k, !prof !112

bb.k:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.ct = add nuw i32 %.017.i.i.i.i, 1
  %i.cu = and i32 %i.ct, %i.cd                    ; 3 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 5
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !109, !noalias !410
  %i.cz = and i32 %i.cu, 31
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %.lr.ph.i.i.i.i9, label %.loopexit.i.i.i8, !prof !113

.loopexit.i.i.i8:                                 ; preds = %bb.k, %bb.j, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.dc = zext i32 %i.cb to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.dc
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i9
  %.pre.i = zext i32 %i.cb to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i8
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.dc, %.loopexit.i.i.i8 ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cr, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.dd, %.loopexit.i.i.i8 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.pre-phi.i
  %i.df = icmp eq ptr %.lcssa.sink.i.i.i, %i.de
  br i1 %i.df, label %bb.l, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !166
  %i.di = tail call noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) ; 2 uses
  %.not = icmp eq ptr %i.di, null
  %2 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %spec.select = select i1 %.not, ptr %.sroa.014, ptr %2
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit, %bb.d, %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit
  %.sroa.0.1.in = phi ptr [ %spec.select, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit ], [ %.sroa.014, %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit ], [ %.sroa.014, %bb.d ], [ %.sroa.014, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i ], [ %.sroa.014, %bb.e ]
  %.sroa.0.0.in.sroa.speculate.load. = load i64, ptr %.sroa.0.1.in, align 8
  ret i64 %.sroa.0.0.in.sroa.speculate.load.
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %common.ret2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !411    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %common.ret2, label %bb.c

common.ret2:                                      ; preds = %bb.b, %bb.a, %bb.c
  %common.ret2.op = phi ptr [ %i.j, %bb.c ], [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %common.ret2.op

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !411
  br label %common.ret2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir10ShapedTypeENS1_4TypeENS_8CastInfoIS2_S3_vEEE16doCastIfPossibleES3_(ptr %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !412    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 49), i64 16) #24
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i.i.i.i, 1      ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, !llvm.loop !415

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i, align 8, !tbaa !58
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.t, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit.thread

_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !412    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !114

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 49), i64 16) #24
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !17  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ag = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.ai = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = xor i64 %i.ag, -1
  %i.al = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.ak
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, ptr %i.aj, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.al, i64 %i.ag ; 2 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !415

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.af, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i5 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i5, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.ao = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !58
  %i.ap = icmp eq ptr %i.ao, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ap, label %bb.i, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !416
  br label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit

_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.h, %bb.i
  %i.as = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.i ], [ null, %bb.h ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.as, 1
  br label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit.thread

_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i, %bb.d, %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit, %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit ], [ zeroinitializer, %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE10isPossibleES3_.exit ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4mlir14DataFlowSolver16getOrCreateStateINS_8dataflow24IntegerValueRangeLatticeENS_5ValueEEEPT_T0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.mlir::LatticeAnchor", align 8 ; 4 uses
  %3 = alloca %"class.mlir::TypeID", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = ptrtoint ptr %1 to i64
  %i.b = or i64 %i.a, 4                           ; 2 uses
  %i.c = tail call i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfINS_8dataflow24IntegerValueRangeLatticeEEENS_13LatticeAnchorES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.b)
  store i64 %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_8dataflow24IntegerValueRangeLatticeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN4mlir6TypeID3getINS_8dataflow24IntegerValueRangeLatticeEEES0_v.exit, !prof !114

bb.b:                                             ; preds = %bb.a
end_hunk_0
