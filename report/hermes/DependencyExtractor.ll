Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/DependencyExtractor?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1976
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE15_M_range_insertIPS6_EEvN9__gnu_cxx17__normal_iteratorISA_S8_EET_SE_St20forward_iterator_tag:bb.a
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !181

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !305
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !305
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !181

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load ptr, ptr %2, align 8, !tbaa !305
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !305
  br label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !181

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.by = load ptr, ptr %1, align 8, !tbaa !305
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !305
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i51 = icmp eq ptr %i.ay, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !310
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #16
  br label %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50, %bb.ai
  store ptr %i.bk, ptr %0, align 8, !tbaa !307
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !311
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !310
  br label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex13MatchCharNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit

_ZN4llvh11SmallVectorIjLj5EED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex13MatchCharNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6hermes5regex13MatchCharNodeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #15
  br label %_ZN6hermes5regex13MatchCharNodeD2Ev.exit

_ZN6hermes5regex13MatchCharNodeD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex13MatchCharNode26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !261
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp ult i32 %i.f, 65536
  br i1 %i.g, label %bb.c, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !325, !range !242, !noundef !73
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.f, 63488
  %switch.selectcmp.i = icmp ne i32 %i.k, 55296
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %switch.selectcmp.i, %bb.d ], [ true, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex13MatchCharNode21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !261  ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !316
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !261  ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = sub nsw i64 %i.h, %i.k
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add nuw nsw i64 %i.k, %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.o, i64 noundef %i.n, i64 noundef 4) #15
  %.pre7.pre.i = load i32, ptr %i.i, align 8, !tbaa !261
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !200
  %i.q = zext i32 %.pre7.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 4 %i.b, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !261
  br label %_ZN4llvh15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre7.i, %bb.c ], [ %.pre.i, %bb.d ]
  %i.t = add i32 %i.s, %i.d
  store i32 %i.t, ptr %i.i, align 8, !tbaa !261
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex13MatchCharNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !261
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %2 = ptrtoint ptr %1 to i64
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %.047.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.f, %bb.a ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.b, %bb.a ] ; 9 uses
  %i.g = load i32, ptr %.02946.i.i.i.i, align 4, !tbaa !3
  %i.h = icmp ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = icmp ult i32 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = icmp ult i32 %i.m, 128
  br i1 %i.n, label %bb.d, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit14

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = icmp ult i32 %i.p, 128
  br i1 %i.q, label %bb.e, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit16

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16 ; 3 uses
  %i.s = add nsw i64 %.047.i.i.i.i, -1
  %i.t = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !344

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %i.r to i64
  %gepdiff = sub i64 %2, %.pre.i.i.i.i
  %i.u = ashr exact i64 %gepdiff, 2
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi53.i.i.i.i = phi i64 [ %i.u, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.r, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !3
  %i.w = icmp ult i32 %i.v, 128
  br i1 %i.w, label %bb.g, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.y = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !3
  %i.z = icmp ult i32 %i.y, 128
  br i1 %i.z, label %bb.i, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ab = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !3
  %i.ac = icmp ult i32 %i.ab, 128
  br i1 %i.ac, label %bb.k, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  br label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit14: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit16: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit:              ; preds = %.lr.ph.i.i.i.i, %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit14, %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit16, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %1, %bb.k ], [ %.2.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.f ], [ %i.af, %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit16 ], [ %i.ad, %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit ], [ %i.ae, %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit14 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ag = icmp eq ptr %1, %.028.i.i.i.i
  %spec.select = select i1 %i.ag, i8 4, i8 5
  ret i8 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex13MatchCharNode15reverseChildrenEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIPjEvT_S1_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200  ; 2 uses
  %i.f = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.f, 2
  %i.g = getelementptr i8, ptr %i.e, i64 %.idx
  %.012.i.i = getelementptr i8, ptr %i.g, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.e, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.h = load i32, ptr %.0913.i.i, align 4, !tbaa !3
  %i.i = load i32, ptr %.014.i.i, align 4, !tbaa !3
  store i32 %i.i, ptr %.0913.i.i, align 4, !tbaa !3
  store i32 %i.h, ptr %.014.i.i, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 4 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -4 ; 2 uses
  %i.k = icmp ult ptr %i.j, %.0.i.i
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt7reverseIPjEvT_S1_.exit, !llvm.loop !345

_ZSt7reverseIPjEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !200
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit
  %.sroa.027.053 = phi ptr [ %i.bu, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit ], [ %i.f, %.lr.ph.preheader ] ; 6 uses
  %.sroa.9.052 = phi i64 [ %i.bt, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.027.053, i64 %.sroa.9.052 ; 2 uses
  %3 = ptrtoint ptr %2 to i64
  %i.g = lshr i64 %.sroa.9.052, 2                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %bb.e
  %.047.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.g, %.lr.ph ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.027.053, %.lr.ph ] ; 9 uses
  %i.h = load i32, ptr %.02946.i.i.i.i.i, align 4, !tbaa !3
  %i.i = icmp ult i32 %i.h, 128
  br i1 %i.i, label %bb.b, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = icmp ult i32 %i.k, 128
  br i1 %i.l, label %bb.c, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = icmp ult i32 %i.n, 128
  br i1 %i.o, label %bb.d, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = icmp ult i32 %i.q, 128
  br i1 %i.r, label %bb.e, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16 ; 3 uses
  %i.t = add nsw i64 %.047.i.i.i.i.i, -1
  %i.u = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !344

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %.pre.i.i.i.i.i = ptrtoint ptr %i.s to i64
  %gepdiff = sub i64 %3, %.pre.i.i.i.i.i
  %i.v = ashr exact i64 %gepdiff, 2
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.lr.ph
  %.pre-phi53.i.i.i.i.i = phi i64 [ %i.v, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.9.052, %.lr.ph ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.s, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.027.053, %.lr.ph ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !3
  %i.x = icmp ult i32 %i.w, 128
  br i1 %i.x, label %bb.g, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.z = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !3
  %i.aa = icmp ult i32 %i.z, 128
  br i1 %i.aa, label %bb.i, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ab, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ac = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !3
  %i.ad = icmp ult i32 %i.ac, 128
  br i1 %i.ad, label %bb.k, label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.h ], [ %2, %bb.k ], [ %.2.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %bb.f ], [ %i.ag, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit68 ], [ %i.af, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit66 ], [ %i.ae, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ah = ptrtoint ptr %.028.i.i.i.i.i to i64     ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.027.053 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %.sroa.027.053, i64 %i.ak, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.al = sub i64 %.sroa.9.052, %i.ak             ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.027.053, i64 %i.aj ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = lshr i64 %i.al, 2                       ; 2 uses
  %.not.i.i8 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i8, label %._crit_edge.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit, %bb.o
  %.047.i.i.i.i.i10 = phi i64 [ %i.bc, %bb.o ], [ %i.ap, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 2 uses
  %.02946.i.i.i.i.i11 = phi ptr [ %i.bb, %bb.o ], [ %i.am, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 9 uses
  %i.aq = load i32, ptr %.02946.i.i.i.i.i11, align 4, !tbaa !3
  %i.ar = icmp ult i32 %i.aq, 128
  br i1 %i.ar, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = icmp ult i32 %i.at, 128
  br i1 %i.au, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = icmp ult i32 %i.aw, 128
  br i1 %i.ax, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = icmp ult i32 %i.az, 128
  br i1 %i.ba, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 16 ; 3 uses
  %i.bc = add nsw i64 %.047.i.i.i.i.i10, -1
  %i.bd = icmp sgt i64 %.047.i.i.i.i.i10, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i9, label %._crit_edge.loopexit.i.i.i.i.i12, !llvm.loop !346

._crit_edge.loopexit.i.i.i.i.i12:                 ; preds = %bb.o
  %.pre.i.i.i.i.i13 = ptrtoint ptr %i.bb to i64
  %.pre52.i.i.i.i.i14 = sub i64 %i.ao, %.pre.i.i.i.i.i13
  %i.be = ashr exact i64 %.pre52.i.i.i.i.i14, 2
  br label %._crit_edge.i.i.i.i.i15

._crit_edge.i.i.i.i.i15:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i12, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit
  %.pre-phi53.i.i.i.i.i16 = phi i64 [ %i.be, %._crit_edge.loopexit.i.i.i.i.i12 ], [ %i.al, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ]
  %.029.lcssa.i.i.i.i.i17 = phi ptr [ %i.bb, %._crit_edge.loopexit.i.i.i.i.i12 ], [ %i.am, %_ZNK4llvh8ArrayRefIjE10take_whileIPFbjEEES1_T_.exit ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i.i16, label %bb.u [
    i64 3, label %bb.p
    i64 2, label %bb.r
    i64 1, label %bb.t
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i15
  %i.bf = load i32, ptr %.029.lcssa.i.i.i.i.i17, align 4, !tbaa !3
  %i.bg = icmp ult i32 %i.bf, 128
  br i1 %i.bg, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i17, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i15
  %.1.i.i.i.i.i22 = phi ptr [ %i.bh, %bb.q ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 3 uses
  %i.bi = load i32, ptr %.1.i.i.i.i.i22, align 4, !tbaa !3
  %i.bj = icmp ult i32 %i.bi, 128
  br i1 %i.bj, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i22, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i15
  %.2.i.i.i.i.i18 = phi ptr [ %i.bk, %bb.s ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 2 uses
  %i.bl = load i32, ptr %.2.i.i.i.i.i18, align 4, !tbaa !3
  %i.bm = icmp ult i32 %i.bl, 128
  br i1 %i.bm, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i15
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74: ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76: ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76, %bb.p, %bb.r, %bb.t, %bb.u
  %.028.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i22, %bb.r ], [ %i.an, %bb.u ], [ %.2.i.i.i.i.i18, %bb.t ], [ %.029.lcssa.i.i.i.i.i17, %bb.p ], [ %i.bp, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76 ], [ %i.bo, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74 ], [ %i.bn, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i11, %.lr.ph.i.i.i.i.i9 ]
  %i.bq = ptrtoint ptr %.028.i.i.i.i.i19 to i64
  %i.br = sub i64 %i.bq, %i.ah                    ; 2 uses
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.am, i64 %i.bs, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.bt = sub i64 %i.al, %i.bs                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %._crit_edge, label %.lr.ph, !llvm.loop !347

._crit_edge:                                      ; preds = %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, %bb.a
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = icmp ugt i64 %2, 2
  br i1 %i.e, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

.loopexit:                                        ; preds = %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.i = icmp ugt i64 %i.j, 2
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !348

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %i.k, %.loopexit ] ; 3 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 4 uses
  %i.j = sub nuw i64 %.sroa.8.096, %.sroa.speculated ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.073.095, i64 %.sroa.speculated ; 2 uses
  %i.l = load i8, ptr %i.f, align 8, !tbaa !318, !range !242, !noundef !73
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i64 %.sroa.speculated to i8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !340  ; 7 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !151    ; 7 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp ult i64 %i.s, -2                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
end_hunk_0
