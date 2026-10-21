Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZNK4llvm13slpvectorizer7BoUpSLP15BlockScheduling36areAllOperandsReplacedByCopyableDataEPNS_11InstructionES4_RS1_j:bb.a
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !380 ; 2 uses
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %.lr.ph.i.i254, label %_ZN4llvm16DenseMapIteratorIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEELb0EEppEv.exit, !llvm.loop !204

_ZN4llvm16DenseMapIteratorIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEELb0EEppEv.exit: ; preds = %.lr.ph583, %bb.cq
  %.012.lcssa.i.i = phi i64 [ %i.ud, %bb.cq ], [ %i.up, %.lr.ph583 ]
  %.0.lcssa.i.i = phi i32 [ %i.uj, %bb.cq ], [ %i.ur, %.lr.ph583 ]
  %i.ut = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i253 = shl i64 %.012.lcssa.i.i, 9
  %i.uu = shl nuw nsw i32 %i.ut, 4
  %.idx552 = zext nneg i32 %i.uu to i64
  %i.uv = or disjoint i64 %.idx.i.i253, %.idx552  ; 2 uses
  %.not356 = icmp eq i64 %i.uv, %.idx551
  br i1 %.not356, label %._crit_edge426, label %bb.ar

_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.thread: ; preds = %_ZN4llvm4User8operandsEv.exit, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i, %bb.ao, %._crit_edge426, %._crit_edge392, %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit
  %.8 = phi i1 [ false, %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit ], [ false, %bb.ao ], [ %i.jo, %._crit_edge426 ], [ true, %._crit_edge392 ], [ false, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i ], [ true, %_ZN4llvm4User8operandsEv.exit ]
  %i.uw = load i32, ptr %5, align 8
  %i.ux = and i32 %i.uw, 1
  %.not.i.i255 = icmp eq i32 %i.ux, 0
  br i1 %.not.i.i255, label %bb.cr, label %_ZN4llvm13SmallDenseMapIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

bb.cr:                                            ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.thread
  %i.uy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !571 ; 2 uses
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %_ZN4llvm13SmallDenseMapIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !571
  %i.vd = zext i32 %i.uz to i64                   ; 2 uses
  %i.ve = shl nuw nsw i64 %i.vd, 4
  %i.vf = add nuw nsw i64 %i.vd, 31
  %i.vg = lshr i64 %i.vf, 3
  %i.vh = and i64 %i.vg, 1073741820
  %i.vi = add nuw nsw i64 %i.vh, %i.ve
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.vc, i64 noundef %i.vi, i64 noundef 8) #31
  br label %_ZN4llvm13SmallDenseMapIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit: ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.thread, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ct

bb.ct:                                            ; preds = %bb.a, %_ZN4llvm13SmallDenseMapIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit
  %.9 = phi i1 [ %.8, %_ZN4llvm13SmallDenseMapIPNS_13slpvectorizer7BoUpSLP9TreeEntryEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_5ValueEEEZNS_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleES4_PS7_RKN12_GLOBAL__N_117InstructionsStateERKNS7_8EdgeInfoEE3$_8EEbOT_T0_"(ptr %.0.val, i64 %.8.val, ptr nofree nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.8.val ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = lshr i64 %.8.val, 2                      ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i"
  %.057.i.i.i.i.i = phi i64 [ %i.p, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i" ], [ %i.c, %bb.a ] ; 2 uses
  %.02956.i.i.i.i.i = phi ptr [ %i.o, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i" ], [ %.0.val, %bb.a ] ; 9 uses
  %.029.val39.i.i.i.i.i = load ptr, ptr %.02956.i.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.d = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.029.val39.i.i.i.i.i)
  br i1 %i.d, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.e = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.029.val39.i.i.i.i.i)
  br i1 %i.e, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 8
  %.val37.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !579 ; 2 uses
  %i.g = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.val37.i.i.i.i.i)
  br i1 %i.g, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.thread.i.i.i.i.i"
  %i.h = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.val37.i.i.i.i.i)
  br i1 %i.h, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.thread.i.i.i.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 16
  %.val35.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !579 ; 2 uses
  %i.j = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.val35.i.i.i.i.i)
  br i1 %i.j, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.thread.i.i.i.i.i"
  %i.k = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.val35.i.i.i.i.i)
  br i1 %i.k, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit13", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.thread.i.i.i.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 24
  %.val33.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !579 ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.val33.i.i.i.i.i)
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.thread.i.i.i.i.i"
  %i.n = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.val33.i.i.i.i.i)
  br i1 %i.n, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit15", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.thread.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 32 ; 3 uses
  %i.p = add nsw i64 %.057.i.i.i.i.i, -1
  %i.q = icmp sgt i64 %.057.i.i.i.i.i, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !10932

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.thread.i.i.i.i.i"
  %.pre.i.i.i.i.i = ptrtoint ptr %i.o to i64
  %.pre62.i.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i.i
  %i.r = ashr exact i64 %.pre62.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi63.i.i.i.i.i = phi i64 [ %i.r, %._crit_edge.loopexit.i.i.i.i.i ], [ %.8.val, %bb.a ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.o, %._crit_edge.loopexit.i.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  switch i64 %.pre-phi63.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.thread.i.i.i.i.i" [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.s = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.029.val.i.i.i.i.i)
  br i1 %i.s, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.i.i.i.i.i": ; preds = %bb.b
  %i.t = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.029.val.i.i.i.i.i)
  br i1 %i.t, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.i.i.i.i.i", %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.u, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.v = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.1.val.i.i.i.i.i)
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.i.i.i.i.i": ; preds = %bb.c
  %i.w = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.1.val.i.i.i.i.i)
  br i1 %i.w, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.i.i.i.i.i", %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.x, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !579 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState16isNonSchedulableEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.2.val.i.i.i.i.i)
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.i.i.i.i.i": ; preds = %bb.d
  %i.z = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(17) %0, ptr noundef %.2.val.i.i.i.i.i)
  br i1 %i.z, label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.i.i.i.i.i", %bb.d, %._crit_edge.i.i.i.i.i
  br label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit"

"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit40.i.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 8
  br label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit"

"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit13": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit41.i.i.i.i.i"
  %i.ab = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 16
  br label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit"

"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit15": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit42.i.i.i.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 24
  br label %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit"

"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.i.i.i.i.i", %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit", %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit13", %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit15", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.thread.i.i.i.i.i"
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit44.i.i.i.i.i" ], [ %i.a, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.thread.i.i.i.i.i" ], [ %.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit45.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit43.i.i.i.i.i" ], [ %i.ac, %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit15" ], [ %i.ab, %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit13" ], [ %i.aa, %"_ZSt6any_ofIPKPN4llvm5ValueEZNS0_13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS0_8ArrayRefIS2_EEPS6_RKN12_GLOBAL__N_117InstructionsStateERKNS6_8EdgeInfoEE3$_8EbT_SJ_T0_.exit.loopexit.split.loop.exit" ], [ %.02956.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS2_8ArrayRefIPNS2_5ValueEEEPS4_RKN12_GLOBAL__N_117InstructionsStateERKNS4_8EdgeInfoEE3$_8EclIPKS8_EEbT_.exit.i.i.i.i.i" ]
  %i.ad = icmp ne ptr %i.a, %.028.i.i.i.i.i
  ret i1 %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS1_RKN12_GLOBAL__N_117InstructionsStateERKNS1_8EdgeInfoEENK4$_10clEbRNS1_14ScheduleBundleE"(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(96) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.4048, align 8           ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.853", align 8 ; 10 uses
  %5 = alloca %"class.llvm::SmallVector.2579", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.2581", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.853", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.2579", align 8 ; 12 uses
  %9 = alloca %"class.std::unique_ptr.2581", align 8 ; 6 uses
  %10 = alloca %class.anon.4046, align 1          ; 3 uses
  %11 = alloca %"class.llvm::SmallDenseMap.3935", align 8 ; 13 uses
  %12 = alloca %"class.llvm::SmallVector.1938", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %"class.llvm::SmallVector.1938", align 8 ; 11 uses
  %14 = alloca %"class.llvm::SmallVector.1894", align 8 ; 17 uses
  %15 = alloca %"class.llvm::SmallPtrSet.137", align 8 ; 12 uses
  %16 = alloca %"class.llvm::ArrayRef.1899", align 8 ; 3 uses
  %17 = alloca %"class.llvm::slpvectorizer::BoUpSLP::ScheduleBundle", align 8 ; 12 uses
  %18 = alloca %"class.llvm::ArrayRef.1899", align 8 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1069   ; 68 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.d, ptr %14, align 8, !tbaa !359
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 15 uses
  store i32 0, ptr %i.e, align 8, !tbaa !371
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 5 uses
  store i32 6, ptr %i.f, align 4, !tbaa !372
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1768 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1792 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !359  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1800 ; 9 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !371  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not43174 = icmp eq i32 %i.k, 0
  br i1 %.not43174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1872 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1784 ; 8 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2074 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_11SmallVectorIS4_Lj8EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj8EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = shl i32 %i.p, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1788
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2075 ; 3 uses
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = icmp ugt i32 %i.t, 64
  %or.cond.i.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  br label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_11SmallVectorIS4_Lj8EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj8EE5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1776
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2076
  %i.y = zext i32 %i.t to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.ab, i1 false)
  store i32 0, ptr %i.o, align 8, !tbaa !2074
  br label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_11SmallVectorIS4_Lj8EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj8EE5clearEv.exit

_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_11SmallVectorIS4_Lj8EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj8EE5clearEv.exit: ; preds = %._crit_edge, %bb.c, %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !371
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1072 ; 2 uses
  %.not44 = icmp eq ptr %i.ag, null
  br i1 %.not44, label %"_ZN4llvm8for_eachIRNS_13SmallDenseMapIPKNS_11InstructionENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP20ScheduleCopyableDataELj6EEELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEEZZNS7_15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS7_RKN12_GLOBAL__N_117InstructionsStateERKNS7_8EdgeInfoEENK4$_10clEbRNS7_14ScheduleBundleEEUlRT_E0_EET0_OSY_S11_.exit", label %bb.k

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit
  %.040175 = phi ptr [ %i.i, %.lr.ph ], [ %i.bl, %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.040175, align 8, !tbaa !1756 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !986
  switch i32 %i.aj, label %.split [
    i32 0, label %.split128
    i32 2, label %_ZNK4llvm13slpvectorizer7BoUpSLP15BlockScheduling20isInSchedulingRegionERKNS1_14ScheduleEntityE.exit
  ]

.split128:                                        ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1757
  %i.am = load i32, ptr %i.n, align 8, !tbaa !1059
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit

.split:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !359 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !371
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = call noundef ptr @_ZSt9__find_ifIPKPKN4llvm13slpvectorizer7BoUpSLP14ScheduleEntityEN9__gnu_cxx5__ops12_Iter_negateIZNKS2_15BlockScheduling20isInSchedulingRegionERS4_EUlS5_E_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr noundef %i.ap, ptr noundef %i.at, ptr nonnull align 8 dereferenceable(1876) %i.c), !inline_history !104
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit

_ZNK4llvm13slpvectorizer7BoUpSLP15BlockScheduling20isInSchedulingRegionERKNS1_14ScheduleEntityE.exit: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1758
  %i.ay = load i32, ptr %i.n, align 8, !tbaa !1059
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit

bb.f:                                             ; preds = %.split128, %.split, %_ZNK4llvm13slpvectorizer7BoUpSLP15BlockScheduling20isInSchedulingRegionERKNS1_14ScheduleEntityE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 164 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1066
  %.not132 = icmp eq i32 %i.bb, -1
  br i1 %.not132, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.ba, align 4, !tbaa !1066
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  store i32 -1, ptr %i.bc, align 8, !tbaa !1082
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i8 0, ptr %i.bd, align 4, !tbaa !985
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.be = load i32, ptr %i.e, align 8, !tbaa !371 ; 2 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !372
  %.not.i = icmp ult i32 %i.be, %i.bf
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !548

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.ah)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %14, align 8, !tbaa !359
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  store ptr %i.ah, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.e, align 8, !tbaa !371
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.e, align 8, !tbaa !371
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit: ; preds = %bb.j, %bb.i, %.split128, %.split, %_ZNK4llvm13slpvectorizer7BoUpSLP15BlockScheduling20isInSchedulingRegionERKNS1_14ScheduleEntityE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.040175, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.bl, %i.m
  br i1 %.not43, label %._crit_edge, label %bb.e

bb.k:                                             ; preds = %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_11SmallVectorIS4_Lj8EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj8EE5clearEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 1728
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1067
  %.not45 = icmp eq ptr %i.bn, %i.ag
  br i1 %.not45, label %"_ZN4llvm8for_eachIRNS_13SmallDenseMapIPKNS_11InstructionENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP20ScheduleCopyableDataELj6EEELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEEZZNS7_15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS7_RKN12_GLOBAL__N_117InstructionsStateERKNS7_8EdgeInfoEENK4$_10clEbRNS7_14ScheduleBundleEEUlRT_E0_EET0_OSY_S11_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bp = load i32, ptr %i.bo, align 8, !noalias !11052 ; 2 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0      ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !11052
  %i.bt = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bs, ptr %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !11052
  %i.bx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bw, ptr %i.bu ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bz = load i32, ptr %i.by, align 8, !noalias !11052
  %i.ca = select i1 %.not.i.i.i.i.i.i.i, i32 %i.bz, i32 4 ; 2 uses
  %i.cb = icmp ult i32 %i.bp, 2
  %i.cc = zext i32 %i.ca to i64                   ; 3 uses
  %.idx13.i = shl nuw nsw i64 %i.cc, 4            ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.ca, 0
  %or.cond.i = select i1 %i.cb, i1 true, i1 %.not.i.not.i.i.i.i.i
  br i1 %or.cond.i, label %"_ZN4llvm8for_eachIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEZZNS5_15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS5_RKN12_GLOBAL__N_117InstructionsStateERKNS5_8EdgeInfoEENK4$_10clEbRNS5_14ScheduleBundleEEUlRT_E_EET0_OSV_SY_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.cc, 31
  %i.ce = lshr i64 %i.cd, 5                       ; 4 uses
  %i.cf = load i32, ptr %i.bx, align 4, !tbaa !380, !noalias !11053 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN4llvm9adl_beginIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSF_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.m
  %i.ch = icmp eq i64 %i.ce, 1
  br i1 %i.ch, label %"_ZN4llvm8for_eachIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEZZNS5_15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS5_RKN12_GLOBAL__N_117InstructionsStateERKNS5_8EdgeInfoEENK4$_10clEbRNS5_14ScheduleBundleEEUlRT_E_EET0_OSV_SY_.exit", label %.lr.ph462

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph462
  %i.ci = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %i.ce
  br i1 %i.cj, label %"_ZN4llvm8for_eachIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEZZNS5_15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS5_RKN12_GLOBAL__N_117InstructionsStateERKNS5_8EdgeInfoEENK4$_10clEbRNS5_14ScheduleBundleEEUlRT_E_EET0_OSV_SY_.exit", label %.lr.ph462, !llvm.loop !107

.lr.ph462:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.ck = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !380, !noalias !11053 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i, !llvm.loop !107

._crit_edge.i.loopexit.i.i.i.i.i:                 ; preds = %.lr.ph462
  %i.co = shl i64 %i.ck, 9
  br label %_ZN4llvm9adl_beginIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSF_.exit.i

_ZN4llvm9adl_beginIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSF_.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i.i, %bb.m
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.co, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.m ], [ %i.cm, %._crit_edge.i.loopexit.i.i.i.i.i ]
  %i.cp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.cq = shl nuw nsw i32 %i.cp, 4
  %.idx.i = zext nneg i32 %i.cq to i64
  %i.cr = or disjoint i64 %.012.lcssa.i.i.i.i.i.i, %.idx.i ; 2 uses
  %.not3.i.i = icmp eq i64 %i.cr, %.idx13.i
  br i1 %.not3.i.i, label %"_ZN4llvm8for_eachIRNS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEEZZNS5_15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS5_RKN12_GLOBAL__N_117InstructionsStateERKNS5_8EdgeInfoEENK4$_10clEbRNS5_14ScheduleBundleEEUlRT_E_EET0_OSV_SY_.exit", label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@"_ZZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS1_RKN12_GLOBAL__N_117InstructionsStateERKNS1_8EdgeInfoEENK4$_10clEbRNS1_14ScheduleBundleE":bb.a
  %i.aia = lshr i64 %i.ahy, 5
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !380, !noalias !11070
  %i.aid = and i32 %i.ahx, 31
  %i.aie = lshr i32 %i.aic, %i.aid
  %i.aif = trunc i32 %i.aie to i1
  br i1 %i.aif, label %.lr.ph.i.i159.i, label %.loopexit.i150.i, !prof !547

.lr.ph.i.i159.i:                                  ; preds = %bb.da, %bb.db
  %i.aig = phi ptr [ %i.aim, %bb.db ], [ %i.ahz, %bb.da ]
  %.024.i.i160.i = phi i32 [ %i.aik, %bb.db ], [ %i.ahx, %bb.da ]
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !1756, !noalias !11070
  %i.aii = icmp eq ptr %i.zd, %i.aih
  br i1 %i.aii, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit99.i, label %bb.db, !prof !548

bb.db:                                            ; preds = %.lr.ph.i.i159.i
  %i.aij = add nuw i32 %.024.i.i160.i, 1
  %i.aik = and i32 %i.aij, %i.ahr                 ; 3 uses
  %i.ail = zext i32 %i.aik to i64                 ; 2 uses
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.ahn, i64 %i.ail ; 2 uses
  %i.ain = lshr i64 %i.ail, 5
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !380, !noalias !11070
  %i.aiq = and i32 %i.aik, 31
  %i.air = lshr i32 %i.aip, %i.aiq
  %i.ais = trunc i32 %i.air to i1
  br i1 %i.ais, label %.lr.ph.i.i159.i, label %.loopexit.i150.i, !prof !549, !llvm.loop !207

.loopexit.i150.i:                                 ; preds = %bb.db, %bb.da, %bb.cz
  %.lcssa28.sink.i.ph.i151.i = phi ptr [ %i.ahz, %bb.da ], [ null, %bb.cz ], [ %i.aim, %bb.db ]
  %i.ait = shl i32 %i.acl, 2
  %i.aiu = add i32 %i.ait, 4
  %i.aiv = mul i32 %i.ahp, 3
  %.not.i.i152.i = icmp ult i32 %i.aiu, %i.aiv
  br i1 %.not.i.i152.i, label %.loopexit.i, label %bb.dc, !prof !548

bb.dc:                                            ; preds = %.loopexit.i150.i
  %i.aiw = shl i32 %i.ahp, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i32 noundef %i.aiw), !noalias !11070
  %i.aix = load ptr, ptr %i.g, align 8, !tbaa !2082, !noalias !11071 ; 5 uses
  %i.aiy = load ptr, ptr %i.jx, align 8, !tbaa !2076, !noalias !11071 ; 5 uses
  %i.aiz = load i32, ptr %i.jy, align 4, !tbaa !2075, !noalias !11071 ; 2 uses
  %i.aja = icmp ne i32 %i.aiz, 0
  call void @llvm.assume(i1 %i.aja)
  %i.ajb = add i32 %i.aiz, -1                     ; 2 uses
  %i.ajc = ptrtoint ptr %i.zd to i64
  %i.ajd = mul i64 %i.ajc, -4658895280553007687   ; 2 uses
  %i.aje = lshr i64 %i.ajd, 31
  %i.ajf = xor i64 %i.aje, %i.ajd
  %i.ajg = trunc i64 %i.ajf to i32
  %i.ajh = and i32 %i.ajb, %i.ajg                 ; 3 uses
  %i.aji = zext i32 %i.ajh to i64                 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %i.aji ; 2 uses
  %i.ajk = lshr i64 %i.aji, 5
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !380, !noalias !11070
  %i.ajn = and i32 %i.ajh, 31
  %i.ajo = lshr i32 %i.ajm, %i.ajn
  %i.ajp = trunc i32 %i.ajo to i1
  br i1 %i.ajp, label %.lr.ph.i179.i, label %.loopexit.i, !prof !547

.lr.ph.i179.i:                                    ; preds = %bb.dc, %bb.dd
  %i.ajq = phi ptr [ %i.ajw, %bb.dd ], [ %i.ajj, %bb.dc ] ; 2 uses
  %.024.i180.i = phi i32 [ %i.aju, %bb.dd ], [ %i.ajh, %bb.dc ]
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !1756, !noalias !11070
  %i.ajs = icmp eq ptr %i.zd, %i.ajr
  br i1 %i.ajs, label %.loopexit.i, label %bb.dd, !prof !548

bb.dd:                                            ; preds = %.lr.ph.i179.i
  %i.ajt = add nuw i32 %.024.i180.i, 1
  %i.aju = and i32 %i.ajt, %i.ajb                 ; 3 uses
  %i.ajv = zext i32 %i.aju to i64                 ; 2 uses
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %i.ajv ; 2 uses
  %i.ajx = lshr i64 %i.ajv, 5
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !380, !noalias !11070
  %i.aka = and i32 %i.aju, 31
  %i.akb = lshr i32 %i.ajz, %i.aka
  %i.akc = trunc i32 %i.akb to i1
  br i1 %i.akc, label %.lr.ph.i179.i, label %.loopexit.i, !prof !549, !llvm.loop !207

.loopexit.i:                                      ; preds = %bb.dd, %.lr.ph.i179.i, %bb.dc, %.loopexit.i150.i
  %i.akd = phi ptr [ %i.ahn, %.loopexit.i150.i ], [ %i.aix, %bb.dc ], [ %i.aix, %.lr.ph.i179.i ], [ %i.aix, %bb.dd ]
  %i.ake = phi ptr [ %i.aho, %.loopexit.i150.i ], [ %i.aiy, %bb.dc ], [ %i.aiy, %.lr.ph.i179.i ], [ %i.aiy, %bb.dd ]
  %i.akf = phi ptr [ %.lcssa28.sink.i.ph.i151.i, %.loopexit.i150.i ], [ %i.ajj, %bb.dc ], [ %i.ajw, %bb.dd ], [ %i.ajq, %.lr.ph.i179.i ] ; 2 uses
  %i.akg = ptrtoint ptr %i.akf to i64
  %i.akh = ptrtoint ptr %i.akd to i64
  %i.aki = sub i64 %i.akg, %i.akh
  %i.akj = ashr exact i64 %i.aki, 3               ; 2 uses
  %i.akk = trunc i64 %i.akj to i32
  %i.akl = and i32 %i.akk, 31
  %i.akm = shl nuw i32 1, %i.akl
  %i.akn = lshr i64 %i.akj, 5
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %i.akn ; 2 uses
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !380, !noalias !11070
  %i.akq = or i32 %i.akm, %i.akp
  store i32 %i.akq, ptr %i.ako, align 4, !tbaa !380, !noalias !11070
  %i.akr = load i32, ptr %i.o, align 8, !tbaa !2074, !noalias !11070
  %i.aks = add i32 %i.akr, 1
  store i32 %i.aks, ptr %i.o, align 8, !tbaa !2074, !noalias !11070
  store ptr %i.zd, ptr %i.akf, align 8, !tbaa !1756, !noalias !11070
  %i.akt = load i32, ptr %i.j, align 8, !tbaa !371 ; 2 uses
  %i.aku = load i32, ptr %i.jz, align 4, !tbaa !372
  %.not.i9.i.i = icmp ult i32 %i.akt, %i.aku
  br i1 %.not.i9.i.i, label %bb.df, label %bb.de, !prof !548

bb.de:                                            ; preds = %.loopexit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.zd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit99.i

bb.df:                                            ; preds = %.loopexit.i
  %i.akv = zext i32 %i.akt to i64
  %i.akw = load ptr, ptr %i.h, align 8, !tbaa !359
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %i.akv
  store ptr %i.zd, ptr %i.akx, align 1
  %i.aky = load i32, ptr %i.j, align 8, !tbaa !371
  %i.akz = add i32 %i.aky, 1
  store i32 %i.akz, ptr %i.j, align 8, !tbaa !371
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit99.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit99.i: ; preds = %bb.bz, %.lr.ph.i.i159.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP12ScheduleDataENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_.exit174.i, %bb.df, %bb.de, %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj8EEES5_EEbOT_RKT0_.exit.i.i, %_ZN4llvm11SmallVectorIPNS_13slpvectorizer7BoUpSLP20ScheduleCopyableDataELj6EED2Ev.exit122.i, %.split.i, %_ZN4llvm11SmallVectorIPNS_13slpvectorizer7BoUpSLP20ScheduleCopyableDataELj6EED2Ev.exit122.thread.i, %_ZNK4llvm13slpvectorizer7BoUpSLP15BlockScheduling20isInSchedulingRegionERKNS1_14ScheduleEntityE.exit.i112.i, %.split.i114.i, %.split13.i113.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEPNS_13slpvectorizer7BoUpSLP12ScheduleDataELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6lookupEPKS2_.exit.i110.i, %bb.by, %bb.bx, %bb.bw, %_ZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling15getScheduleDataEPNS_11InstructionE.exit149.thread.i, %bb.bv, %bb.bu, %.critedge82.i
  %i.ala = getelementptr inbounds nuw i8, ptr %.05975.i, i64 32 ; 2 uses
  %.not74.i = icmp eq ptr %i.ala, %i.nd
  br i1 %.not74.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit.i, label %.lr.ph.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP12ScheduleDataELb1EE9push_backES4_.exit99.i, %_ZN4llvm4User8operandsEv.exit.i, %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ad
  %i.alb = getelementptr inbounds nuw i8, ptr %.06378.i, i64 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.alb, %i.jc
  br i1 %.not.i77, label %._crit_edge.i, label %bb.ac

"_ZZZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS1_RKN12_GLOBAL__N_117InstructionsStateERKNS1_8EdgeInfoEENK4$_10clEbRNS1_14ScheduleBundleEENKUlSH_E_clESH_.exit": ; preds = %._crit_edge.i, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.dg

bb.dg:                                            ; preds = %bb.z, %"_ZZZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling17tryScheduleBundleENS_8ArrayRefIPNS_5ValueEEEPS1_RKN12_GLOBAL__N_117InstructionsStateERKNS1_8EdgeInfoEENK4$_10clEbRNS1_14ScheduleBundleEENKUlSH_E_clESH_.exit"
  %i.alc = xor i1 %.039.shrunk, true
  %i.ald = load ptr, ptr %i.ae, align 8, !tbaa !1071
  %i.ale = load ptr, ptr %14, align 8, !tbaa !359
  store ptr %i.ale, ptr %16, align 8, !tbaa !1094
  %i.alf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.alg = load i32, ptr %i.e, align 8, !tbaa !371
  %i.alh = zext i32 %i.alg to i64
  store i64 %i.alh, ptr %i.alf, align 8, !tbaa !1095
  call void @_ZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling21calculateDependenciesERNS1_14ScheduleBundleEbPS1_RKNS_15SmallPtrSetImplIPNS_5ValueEEENS_8ArrayRefIPNS1_12ScheduleDataEEE(ptr noundef nonnull align 8 dereferenceable(1876) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %i.alc, ptr noundef %i.ald, ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1899") align 8 %16)
  br label %bb.dj

.critedge:                                        ; preds = %._crit_edge179, %bb.y
  %i.ali = load i32, ptr %i.e, align 8, !tbaa !371 ; 2 uses
  %.not.i90 = icmp eq i32 %i.ali, 0
  br i1 %.not.i90, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store i32 0, ptr %17, align 8, !tbaa !984, !alias.scope !11072
  %i.alj = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i8 0, ptr %i.alj, align 4, !tbaa !985, !alias.scope !11072
  %i.alk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 1, ptr %i.alk, align 8, !tbaa !986, !alias.scope !11072
  %i.all = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %i.alm, ptr %i.all, align 8, !tbaa !359, !alias.scope !11072
  %i.aln = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 0, ptr %i.aln, align 8, !tbaa !371, !alias.scope !11072
  %i.alo = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i32 6, ptr %i.alo, align 4, !tbaa !372, !alias.scope !11072
  %i.alp = getelementptr inbounds nuw i8, ptr %17, i64 80
  store i8 0, ptr %i.alp, align 8, !tbaa !993, !alias.scope !11072
  %i.alq = getelementptr inbounds nuw i8, ptr %17, i64 88
  store ptr null, ptr %i.alq, align 8, !tbaa !994, !alias.scope !11072
  %i.alr = xor i1 %.039.shrunk, true
  %i.als = load ptr, ptr %i.ae, align 8, !tbaa !1071
  %i.alt = load ptr, ptr %14, align 8, !tbaa !359
  store ptr %i.alt, ptr %18, align 8, !tbaa !1094
  %i.alu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.alv = zext i32 %i.ali to i64
  store i64 %i.alv, ptr %i.alu, align 8, !tbaa !1095
  call void @_ZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling21calculateDependenciesERNS1_14ScheduleBundleEbPS1_RKNS_15SmallPtrSetImplIPNS_5ValueEEENS_8ArrayRefIPNS1_12ScheduleDataEEE(ptr noundef nonnull align 8 dereferenceable(1876) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %17, i1 noundef zeroext %i.alr, ptr noundef %i.als, ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1899") align 8 %18)
  %i.alw = load ptr, ptr %i.all, align 8, !tbaa !359 ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.alm
  br i1 %i.alx, label %_ZN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleD2Ev.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @free(ptr noundef %i.alw) #31
  br label %_ZN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleD2Ev.exit

_ZN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleD2Ev.exit: ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge, %_ZN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleD2Ev.exit, %bb.dg
  br i1 %.039.shrunk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling13resetScheduleEv(ptr noundef nonnull align 8 dereferenceable(1876) %i.c)
  %i.aly = getelementptr inbounds nuw i8, ptr %i.c, i64 1680
  call void @_ZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling20initialFillReadyListINS_9SetVectorIPNS1_14ScheduleEntityENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(1876) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.aly)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.alz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %19 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %i.ac, i64 1
  %21 = getelementptr inbounds nuw i8, <2 x ptr> %20, <2 x i64> <i64 1680, i64 0>
  %i.ama = getelementptr inbounds nuw i8, ptr %i.c, i64 1680 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.c, i64 1712 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.c, i64 1704
  %i.amd = getelementptr inbounds nuw i8, ptr %i.c, i64 1688
  %i.ame = getelementptr inbounds nuw i8, ptr %i.c, i64 1700
  %i.amf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.amg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.amh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.c, i64 1312
  %i.amo = getelementptr inbounds nuw i8, ptr %i.c, i64 1320 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.c, i64 1328
  %i.amq = getelementptr inbounds nuw i8, ptr %i.c, i64 1336
  %i.amr = getelementptr inbounds nuw i8, ptr %i.c, i64 1608
  %i.ams = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.amt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm13slpvectorizer7BoUpSLP15BlockScheduling8scheduleINS_9SetVectorIPNS1_14ScheduleEntityENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEEEEvRKS1_RKN12_GLOBAL__N_117InstructionsStateERKNS1_8EdgeInfoES6_RT_.exit, %bb.dl
  %i.amz = load i8, ptr %i.hy, align 8, !tbaa !993, !range !368, !noundef !369
  %i.ana = trunc nuw i8 %i.amz to i1              ; 2 uses
  %.not = xor i1 %i.ana, true
  %or.cond = and i1 %.039.shrunk, %.not
  br i1 %or.cond, label %_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.ana, label %bb.do, label %.critedge3

bb.do:                                            ; preds = %bb.dn
  %i.anb = call noundef i32 @_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle23unscheduledDepsInBundleEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit, label %_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit.thread

_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit: ; preds = %bb.do
  %i.and = load i8, ptr %i.alz, align 4, !tbaa !985, !range !368, !noundef !369
  %i.ane = trunc nuw i8 %i.and to i1
  br i1 %i.ane, label %_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit.thread, label %.critedge3

_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit.thread: ; preds = %bb.do, %bb.dm, %_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit
  %i.anf = load i32, ptr %i.amb, align 8, !tbaa !371 ; 5 uses
  %.not.i.i91 = icmp eq i32 %i.anf, 0
  br i1 %.not.i.i91, label %.critedge3, label %bb.dp

bb.dp:                                            ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP14ScheduleBundle7isReadyEv.exit.thread
  %i.ang = load ptr, ptr %i.amc, align 8, !tbaa !359
  %i.anh = zext i32 %i.anf to i64
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.ang, i64 %i.anh
  %i.anj = getelementptr inbounds i8, ptr %i.ani, i64 -8
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !1081 ; 13 uses
  %i.anl = load ptr, ptr %i.ama, align 8, !tbaa !1785, !noalias !11073 ; 2 uses
  %i.anm = load ptr, ptr %i.amd, align 8, !tbaa !1786, !noalias !11073 ; 2 uses
  %i.ann = load i32, ptr %i.ame, align 4, !tbaa !1787, !noalias !11073 ; 2 uses
  %i.ano = icmp eq i32 %i.ann, 0
  br i1 %i.ano, label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE12pop_back_valEv.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.anp = add i32 %i.ann, -1                     ; 2 uses
  %i.anq = ptrtoint ptr %i.ank to i64
  %i.anr = mul i64 %i.anq, -4658895280553007687   ; 2 uses
  %i.ans = lshr i64 %i.anr, 31
  %i.ant = xor i64 %i.ans, %i.anr
  %i.anu = trunc i64 %i.ant to i32
  %i.anv = and i32 %i.anp, %i.anu                 ; 3 uses
  %i.anw = zext i32 %i.anv to i64                 ; 2 uses
  %i.anx = lshr i64 %i.anw, 5
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.anx
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !380
  %i.aoa = and i32 %i.anv, 31
  %i.aob = lshr i32 %i.anz, %i.aoa
  %i.aoc = trunc i32 %i.aob to i1
  br i1 %i.aoc, label %.lr.ph.i.i.i.i.i.i92, label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE12pop_back_valEv.exit, !prof !547

.lr.ph.i.i.i.i.i.i92:                             ; preds = %bb.dq, %bb.dr
  %i.aod = phi i64 [ %i.aoj, %bb.dr ], [ %i.anw, %bb.dq ] ; 2 uses
  %.019.i.i.i.i.i.i = phi i32 [ %i.aoi, %bb.dr ], [ %i.anv, %bb.dq ]
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %i.aod
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !1081
  %i.aog = icmp eq ptr %i.ank, %i.aof
  br i1 %i.aog, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6doFindIS5_EEPSB_RKT_.exit.i.i.i.i, label %bb.dr, !prof !548

bb.dr:                                            ; preds = %.lr.ph.i.i.i.i.i.i92
  %i.aoh = add nuw i32 %.019.i.i.i.i.i.i, 1
  %i.aoi = and i32 %i.aoh, %i.anp                 ; 3 uses
  %i.aoj = zext i32 %i.aoi to i64                 ; 2 uses
  %i.aok = lshr i64 %i.aoj, 5
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.aok
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !380
  %i.aon = and i32 %i.aoi, 31
  %i.aoo = lshr i32 %i.aom, %i.aon
  %i.aop = trunc i32 %i.aoo to i1
  br i1 %i.aop, label %.lr.ph.i.i.i.i.i.i92, label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE12pop_back_valEv.exit, !prof !549

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6doFindIS5_EEPSB_RKT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i92
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.anl, i64 %i.aod
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 8 dereferenceable(40) %i.ama, ptr noundef nonnull %i.aoq, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %.pre.i93 = load i32, ptr %i.amb, align 8, !tbaa !371
  br label %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE12pop_back_valEv.exit

_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE12pop_back_valEv.exit: ; preds = %bb.dr, %bb.dp, %bb.dq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6doFindIS5_EEPSB_RKT_.exit.i.i.i.i
  %i.aor = phi i32 [ %.pre.i93, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6doFindIS5_EEPSB_RKT_.exit.i.i.i.i ], [ %i.anf, %bb.dp ], [ %i.anf, %bb.dq ], [ %i.anf, %bb.dr ]
  %i.aos = add i32 %i.aor, -1
  store i32 %i.aos, ptr %i.amb, align 8, !tbaa !371
  %i.aot = load ptr, ptr %i.ae, align 8, !tbaa !1071 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.c, ptr %3, align 8, !tbaa !2178
  store <2 x ptr> %21, ptr %i.amf, align 8, !tbaa !874
  store ptr %i.aot, ptr %i.amg, align 8, !tbaa !1060
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !986
  %i.aow = icmp ne i32 %i.aov, 0
  %.not89.i = icmp eq ptr %i.ank, null
  %.not.i94 = or i1 %.not89.i, %i.aow
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ank, i64 4
  store i8 1, ptr %i.aox, align 4, !tbaa !985
  br i1 %.not.i94, label %bb.eg, label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm9SetVectorIPNS_13slpvectorizer7BoUpSLP14ScheduleEntityENS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EE12pop_back_valEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.amh, ptr %4, align 8, !tbaa !359
  store i32 0, ptr %i.ami, align 8, !tbaa !371
  store i32 6, ptr %i.amj, align 4, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.amk, ptr %5, align 8, !tbaa !359
  store i32 0, ptr %i.aml, align 8, !tbaa !371
  store i32 6, ptr %i.amm, align 4, !tbaa !372
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !1091 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aot, i64 80
  %i.apb = load i32, ptr %i.apa, align 8, !noalias !11074
  %i.apc = and i32 %i.apb, 1
  %.not.i.i.i.i.i.i.i95 = icmp eq i32 %i.apc, 0   ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aot, i64 88 ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !noalias !11074
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aot, i64 96
  %i.apg = load ptr, ptr %i.apf, align 8, !noalias !11074
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aot, i64 104
  %i.api = load i32, ptr %i.aph, align 8, !noalias !11074
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aot, i64 376
  %.sink2.i.i.i.i.i.i.i96 = select i1 %.not.i.i.i.i.i.i.i95, ptr %i.ape, ptr %i.apd ; 3 uses
  %.sink1.i.i.i.i.i.i.i97 = select i1 %.not.i.i.i.i.i.i.i95, ptr %i.apg, ptr %i.apj ; 2 uses
  %.sink.i.i.i.i.i.i.i98 = select i1 %.not.i.i.i.i.i.i.i95, i32 %i.api, i32 4 ; 4 uses
  %i.apk = icmp eq i32 %.sink.i.i.i.i.i.i.i98, 0
  br i1 %i.apk, label %.loopexit.i.i.i.i99, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.apl = add i32 %.sink.i.i.i.i.i.i.i98, -1     ; 2 uses
  %i.apm = ptrtoint ptr %i.aoz to i64
  %i.apn = mul i64 %i.apm, -4658895280553007687   ; 2 uses
  %i.apo = lshr i64 %i.apn, 31
  %i.app = xor i64 %i.apo, %i.apn
  %i.apq = trunc i64 %i.app to i32
  %i.apr = and i32 %i.apl, %i.apq                 ; 3 uses
  %i.aps = zext i32 %i.apr to i64                 ; 2 uses
  %i.apt = lshr i64 %i.aps, 5
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i97, i64 %i.apt
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !380, !noalias !11075
  %i.apw = and i32 %i.apr, 31
  %i.apx = lshr i32 %i.apv, %i.apw
  %i.apy = trunc i32 %i.apx to i1
  br i1 %i.apy, label %.lr.ph.i.i.i.i.i111, label %.loopexit.i.i.i.i99, !prof !547

.lr.ph.i.i.i.i.i111:                              ; preds = %bb.dt, %bb.du
  %i.apz = phi i64 [ %i.aqf, %bb.du ], [ %i.aps, %bb.dt ]
  %.017.i.i.i.i.i112 = phi i32 [ %i.aqe, %bb.du ], [ %i.apr, %bb.dt ]
  %i.aqa = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i.i96, i64 %i.apz ; 2 uses
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !579, !noalias !11075
  %i.aqc = icmp eq ptr %i.aoz, %i.aqb
  br i1 %i.aqc, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i.i, label %bb.du, !prof !548

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i111
  %i.aqd = add nuw i32 %.017.i.i.i.i.i112, 1
  %i.aqe = and i32 %i.aqd, %i.apl                 ; 3 uses
  %i.aqf = zext i32 %i.aqe to i64                 ; 2 uses
  %i.aqg = lshr i64 %i.aqf, 5
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i97, i64 %i.aqg
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !380, !noalias !11075
  %i.aqj = and i32 %i.aqe, 31
  %i.aqk = lshr i32 %i.aqi, %i.aqj
  %i.aql = trunc i32 %i.aqk to i1
  br i1 %i.aql, label %.lr.ph.i.i.i.i.i111, label %.loopexit.i.i.i.i99, !prof !549

.loopexit.i.i.i.i99:                              ; preds = %bb.du, %bb.dt, %bb.ds
  %i.aqm = zext i32 %.sink.i.i.i.i.i.i.i98 to i64 ; 2 uses
  %i.aqn = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i.i96, i64 %i.aqm
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i111
  %.pre.i.i113 = zext i32 %.sink.i.i.i.i.i.i.i98 to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i.i, %.loopexit.i.i.i.i99
  %.pre-phi.i.i100 = phi i64 [ %.pre.i.i113, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i.i ], [ %i.aqm, %.loopexit.i.i.i.i99 ]
  %.lcssa.sink.i.i.i.i101 = phi ptr [ %i.aqa, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i.i ], [ %i.aqn, %.loopexit.i.i.i.i99 ] ; 3 uses
  %i.aqo = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i.i96, i64 %.pre-phi.i.i100
  %i.aqp = icmp eq ptr %.lcssa.sink.i.i.i.i101, %i.aqo
  br i1 %i.aqp, label %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.thread.i, label %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.i

_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i.i
  %i.aqq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i101, i64 16
  %i.aqr = load i32, ptr %i.aqq, align 8, !tbaa !371 ; 2 uses
  %i.aqs = icmp eq i32 %i.aqr, 0
  br i1 %i.aqs, label %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.thread.i, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP14getTreeEntriesEPKNS_5ValueE.exit.i
  %i.aqt = zext i32 %i.aqr to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i101, i64 8
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !359 ; 2 uses
  %.idx123.i = shl nuw nsw i64 %i.aqt, 3
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %.idx123.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aoz, i64 4
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP14ScheduleBundleELb1EE9push_backES4_.exit.i, %.lr.ph.i102
  %.04499.i = phi ptr [ %i.aqv, %.lr.ph.i102 ], [ %i.asw, %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP14ScheduleBundleELb1EE9push_backES4_.exit.i ] ; 2 uses
  %i.aqy = load ptr, ptr %.04499.i, align 8, !tbaa !575 ; 2 uses
  %i.aqz = load i8, ptr %i.aoz, align 8, !tbaa !391
  switch i8 %i.aqz, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.i [
    i8 96, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
    i8 93, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
    i8 88, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
    i8 36, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
    i8 42, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
  ]

_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.i: ; preds = %bb.dv
  %i.ara = load i32, ptr %i.aqx, align 4
  %i.arb = and i32 %i.ara, 268435455
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 272
  %i.ard = load i32, ptr %i.arc, align 8, !tbaa !371
  %.not52.i = icmp eq i32 %i.arb, %i.ard
  br i1 %.not52.i, label %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13slpvectorizer7BoUpSLP14ScheduleBundleELb1EE9push_backES4_.exit.i

_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.i, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !11076)
  %i.are = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33, !noalias !11076 ; 11 uses
  store i32 0, ptr %i.are, align 4, !tbaa !984, !noalias !11076
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 4
  store i8 0, ptr %i.arf, align 4, !tbaa !985, !noalias !11076
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  store i32 1, ptr %i.arg, align 4, !tbaa !986, !noalias !11076
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  %i.ari = getelementptr inbounds nuw i8, ptr %i.are, i64 32
  store ptr %i.ari, ptr %i.arh, align 8, !tbaa !359, !noalias !11076
  %i.arj = getelementptr inbounds nuw i8, ptr %i.are, i64 24
  store i32 0, ptr %i.arj, align 8, !tbaa !371, !noalias !11076
  %i.ark = getelementptr inbounds nuw i8, ptr %i.are, i64 28
  store i32 6, ptr %i.ark, align 4, !tbaa !372, !noalias !11076
  %i.arl = getelementptr inbounds nuw i8, ptr %i.are, i64 80
  store i8 1, ptr %i.arl, align 8, !tbaa !993, !noalias !11076
  %i.arm = getelementptr inbounds nuw i8, ptr %i.are, i64 88
  store ptr null, ptr %i.arm, align 8, !tbaa !994, !noalias !11076
  store ptr %i.are, ptr %6, align 8, !tbaa !1077, !alias.scope !11076
  %i.arn = load i32, ptr %i.ami, align 8, !tbaa !371 ; 3 uses
  %i.aro = load i32, ptr %i.amj, align 4, !tbaa !372
  %.not.i.i103 = icmp ult i32 %i.arn, %i.aro
  br i1 %.not.i.i103, label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.thread.i, label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.i, !prof !548

_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.thread.i: ; preds = %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
  %i.arp = ptrtoint ptr %i.are to i64
  %i.arq = zext i32 %i.arn to i64
  %i.arr = load ptr, ptr %4, align 8, !tbaa !359  ; 2 uses
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %i.arq
  store i64 %i.arp, ptr %i.ars, align 8, !tbaa !1077
  %i.art = add nuw i32 %i.arn, 1                  ; 2 uses
  store i32 %i.art, ptr %i.ami, align 8, !tbaa !371
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %i.aru
  %i.arw = getelementptr inbounds i8, ptr %i.arv, i64 -8
  br label %_ZNSt10unique_ptrIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS3_EED2Ev.exit.i

_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.i: ; preds = %_ZN4llvm3isaIJNS_16ExtractValueInstENS_18ExtractElementInstENS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit.thread.i
  %i.arx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EELb0EE18growAndEmplaceBackIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 2 uses
  %.pre.i104 = load ptr, ptr %6, align 8, !tbaa !1077 ; 4 uses
  %.not.i55.i = icmp eq ptr %.pre.i104, null
  br i1 %.not.i55.i, label %_ZNSt10unique_ptrIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS3_EED2Ev.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.i
  %i.ary = getelementptr inbounds nuw i8, ptr %.pre.i104, i64 16
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !359 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %.pre.i104, i64 32
  %i.asb = icmp eq ptr %i.arz, %i.asa
  br i1 %i.asb, label %_ZNKSt14default_deleteIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleEEclEPS3_.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @free(ptr noundef %i.arz) #31
  br label %_ZNKSt14default_deleteIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleEEclEPS3_.exit.i.i: ; preds = %bb.dx, %bb.dw
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i104, i64 noundef 96) #32
  br label %_ZNSt10unique_ptrIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleEEclEPS3_.exit.i.i, %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.i, %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.thread.i
  %.0.i175.i = phi ptr [ %i.arw, %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.thread.i ], [ %i.arx, %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_13slpvectorizer7BoUpSLP14ScheduleBundleESt14default_deleteIS4_EEE12emplace_backIJS7_EEERS7_DpOT_.exit.i ], [ %i.arx, %_ZNKSt14default_deleteIN4llvm13slpvectorizer7BoUpSLP14ScheduleBundleEEclEPS3_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.asc = load ptr, ptr %.0.i175.i, align 8, !tbaa !1077 ; 4 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 88
  store ptr %i.aqy, ptr %i.asd, align 8, !tbaa !994
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asc, i64 16 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asc, i64 24 ; 3 uses
  %i.asg = load i32, ptr %i.asf, align 8, !tbaa !371 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asc, i64 28
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !372
  %.not.i.i.i105 = icmp ult i32 %i.asg, %i.asi
  br i1 %.not.i.i.i105, label %bb.dz, label %bb.dy, !prof !548

end_hunk_1
