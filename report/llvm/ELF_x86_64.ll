Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_x86_64?download=true
inline.NumInlined: 4506
inline.NumDeleted: 2127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm9StringRef13consume_frontES0_:bb.a
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = sub i64 %i.b, %2
  store ptr %i.e, ptr %0, align 8, !tbaa !72
  store i64 %i.f, ptr %i.a, align 8, !tbaa !73
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread3: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.g
}

declare void @_ZN4llvm13write_integerERNS_11raw_ostreamEjmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKNS8_31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !820, !nonnull !90
  %.0.copyload.i.i.i.i = load i16, ptr %i.b, align 1
  %i.c = zext i16 %.0.copyload.i.i.i.i to i64
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c) #19 ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @_ZN4llvm15format_providerIjvE6formatERKjRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3)
  ret void
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !822
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !822
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm7jitlink9LinkGraph17findSectionByNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.22.0.copyload.fr.i = freeze i64 %2       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205, !noalias !823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215, !noalias !823 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216, !noalias !823 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 3 uses
  %i.i = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %1, i64 %.sroa.22.0.copyload.fr.i) #19, !noalias !832
  %.01627.i = and i32 %i.i, %i.h                  ; 4 uses
  %i.j = zext i32 %.01627.i to i64                ; 3 uses
  %i.k = lshr i64 %i.j, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60, !noalias !832
  %i.n = and i32 %.01627.i, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread, !prof !202

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr.i, 0
  br i1 %i.q, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i
  %i.r = phi i64 [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i ], [ %i.j, %.lr.ph.i ]
  %.01628.us.i = phi i32 [ %.016.us.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i ], [ %.01627.i, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.us.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i, align 8, !tbaa !73, !noalias !832
  %.not.i.i.us.i = icmp eq i64 %.sroa.2.0.copyload.us.i, 0
  br i1 %.not.i.i.us.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i, !prof !218

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i: ; preds = %.lr.ph.split.us.i
  %i.t = add nuw i32 %.01628.us.i, 1
  %.016.us.i = and i32 %i.t, %i.h                 ; 3 uses
  %i.u = zext i32 %.016.us.i to i64               ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !60, !noalias !832
  %i.y = and i32 %.016.us.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread, !prof !204

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i
  %i.ab = phi i64 [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i ], [ %i.j, %.lr.ph.i ]
  %.01628.i = phi i32 [ %.016.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i ], [ %.01627.i, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ab ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !73, !noalias !832
  %.not.i.i.i = icmp eq i64 %.sroa.22.0.copyload.fr.i, %.sroa.2.0.copyload.i
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i, !prof !218

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i: ; preds = %.lr.ph.split.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !72, !noalias !832
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %1, ptr %.sroa.0.0.copyload.i, i64 %.sroa.22.0.copyload.fr.i), !noalias !832
  %i.ad = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ad, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i, !prof !219

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i, %.lr.ph.split.i
  %i.ae = add nuw i32 %.01628.i, 1
  %.016.i = and i32 %i.ae, %i.h                   ; 3 uses
  %i.af = zext i32 %.016.i to i64                 ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !60, !noalias !832
  %i.aj = and i32 %.016.i, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread, !prof !204

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i, %.lr.ph.split.us.i
  %.3.i = phi ptr [ %i.s, %.lr.ph.split.us.i ], [ %i.ac, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i ] ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !205, !noalias !832
  %i.an = load i32, ptr %i.e, align 4, !tbaa !216, !noalias !832
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ao
  %i.aq = icmp eq ptr %.3.i, %i.ap
  br i1 %i.aq, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !176
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit.thread: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i, %bb.b, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit, %bb.c
  %.0 = phi ptr [ %i.as, %bb.c ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E6doFindIS2_EEPKSD_RKT_.exit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i ], [ null, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i ]
  ret ptr %.0
}

declare void @_ZN4llvm7jitlink6x86_6415GOTTableManager23registerExistingEntriesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm7jitlink6x86_6415PLTTableManager23registerExistingEntriesEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.215") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205, !noalias !833 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215, !noalias !833 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216, !noalias !833 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !159, !noalias !833
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 3 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 13 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 4 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !60, !noalias !838 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !841

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !838 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !841

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 3 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !176, !noalias !842 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316, !noalias !845 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !328, !noalias !845 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !329, !noalias !845 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !332, !noalias !845
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.al ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !60, !noalias !854 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.thread

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader, label %.lr.ph307

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %bb.d
  %3 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ao, i1 true)
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr [8 x i8], ptr %i.ad, i64 %4
  br label %.lr.ph.preheader.a

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader, label %.lr.ph307, !llvm.loop !857

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60, !noalias !854 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.a, !llvm.loop !857

.lr.ph.i.a:                                       ; preds = %.lr.ph307
  %6 = shl i64 %i.at, 8
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.av, i1 true)
  %.idx294 = zext nneg i32 %i.ax to i64
  %i.ay = getelementptr i8, ptr %i.ad, i64 %6
  %7 = getelementptr [8 x i8], ptr %i.ay, i64 %.idx294
  br label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.a, %._crit_edge.i.i.i.i.i.i.i.i.thread
  %.sroa.991.0228 = phi ptr [ %7, %.lr.ph.i.a ], [ %5, %._crit_edge.i.i.i.i.i.i.i.i.thread ] ; 2 uses
  %8 = icmp eq ptr %.sroa.991.0228, %2
  br i1 %8, label %.lr.ph.preheader, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.c, %.lr.ph.preheader.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !60
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.m
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.m
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !841

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !60 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !841

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !176, !noalias !858 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !316, !noalias !861 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !328, !noalias !861 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !329, !noalias !861 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !332, !noalias !861
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !60, !noalias !870 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !857

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !60, !noalias !870 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !857

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %.lr.ph.preheader.a, %bb.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %.sroa.991.0228, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %2, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %i.ad, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %i.af, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.z, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %bb.a ], [ %i.z, %.lr.ph.preheader.a ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 256, ptr %.sroa.8183.0..sroa_idx, align 8
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 256, ptr %.sroa.8198.0..sroa_idx, align 8
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE19_M_range_initializeINS1_9LinkGraph26nested_collection_iteratorINS0_15mapped_iteratorINS0_16DenseMapIteratorINS0_9StringRefESt10unique_ptrINS1_7SectionESt14default_deleteISD_EENS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_SG_EELb0EEENS7_23GetSectionMapEntryValueERSD_EENSJ_12DenseSetImplIS3_NS0_8DenseMapIS3_NSJ_13DenseSetEmptyENSH_IS3_vEENSJ_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEES3_XadL_ZNS7_16getSectionBlocksESO_EEEEEEvT_S11_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef byval(%"class.llvm::jitlink::LinkGraph::nested_collection_iterator") align 8 %1, ptr noundef byval(%"class.llvm::jitlink::LinkGraph::nested_collection_iterator") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.024.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8 ; 2 uses
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.829.0.copyload = load ptr, ptr %.sroa.829.0..sroa_idx, align 8 ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.347.0.copyload = load ptr, ptr %.sroa.347.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp ne ptr %.sroa.024.0.copyload, %.sroa.045.0.copyload
  %i.b = icmp ne ptr %.sroa.829.0.copyload, %.sroa.347.0.copyload
  %.not3.i4.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i4.i, label %.lr.ph.i.preheader, label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.sroa.1132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.1132.0.copyload = load ptr, ptr %.sroa.1132.0..sroa_idx, align 8
  %.sroa.1031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1031.0.copyload = load ptr, ptr %.sroa.1031.0..sroa_idx, align 8
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.930.0.copyload = load ptr, ptr %.sroa.930.0..sroa_idx, align 8
  %i.c = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.3.0.copyload to i64  ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = add nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.17.0 = phi ptr [ %.sroa.17.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.930.0.copyload, %.lr.ph.i.preheader ] ; 6 uses
  %.sroa.19.0 = phi ptr [ %.sroa.19.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.1031.0.copyload, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.21.0 = phi ptr [ %.sroa.21.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.1132.0.copyload, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.024.0.copyload, %.lr.ph.i.preheader ] ; 5 uses
  %i.i = phi ptr [ %.sroa.115.1, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.829.0.copyload, %.lr.ph.i.preheader ]
  %.05.i = phi i64 [ %i.cy, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = ptrtoint ptr %.sroa.17.0 to i64
  %i.l = ptrtoint ptr %.sroa.19.0 to i64          ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i64 %i.n, 31
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = lshr i64 %i.q, 5                         ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.21.0, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !60, !noalias !873
  %i.w = trunc i64 %i.q to i32
  %i.x = and i32 %i.w, 31
  %i.y = shl nsw i32 -1, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.ab = add nuw nsw i64 %i.t, 1                 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.s
  br i1 %i.ac, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i, label %.lr.ph100

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph100
  %i.ad = add i64 %i.af, 1                        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.s
  br i1 %i.ae, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i, label %.lr.ph100, !llvm.loop !857

.lr.ph100:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.af = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.21.0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !60, !noalias !873 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !857

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph100, %bb.b
  %.012.lcssa.i.i.i.i.i = phi i64 [ %i.t, %bb.b ], [ %i.af, %.lr.ph100 ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.z, %bb.b ], [ %i.ah, %.lr.ph100 ]
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %.idx.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i, 8
  %i.al = getelementptr i8, ptr %.sroa.19.0, i64 %.idx.i.i.i.i.i
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ak
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i, %.lr.ph.i
  %storemerge16.i.i.i.i.i = phi ptr [ %.sroa.17.0, %.lr.ph.i ], [ %i.am, %._crit_edge.i.i.i.i.i ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0.0, %.sroa.627.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !176, !noalias !873 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !316, !noalias !876
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !329, !noalias !876
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = icmp eq ptr %storemerge16.i.i.i.i.i, %i.au
  br i1 %i.av, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0.160 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0.0, %.lr.ph.i2 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.160, i64 24
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.d
  %i.az = sdiv exact i64 %i.ay, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.az, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.ba = lshr i64 %i.az, 5                       ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !60, !noalias !873
  %i.bd = trunc i64 %i.az to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nsw i32 -1, %i.be
  %i.bg = and i32 %i.bc, %i.bf                    ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.bi = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.h
  br i1 %i.bj, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph101

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph101
  %i.bk = add i64 %i.bm, 1                        ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.h
  br i1 %i.bl, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph101, !llvm.loop !841

.lr.ph101:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.bm = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bi, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !60, !noalias !873 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !841

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph101, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.ba, %bb.c ], [ %i.bm, %.lr.ph101 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.bg, %bb.c ], [ %i.bo, %.lr.ph101 ]
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.br = zext nneg i32 %i.bq to i64
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 768
  %i.bs = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i.i
  %i.bt = getelementptr [24 x i8], ptr %i.bs, i64 %i.br
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge.i.i.i.i, %.lr.ph
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.2.0.copyload, %.lr.ph ], [ %i.bt, %._crit_edge.i.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i ] ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge16.i.i.i.i, %.sroa.627.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !176, !noalias !885 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !316, !noalias !888 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !328, !noalias !888 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !329, !noalias !888 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !332, !noalias !888
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = zext i32 %i.cb to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  %or.cond.i.i.i.i.i = select i1 %i.ce, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.e

end_hunk_0
