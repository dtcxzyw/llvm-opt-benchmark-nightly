Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompressInstEmitter?download=true
inline.NumInlined: 2532
inline.NumDeleted: 916
begin_hunk_0_@"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_":bb.a
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.sroa.025.0.lcssa to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.o = udiv exact i64 %i.m, 576
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %.sroa.025.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.p = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(569) %.0910.i.i.i.i.i) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 576
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 576 ; 2 uses
  %i.s = add nsw i64 %.012.i.i.i.i.i, -1
  %i.t = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, !llvm.loop !5

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  %i.u = ptrtoint ptr %3 to i64
  %i.v = ptrtoint ptr %.sroa.023.0.lcssa to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i16, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit21

.lr.ph.preheader.i.i.i.i.i16:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.y = udiv exact i64 %i.w, 576
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17, %.lr.ph.preheader.i.i.i.i.i16
  %.012.i.i.i.i.i18 = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i17 ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i16 ] ; 2 uses
  %.0811.i.i.i.i.i19 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i17 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i16 ] ; 2 uses
  %.0910.i.i.i.i.i20 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i17 ], [ %.sroa.023.0.lcssa, %.lr.ph.preheader.i.i.i.i.i16 ] ; 2 uses
  %i.z = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.0811.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(569) %.0910.i.i.i.i.i20) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i20, i64 576
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i19, i64 576
  %i.ac = add nsw i64 %.012.i.i.i.i.i18, -1
  %i.ad = icmp samesign ugt i64 %.012.i.i.i.i.i18, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i17, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit21, !llvm.loop !5

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit21: ; preds = %.lr.ph.i.i.i.i.i17, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @"_ZSt12__move_mergeIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS1_23emitCompressInstEmitterERN4llvm11raw_ostreamENS1_11EmitterTypeEE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  switch i32 %5, label %.lr.ph.split [
    i32 0, label %.lr.ph.split.us.preheader
    i32 2, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.b
  %.043.us = phi ptr [ %.1.us, %bb.b ], [ %0, %.lr.ph.split.us.preheader ] ; 4 uses
  %.01641.us = phi ptr [ %.117.us, %bb.b ], [ %2, %.lr.ph.split.us.preheader ] ; 4 uses
  %.sroa.029.039.us = phi ptr [ %i.o, %bb.b ], [ %4, %.lr.ph.split.us.preheader ] ; 3 uses
  %.0.val.us = load ptr, ptr %.043.us, align 8
  %.016.val.us = load ptr, ptr %.01641.us, align 8
  %i.d = load ptr, ptr %.016.val.us, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.us, align 8, !tbaa !137 ; 2 uses
  %i.e = load ptr, ptr %.0.val.us, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i14.i.i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.2.0.copyload.i.i.i15.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i14.i.i.us, align 8, !tbaa !137 ; 2 uses
  %.sroa.speculated.i.i.i.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i15.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.i.i.us) ; 2 uses
  %i.f = icmp eq i64 %.sroa.speculated.i.i.i.i.us, 0
  br i1 %i.f, label %.thread.i.i.i.i.us, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.us

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.us: ; preds = %.lr.ph.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i.i.i13.i.i.us = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.i = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.us, ptr noundef %.sroa.0.0.copyload.i.i.i13.i.i.us, i64 noundef %.sroa.speculated.i.i.i.i.us) #25
  %.fr.i.i.i.i.us = freeze i32 %i.i               ; 2 uses
  %.not.not.i.i.i.i.us = icmp eq i32 %.fr.i.i.i.i.us, 0
  br i1 %.not.not.i.i.i.i.us, label %.thread.i.i.i.i.us, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.us"

.thread.i.i.i.i.us:                               ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.us, %.lr.ph.split.us
  %i.j = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i.i.us, %.sroa.2.0.copyload.i.i.i15.i.i.us
  br i1 %i.j, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34.us", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread.us"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.us": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.us
  %.0.i.i.us = icmp slt i32 %.fr.i.i.i.i.us, 0
  br i1 %.0.i.i.us, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34.us", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread.us"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread.us": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.us", %.thread.i.i.i.i.us
  %i.k = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.sroa.029.039.us, ptr noundef nonnull align 8 dereferenceable(569) %.043.us) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.043.us, i64 576
  br label %bb.b

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34.us": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.us", %.thread.i.i.i.i.us
  %i.m = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.sroa.029.039.us, ptr noundef nonnull align 8 dereferenceable(569) %.01641.us) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01641.us, i64 576
  br label %bb.b

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34.us", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread.us"
  %.117.us = phi ptr [ %i.n, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34.us" ], [ %.01641.us, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread.us" ] ; 3 uses
  %.1.us = phi ptr [ %.043.us, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34.us" ], [ %i.l, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread.us" ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.029.039.us, i64 576 ; 2 uses
  %i.p = icmp ne ptr %.1.us, %1
  %i.q = icmp ne ptr %.117.us, %3
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !416

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %.043 = phi ptr [ %.1, %bb.c ], [ %0, %.lr.ph ] ; 4 uses
  %.01641 = phi ptr [ %.117, %bb.c ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.029.039 = phi ptr [ %i.af, %bb.c ], [ %4, %.lr.ph ] ; 3 uses
  %i.s = getelementptr i8, ptr %.043, i64 224
  %.0.val21 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.01641, i64 224
  %.016.val20 = load ptr, ptr %i.t, align 8
  %i.u = load ptr, ptr %.016.val20, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i19.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.2.0.copyload.i.i.i20.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i19.i.i, align 8, !tbaa !137 ; 2 uses
  %i.v = load ptr, ptr %.0.val21, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.2.0.copyload.i.i.i25.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i24.i.i, align 8, !tbaa !137 ; 2 uses
  %.sroa.speculated.i.i28.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i25.i.i, i64 %.sroa.2.0.copyload.i.i.i20.i.i) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i28.i.i, 0
  br i1 %i.w, label %.thread.i.i35.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i: ; preds = %.lr.ph.split
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.0.0.copyload.i.i.i23.i.i = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i.i.i18.i.i = load ptr, ptr %i.y, align 8, !tbaa !136
  %i.z = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i18.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i23.i.i, i64 noundef %.sroa.speculated.i.i28.i.i) #25
  %.fr.i.i30.i.i = freeze i32 %i.z                ; 2 uses
  %.not.not.i.i31.i.i = icmp eq i32 %.fr.i.i30.i.i, 0
  br i1 %.not.not.i.i31.i.i, label %.thread.i.i35.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit"

.thread.i.i35.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i, %.lr.ph.split
  %i.aa = icmp ult i64 %.sroa.2.0.copyload.i.i.i20.i.i, %.sroa.2.0.copyload.i.i.i25.i.i
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i
  %.0.i.i = icmp slt i32 %.fr.i.i30.i.i, 0
  br i1 %.0.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34": ; preds = %.thread.i.i35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit"
  %i.ab = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.sroa.029.039, ptr noundef nonnull align 8 dereferenceable(569) %.01641) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01641, i64 576
  br label %bb.c

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread": ; preds = %.thread.i.i35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit"
  %i.ad = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.sroa.029.039, ptr noundef nonnull align 8 dereferenceable(569) %.043) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.043, i64 576
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34"
  %.117 = phi ptr [ %i.ac, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34" ], [ %.01641, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread" ] ; 3 uses
  %.1 = phi ptr [ %.043, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread34" ], [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclIPNS3_11CompressPatESC_EEbT_T0_.exit.thread" ] ; 3 uses
  %i.af = getelementptr i8, ptr %.sroa.029.039, i64 576 ; 2 uses
  %i.ag = icmp ne ptr %.1, %1
  %i.ah = icmp ne ptr %.117, %3
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.split, label %._crit_edge, !llvm.loop !416

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.029.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.af, %bb.c ], [ %i.o, %bb.b ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.c ], [ %.117.us, %bb.b ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.c ], [ %.1.us, %bb.b ] ; 2 uses
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = ptrtoint ptr %.0.lcssa to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.an = udiv exact i64 %i.al, 576
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.sroa.029.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ao = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(569) %.0910.i.i.i.i.i) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 576
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 576 ; 2 uses
  %i.ar = add nsw i64 %.012.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !5

_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.029.0.lcssa, %._crit_edge ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.at = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.au = ptrtoint ptr %.sroa.029.0.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = getelementptr inbounds i8, ptr %.sroa.029.0.lcssa, i64 %i.av ; 2 uses
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = ptrtoint ptr %.016.lcssa to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %i.bb = udiv exact i64 %i.az, 576
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24, %.lr.ph.preheader.i.i.i.i.i23
  %.012.i.i.i.i.i25 = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i24 ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i24 ], [ %i.aw, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i24 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %i.bc = tail call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.0811.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(569) %.0910.i.i.i.i.i27) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 576
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 576 ; 2 uses
  %i.bf = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit, !llvm.loop !5

_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit: ; preds = %.lr.ph.i.i.i.i.i24
  %6 = ptrtoint ptr %i.be to i64
  br label %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28

_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28: ; preds = %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit, %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i22 = phi i64 [ %i.at, %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %6, %_ZSt4moveIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit ]
  %i.bh = sub i64 %.08.lcssa.i.i.i.i.i22, %i.at
  %i.bi = getelementptr inbounds i8, ptr %i.aw, i64 %i.bh
  ret ptr %i.bi
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EEEvT_SI_SI_T0_SJ_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, i32 %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %"struct.(anonymous namespace)::CompressInstEmitter::CompressPat", align 8 ; 12 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond89 = or i1 %i.a, %i.b
  br i1 %or.cond89, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr8593 = phi i64 [ %i.aq, %tailrecurse ], [ %4, %bb.a ] ; 4 uses
  %.tr8492 = phi i64 [ %i.ap, %tailrecurse ], [ %3, %bb.a ] ; 4 uses
  %.tr8291 = phi ptr [ %.sroa.0.0, %tailrecurse ], [ %1, %bb.a ] ; 8 uses
  %.tr90 = phi ptr [ %i.ao, %tailrecurse ], [ %0, %bb.a ] ; 7 uses
  %i.c = add nsw i64 %.tr8593, %.tr8492
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(i32 %5, ptr %.tr8291, ptr %.tr90)
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call fastcc void @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPatC2EOS1_(ptr noundef nonnull align 8 dereferenceable(569) %6, ptr noundef nonnull align 8 dereferenceable(569) %.tr90)
  %i.f = call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.tr90, ptr noundef nonnull align 8 dereferenceable(569) %.tr8291) ; 0 uses
  %i.g = call fastcc noundef nonnull align 8 dereferenceable(569) ptr @_ZN12_GLOBAL__N_119CompressInstEmitter11CompressPataSEOS1_(ptr noundef nonnull align 8 dereferenceable(569) %.tr8291, ptr noundef nonnull align 8 dereferenceable(569) %6) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 536
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.i) #21
  br label %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit.i.i.i

_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 488
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit1.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.m) #21
  br label %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit1.i.i.i

_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit1.i.i.i: ; preds = %bb.e, %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !188  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit1.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 464
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #24
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit: ; preds = %_ZN4llvm10IndexedMapIN12_GLOBAL__N_119CompressInstEmitter6OpDataENS_6detail13IdentityIndexIjEEED2Ev.exit1.i.i.i, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @_ZN4llvm18CodeGenInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %i.w) #21
  call void @_ZN4llvm18CodeGenInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(569) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.x = icmp sgt i64 %.tr8492, %.tr8593
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %i.y = sdiv i64 %.tr8492, 2                     ; 2 uses
  %i.z = getelementptr inbounds [576 x i8], ptr %.tr90, i64 %i.y ; 3 uses
  %.val58 = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 224
  %.val59 = load ptr, ptr %i.aa, align 8
  %i.ab = tail call fastcc ptr @"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EEET_SI_SI_RKT0_T1_"(ptr %.tr8291, ptr %2, ptr %.val58, ptr %.val59, i32 %5) ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.tr8291 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 576
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65: ; preds = %bb.g
  %i.ag = sdiv i64 %.tr8593, 2                    ; 2 uses
  %i.ah = getelementptr inbounds [576 x i8], ptr %.tr8291, i64 %i.ag ; 3 uses
  %.val60 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 224
  %.val61 = load ptr, ptr %i.ai, align 8
  %i.aj = tail call fastcc ptr @"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EEET_SI_SI_RKT0_T1_"(ptr %.tr90, ptr %.tr8291, ptr %.val60, ptr %.val61, i32 %5) ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.tr90 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 576
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.067.0 = phi ptr [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.aj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65 ] ; 2 uses
  %.049 = phi i64 [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65 ] ; 2 uses
  %.0 = phi i64 [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit65 ] ; 2 uses
  %i.ao = tail call fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_(ptr %.sroa.067.0, ptr %.tr8291, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EEEvT_SI_SI_T0_SJ_T1_"(ptr %.tr90, ptr %.sroa.067.0, ptr %i.ao, i64 noundef %.0, i64 noundef %.049, i32 %5)
  %i.ap = sub nsw i64 %.tr8492, %.0               ; 2 uses
  %i.aq = sub nsw i64 %.tr8593, %.049             ; 2 uses
  %i.ar = icmp eq i64 %i.ap, 0
  %i.as = icmp eq i64 %i.aq, 0
  %or.cond = or i1 %i.ar, %i.as
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EEET_SI_SI_RKT0_T1_"(ptr %0, ptr %1, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.224.val, i32 %2) unnamed_addr #12 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader, label %._crit_edge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader: ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 576
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit.thread"
  %.016 = phi i64 [ %.1, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit.thread" ], [ %i.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader ] ; 2 uses
  %.sroa.03.015 = phi ptr [ %.sroa.03.1, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit.thread" ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader ] ; 4 uses
  %i.f = lshr i64 %.016, 1                        ; 5 uses
  %i.g = getelementptr inbounds nuw [576 x i8], ptr %.sroa.03.015, i64 %i.f ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val3.i = load ptr, ptr %i.g, align 8
  %i.h = load ptr, ptr %.val3.i, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.i = load ptr, ptr %.0.val, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.2.0.copyload.i.i.i15.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i14.i.i, align 8, !tbaa !137 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i15.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.0.0.copyload.i.i.i13.i.i = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.m = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i13.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.m                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  %.inv.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i, -1
  %spec.select.i.i.i.i = select i1 %.inv.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit"

.thread.i.i.i.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.n = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i15.i.i
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit.thread11", label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit.thread"

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_119CompressInstEmitter11CompressPatESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.o = getelementptr i8, ptr %i.g, i64 224
  %.val4.i = load ptr, ptr %i.o, align 8
  %i.p = load ptr, ptr %.val4.i, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i19.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.2.0.copyload.i.i.i20.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i19.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = load ptr, ptr %.224.val, align 8, !tbaa !135 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.2.0.copyload.i.i.i25.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i24.i.i, align 8, !tbaa !137 ; 2 uses
  %.sroa.speculated.i.i28.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i25.i.i, i64 %.sroa.2.0.copyload.i.i.i20.i.i) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i28.i.i, 0
  br i1 %i.r, label %.thread.i.i35.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i23.i.i = load ptr, ptr %i.s, align 8, !tbaa !136
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i.i18.i.i = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.u = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i18.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i23.i.i, i64 noundef %.sroa.speculated.i.i28.i.i) #25
  %.fr.i.i30.i.i = freeze i32 %i.u                ; 2 uses
  %.not.not.i.i31.i.i = icmp eq i32 %.fr.i.i30.i.i, 0
  %.inv.i.i32.i.i = icmp sgt i32 %.fr.i.i30.i.i, -1
  %spec.select.i.i33.i.i = select i1 %.inv.i.i32.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i31.i.i, label %.thread.i.i35.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_119CompressInstEmitter23emitCompressInstEmitterERN4llvm11raw_ostreamENS3_11EmitterTypeEE3$_0EclINS_17__normal_iteratorIPNS3_11CompressPatESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_.exit"

.thread.i.i35.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i29.i.i, %bb.c
  %i.v = icmp ult i64 %.sroa.2.0.copyload.i.i.i20.i.i, %.sroa.2.0.copyload.i.i.i25.i.i
end_hunk_0
