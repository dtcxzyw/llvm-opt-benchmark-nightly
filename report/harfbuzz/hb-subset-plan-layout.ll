Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-layout?download=true
inline.NumInlined: 8393
inline.NumDeleted: 3725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev:bb.a
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.l = load i16, ptr getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 4), align 4, !tbaa !56
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l) ; 2 uses
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !217
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i: ; preds = %bb.d, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i
  %i.p = phi i16 [ %i.m, %bb.d ], [ %i.k, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i ]
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i ]
  %.0.i6.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 4), %bb.d ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 2
  %i.s = load i16, ptr %i.r, align 1, !tbaa !56
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = icmp ugt i16 %i.p, %i.t
  br i1 %i.u, label %bb.e, label %_ZN2OT6Layout6Common8Coverage6iter_tC2ERKS2_.exit, !prof !65

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.w = zext i16 %i.v to i32
  store i32 %i.w, ptr %i.g, align 8, !tbaa !212
  store i32 0, ptr %i.q, align 8, !tbaa !217
  br label %_ZN2OT6Layout6Common8Coverage6iter_tC2ERKS2_.exit

_ZN2OT6Layout6Common8Coverage6iter_tC2ERKS2_.exit: ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i, %bb.e
  %i.x = load i32, ptr %1, align 8, !tbaa !197    ; 2 uses
  store i32 %i.x, ptr %0, align 8, !tbaa !197
  switch i32 %i.x, label %bb.j [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN2OT6Layout6Common8Coverage6iter_tC2ERKS2_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !216  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !56
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !522
  br label %.sink.split

bb.g:                                             ; preds = %_ZN2OT6Layout6Common8Coverage6iter_tC2ERKS2_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !218, !noalias !523 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 3 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !56, !noalias !523
  %.not.i.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i2, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !523, !srcloc !53
  %.pre8.i.i3 = load i16, ptr %i.ah, align 1, !tbaa !56, !noalias !523
  %i.aj = icmp eq i16 %.pre8.i.i3, 0
  br i1 %i.aj, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i4, !prof !193

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i4: ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !523, !srcloc !53
  %.pre11.i.i5 = load i16, ptr %i.ah, align 1, !tbaa !56, !noalias !523
  %i.ak = icmp eq i16 %.pre11.i.i5, 0
  br i1 %i.ak, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6, label %bb.i, !prof !193

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !523, !srcloc !53
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6: ; preds = %bb.h, %bb.g, %bb.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i4
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !218, !noalias !523
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 1, !tbaa !56, !noalias !523
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !524
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %.sroa.4.0..sroa_idx11, align 8, !tbaa !91
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !91
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6
  %.sink12 = phi i64 [ 24, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6 ], [ 16, %bb.f ]
  %.sink = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i6 ], [ %i.ad, %bb.f ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i32 %.sink, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !91
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_ZN2OT6Layout6Common8Coverage6iter_tC2ERKS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !56
  %i.c = icmp ugt i16 %i.b, 4095
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.e = load i16, ptr %i.d, align 1
  %i.f = icmp ugt i16 %i.e, 4095
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EE10hb_apply_tIZNKS13_25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1G_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1G_Efp_EEEOS1G_OS1L_.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i16, ptr %i.g, align 1, !tbaa !56   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.h)
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %.0.i.i = select i1 %i.i, ptr @_hb_NullPool, ptr %i.l, !prof !65 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i16, ptr %.0.i.i, align 1, !tbaa !56, !noalias !534
  %.fr123 = freeze i16 %i.n                       ; 2 uses
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %.fr123) ; 3 uses
  switch i16 %i.o, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EE10hb_apply_tIZNKS13_25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1G_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1G_Efp_EEEOS1G_OS1L_.exit" [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !534, !srcloc !53
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader"

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !534, !srcloc !53
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.q = load i16, ptr %i.p, align 1, !tbaa !56, !noalias !534
  %.not.i.i.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !534, !srcloc !53
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.s = load i16, ptr %i.r, align 1, !tbaa !56, !noalias !534
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.p, align 1, !tbaa !56, !noalias !534
  %i.v = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !193

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.11.0.i = phi i32 [ %i.u, %bb.e ], [ 0, %bb.d ]
  %i.w = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !56, !noalias !534
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !534, !srcloc !53
  %.pre11.i.i.i.i.i = load i16, ptr %i.p, align 1, !tbaa !56, !noalias !534
  %i.y = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.z = load i16, ptr %i.r, align 1, !tbaa !56, !noalias !534
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z) ; 2 uses
  br i1 %i.y, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.f, !prof !193

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !534, !srcloc !53
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.f ]
  %i.ab = phi i16 [ %i.x, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.aa, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.aa, %bb.f ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.r, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !56, !noalias !534
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = icmp ugt i16 %i.ab, %i.ae
  br i1 %i.af, label %bb.g, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader", !prof !65

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.ag = load i16, ptr %i.p, align 1, !tbaa !56, !noalias !534
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = zext i16 %i.ah to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader": ; preds = %bb.c, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.g
  %.sroa.11.2.i.ph = phi i32 [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ], [ 0, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.sroa.7.0.i.ph = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ], [ %i.ai, %bb.g ], [ 0, %bb.c ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 13 uses
  %i.al = icmp eq i16 %.fr123, 256                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 6 uses
  %i.an = load i16, ptr %i.m, align 1, !tbaa !56, !noalias !535 ; 2 uses
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.ao to i32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  %i.aq = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp samesign uge i32 %.sroa.7.0.i.ph, %i.as
  %.not.i.i.i192 = icmp eq i16 %i.an, 0
  %or.cond91193 = select i1 %i.at, i1 true, i1 %.not.i.i.i192
  br i1 %or.cond91193, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSY_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit
  %.sroa.1369.0198 = phi i32 [ %.sroa.1369.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ], [ %.sroa.7.0.i.ph, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ] ; 9 uses
  %.sroa.22.0197 = phi i32 [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ], [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ] ; 6 uses
  %.sroa.27.0196 = phi i32 [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ], [ %.sroa.11.2.i.ph, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ] ; 6 uses
  %.sroa.34.0195 = phi ptr [ %i.du, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ], [ %i.ap, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ] ; 2 uses
  %.sroa.37.sroa.0.0194 = phi i32 [ %i.dt, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ], [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.al, label %bb.h, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.au = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.1369.0198, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !79

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.ax = zext nneg i32 %.sroa.1369.0198 to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ax
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.i ], [ @_hb_NullPool, %bb.h ]
  %i.az = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !56
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = zext i16 %i.ba to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i: ; preds = %.lr.ph, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bb, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0196, %.lr.ph ] ; 3 uses
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !156 ; 5 uses
  %i.bd = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bf = load atomic i32, ptr %i.be monotonic, align 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78 ; 3 uses
  %i.bi = icmp ult i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74 ; 3 uses
  br i1 %i.bi, label %bb.j, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !79

bb.j:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !81
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, %i.bd
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bh, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = add nsw i32 %i.bh, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bp = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = lshr i32 %i.bp, 1                       ; 4 uses
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !81 ; 2 uses
  %i.bv = icmp slt i32 %i.bd, %i.bu
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = add nsw i32 %i.bq, -1
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bd, %i.bu
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = add nuw nsw i32 %i.bq, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.m ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.bw, %bb.k ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  store atomic i32 %i.bq, ptr %i.be monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.by = phi i64 [ %i.br, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bl, %bb.j ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", label %bb.o

bb.o:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.cg = and i32 %i.cf, 7
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !86
  %i.ck = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = lshr i64 %i.cj, %i.cl
  %i.cn = trunc i64 %i.cm to i8
  %i.co = and i8 %i.cn, 1
  br label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"

"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i": ; preds = %bb.n, %bb.o, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.co, %bb.o ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.n ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !69, !range !70, !noundef !71
  %.not8.i.i.i = icmp eq i8 %i.cq, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.p, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSY_.exit"

bb.p:                                             ; preds = %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"
  switch i16 %i.o, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.q
    i16 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.cr = add nuw nsw i32 %.sroa.1369.0198, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.r:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.cs = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ct = tail call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  %i.cu = zext i16 %i.ct to i32
  %.not.i.i.i.i.i16 = icmp ult i32 %.sroa.1369.0198, %i.cu
  br i1 %.not.i.i.i.i.i16, label %bb.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !79

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.cv = zext nneg i32 %.sroa.1369.0198 to i64
  %i.cw = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.cv
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi ptr [ %i.cw, %bb.s ], [ @_hb_Null_OT_RangeRecord, %bb.r ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cy = load i16, ptr %i.cx, align 1, !tbaa !56
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy)
  %i.da = zext i16 %i.cz to i32
  %.not.i.i.i.i = icmp ult i32 %.sroa.27.0196, %i.da
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.db = add nuw nsw i32 %.sroa.1369.0198, 1     ; 4 uses
  %i.dc = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.dd = tail call noundef i16 @llvm.bswap.i16(i16 %i.dc)
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = icmp ult i32 %i.db, %i.de
  br i1 %i.df, label %bb.u, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dg = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !56
  %i.dj = tail call noundef i16 @llvm.bswap.i16(i16 %i.di)
  %i.dk = zext i16 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [6 x i8], ptr %.0.i.i, i64 %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i16, ptr %i.dm, align 1, !tbaa !56
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32                   ; 3 uses
  %i.dq = add i32 %.sroa.22.0197, 1
  %.not1.i.i.i.i = icmp eq i32 %i.dq, %i.dp
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !79

bb.v:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dr = add i32 %.sroa.22.0197, 1
  %i.ds = add nuw nsw i32 %.sroa.27.0196, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.u
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit: ; preds = %bb.t, %bb.v, %.sink.split.i.i.i.i, %bb.u, %bb.q, %bb.p
  %.sroa.27.1 = phi i32 [ %.sroa.27.0196, %bb.p ], [ %.sroa.27.0196, %bb.q ], [ %i.dk, %bb.u ], [ 0, %bb.t ], [ %i.ds, %bb.v ], [ 0, %.sink.split.i.i.i.i ] ; 2 uses
  %.sroa.22.2 = phi i32 [ %.sroa.22.0197, %bb.p ], [ %.sroa.22.0197, %bb.q ], [ %i.dp, %bb.u ], [ %.sroa.22.0197, %bb.t ], [ %i.dr, %bb.v ], [ %i.dp, %.sink.split.i.i.i.i ] ; 2 uses
  %.sroa.1369.2 = phi i32 [ %.sroa.1369.0198, %bb.p ], [ %i.cr, %bb.q ], [ %i.db, %bb.u ], [ %i.db, %bb.t ], [ %.sroa.1369.0198, %bb.v ], [ %i.de, %.sink.split.i.i.i.i ] ; 3 uses
  %i.dt = add nsw i32 %.sroa.37.sroa.0.0194, -1   ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.34.0195, i64 2 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  %i.dv = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.dw = tail call noundef i16 @llvm.bswap.i16(i16 %i.dv)
  %i.dx = zext i16 %i.dw to i32
  %i.dy = icmp uge i32 %.sroa.1369.2, %i.dx
  %.not.i.i.i = icmp eq i32 %i.dt, 0
  %or.cond91 = select i1 %i.dy, i1 true, i1 %.not.i.i.i
  br i1 %or.cond91, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSY_.exit", label %.lr.ph, !llvm.loop !531

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSY_.exit": ; preds = %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader"
  %.sroa.37.sroa.0.0.lcssa = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ], [ %.sroa.37.sroa.0.0194, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i" ], [ %i.dt, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.34.0.lcssa = phi ptr [ %i.ap, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ], [ %.sroa.34.0195, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i" ], [ %i.du, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ]
  %.sroa.27.0.lcssa = phi i32 [ %.sroa.11.2.i.ph, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ], [ %.sroa.27.0196, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ]
  %.sroa.22.0.lcssa = phi i32 [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ], [ %.sroa.22.0197, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ]
  %.sroa.1369.0.lcssa = phi i32 [ %.sroa.7.0.i.ph, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit.split.preheader" ], [ %.sroa.1369.0198, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i" ], [ %.sroa.1369.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GPOS_impl7PairSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 3 uses
  switch i16 %i.o, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EE10hb_apply_tIZNKS13_25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1G_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1G_Efp_EEEOS1G_OS1L_.exit" [
    i16 1, label %bb.w
    i16 2, label %bb.x
  ]

bb.w:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSY_.exit"
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSY_.exit"
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %i.dz = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ea = tail call noundef i16 @llvm.bswap.i16(i16 %i.dz)
  %i.eb = zext i16 %i.ea to i32
  %2 = icmp ult i32 %.sroa.1369.0.lcssa, %i.eb
  %3 = icmp ne i32 %.sroa.37.sroa.0.0.lcssa, 0
  %or.cond92 = select i1 %2, i1 %3, i1 false
  br i1 %or.cond92, label %.split.preheader.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EE10hb_apply_tIZNKS13_25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1G_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1G_Efp_EEEOS1G_OS1L_.exit"

.split.preheader.i:                               ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  %i.ec = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ee = zext i16 %i.ed to i32
  %i.ef = icmp samesign ult i32 %.sroa.1369.0.lcssa, %i.ee
  br i1 %i.ef, label %.lr.ph.split.us, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EE10hb_apply_tIZNKS13_25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1G_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1G_Efp_EEEOS1G_OS1L_.exit"

.lr.ph.split.us:                                  ; preds = %.split.preheader.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us"
  %i.eg = phi i32 [ %i.ga, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us" ], [ %.sroa.1369.0.lcssa, %.split.preheader.i ] ; 2 uses
  %i.eh = phi i32 [ %i.fy, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us" ], [ %.sroa.37.sroa.0.0.lcssa, %.split.preheader.i ]
  %.lcssa1727.i.i113.us = phi ptr [ %i.gc, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us" ], [ %.sroa.34.0.lcssa, %.split.preheader.i ] ; 2 uses
  %.lcssa1129.i.i112.us = phi i32 [ %i.fz, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us" ], [ %.sroa.27.0.lcssa, %.split.preheader.i ]
  %.lcssa1930.i.i111.us = phi i32 [ %i.gb, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us" ], [ %.sroa.22.0.lcssa, %.split.preheader.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.al, label %bb.y, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us"

bb.y:                                             ; preds = %.lr.ph.split.us
  %i.ei = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ej = tail call noundef i16 @llvm.bswap.i16(i16 %i.ei)
  %i.ek = zext i16 %i.ej to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp samesign ult i32 %i.eg, %i.ek
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %bb.z, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us", !prof !79

bb.z:                                             ; preds = %bb.y
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us": ; preds = %bb.z, %bb.y, %.lr.ph.split.us
  %.val1.i.i.i.i.us = load i16, ptr %.lcssa1727.i.i113.us, align 1, !tbaa !56 ; 2 uses
  %i.el = icmp eq i16 %.val1.i.i.i.i.us, 0
  %i.em = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.us)
  %i.en = zext i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.en
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = select i1 %i.el, ptr @_hb_NullPool, ptr %i.eo, !prof !65
  tail call void @_ZNK2OT6Layout9GPOS_impl7PairSetINS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tEPKNS1_11ValueFormatE(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, ptr noundef %1, ptr noundef nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us", %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us"
  %i.ep = phi i32 [ %i.gb, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us" ], [ %.lcssa1930.i.i111.us, %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us" ] ; 4 uses
  %i.eq = phi ptr [ %i.gc, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us" ], [ %.lcssa1727.i.i113.us, %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us" ]
  %i.er = phi i32 [ %i.fy, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us" ], [ %i.eh, %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us" ] ; 5 uses
  %i.es = phi i32 [ %i.ga, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us" ], [ %i.eg, %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us" ] ; 5 uses
  %i.et = phi i32 [ %i.fz, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us" ], [ %.lcssa1129.i.i112.us, %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EdeEv.exit.i.i.us" ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.al, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ev = tail call noundef i16 @llvm.bswap.i16(i16 %i.eu)
  %i.ew = zext i16 %i.ev to i32
  %.not.i.i.i.i.i.i.i.us = icmp ult i32 %i.es, %i.ew
  br i1 %.not.i.i.i.i.i.i.i.us, label %bb.ac, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i.us, !prof !79

bb.ac:                                            ; preds = %bb.ab
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.ex = zext nneg i32 %i.es to i64
  %i.ey = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.ex
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i.us

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i.us: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.us = phi ptr [ %i.ey, %bb.ac ], [ @_hb_Null_OT_RangeRecord, %bb.ab ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.us, i64 2
  %i.fa = load i16, ptr %i.ez, align 1, !tbaa !56
  %i.fb = tail call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i32
  %.not.i.i.i.i.i.i.us = icmp ult i32 %i.et, %i.fc
  br i1 %.not.i.i.i.i.i.i.us, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i.us
  %i.fd = add nuw nsw i32 %i.es, 1                ; 4 uses
  %i.fe = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ff = tail call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32                   ; 2 uses
  %i.fh = icmp ult i32 %i.fd, %i.fg
  br i1 %i.fh, label %bb.ae, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us

bb.ae:                                            ; preds = %bb.ad
  %i.fi = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.fj = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !56
  %i.fl = tail call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32
  %i.fn = getelementptr inbounds nuw [6 x i8], ptr %.0.i.i, i64 %i.fi
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i16, ptr %i.fo, align 1, !tbaa !56
  %i.fq = tail call noundef i16 @llvm.bswap.i16(i16 %i.fp)
  %i.fr = zext i16 %i.fq to i32                   ; 3 uses
  %i.fs = add i32 %i.ep, 1
  %.not1.i.i.i.i.i.i.us = icmp eq i32 %i.fs, %i.fr
  br i1 %.not1.i.i.i.i.i.i.us, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us, label %.sink.split.i.i.i.i.i.i.us, !prof !79

.sink.split.i.i.i.i.i.i.us:                       ; preds = %bb.ae
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us

bb.af:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i.us
  %i.ft = add i32 %i.ep, 1
  %i.fu = add nuw nsw i32 %i.et, 1
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us: ; preds = %bb.af, %.sink.split.i.i.i.i.i.i.us, %bb.ae, %bb.ad
  %.ph.i.i.us = phi i32 [ %i.fr, %.sink.split.i.i.i.i.i.i.us ], [ %i.ft, %bb.af ], [ %i.ep, %bb.ad ], [ %i.fr, %bb.ae ]
  %.ph56.i.i.us = phi i32 [ %i.fg, %.sink.split.i.i.i.i.i.i.us ], [ %i.es, %bb.af ], [ %i.fd, %bb.ad ], [ %i.fd, %bb.ae ]
  %.ph57.i.i.us = phi i32 [ 0, %.sink.split.i.i.i.i.i.i.us ], [ %i.fu, %bb.af ], [ 0, %bb.ad ], [ %i.fm, %bb.ae ]
  %.not.i.i.i58.i.not.i.us = icmp eq i32 %i.er, 0
  %.idx59.i.i.us = select i1 %.not.i.i.i58.i.not.i.us, i64 0, i64 2, !prof !65
  %i.fv = tail call i32 @llvm.usub.sat.i32(i32 %i.er, i32 1)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i2.i.i.us

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us: ; preds = %bb.aa
  %i.fw = add nuw nsw i32 %i.es, 1
  %.not.i.i.i61.i.not.i.us = icmp eq i32 %i.er, 0
  %.idx62.i.i.us = select i1 %.not.i.i.i61.i.not.i.us, i64 0, i64 2, !prof !65
  %i.fx = tail call i32 @llvm.usub.sat.i32(i32 %i.er, i32 1)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i2.i.i.us

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i2.i.i.us: ; preds = %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us
  %i.fy = phi i32 [ %i.fv, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us ], [ %i.fx, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us ] ; 3 uses
  %.idx59.pn.i.i.us = phi i64 [ %.idx59.i.i.us, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us ], [ %.idx62.i.i.us, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us ]
  %i.fz = phi i32 [ %.ph57.i.i.us, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us ], [ %i.et, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us ] ; 3 uses
  %i.ga = phi i32 [ %.ph56.i.i.us, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us ], [ %i.fw, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us ] ; 6 uses
  %i.gb = phi i32 [ %.ph.i.i.us, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i.i.us ], [ %i.ep, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i.i.us ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx59.pn.i.i.us ; 2 uses
  %i.gd = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.ge = tail call noundef i16 @llvm.bswap.i16(i16 %i.gd)
  %i.gf = zext i16 %i.ge to i32
  %i.gg = icmp uge i32 %i.ga, %i.gf
  %.not.i.i.i.i.i.i.i.i.us = icmp ult i32 %i.er, 2
  %or.cond7.i.i.us = select i1 %i.gg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.us
  br i1 %or.cond7.i.i.us, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GPOS_impl7PairSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSR_0EE12hb_partial_tILj2EPK4$_40PKNSA_16PairPosFormat1_3ISC_EEELSW_0ELSR_0EERKSD_EppEv.exit.i.i.loopexit.us", label %bb.ag

bb.ag:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i2.i.i.us
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.al, label %bb.ah, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us

bb.ah:                                            ; preds = %bb.ag
  %i.gh = load i16, ptr %i.ak, align 1, !tbaa !56
  %i.gi = tail call noundef i16 @llvm.bswap.i16(i16 %i.gh)
  %i.gj = zext i16 %i.gi to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i3.i.i.us = icmp samesign ult i32 %i.ga, %i.gj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i3.i.i.us, label %bb.ai, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !prof !79

bb.ai:                                            ; preds = %bb.ah
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.gk = zext nneg i32 %i.ga to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gk
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.gl, %bb.ai ], [ @_hb_NullPool, %bb.ah ]
  %i.gm = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, align 1, !tbaa !56
  %i.gn = tail call noundef i16 @llvm.bswap.i16(i16 %i.gm)
  %i.go = zext i16 %i.gn to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us: ; preds = %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ag
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %i.go, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.fz, %bb.ag ] ; 3 uses
  %i.gp = load ptr, ptr %i.aj, align 8, !tbaa !156 ; 5 uses
  %i.gq = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 9 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 24 ; 2 uses
  %i.gs = load atomic i32, ptr %i.gr monotonic, align 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !78 ; 3 uses
  %i.gv = icmp ult i32 %i.gs, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !74 ; 3 uses
  br i1 %i.gv, label %bb.aj, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !prof !79

bb.aj:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us
  %i.gy = zext i32 %i.gs to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !81
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.ha, %i.gq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us:   ; preds = %bb.aj, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl7PairSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp sgt i32 %i.gu, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.i.i.us"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.hb = add nsw i32 %i.gu, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.an, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.an ], [ %i.hb, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.an ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.hc = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.hd = lshr i32 %i.hc, 1                       ; 4 uses
  %i.he = zext nneg i32 %i.hd to i64              ; 2 uses
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !81 ; 2 uses
  %i.hi = icmp slt i32 %i.gq, %i.hh
  br i1 %i.hi, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.gq, %i.hh
end_hunk_0
