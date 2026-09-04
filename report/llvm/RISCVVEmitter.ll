Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVVEmitter?download=true
inline.NumInlined: 2723
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EEET0_T_SO_SO_SO_SN_T1_":bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit, !llvm.loop !2

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ak, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.an = ptrtoint ptr %3 to i64
  %i.ao = ptrtoint ptr %.sroa.021.0.lcssa to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit20

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19
  %.012.i.i.i.i.i14 = phi i64 [ %i.aw, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ], [ %i.aq, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.av, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 3 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.au, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ], [ %.sroa.021.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i16, align 8, !tbaa !108
  store ptr null, ptr %.0910.i.i.i.i.i16, align 8, !tbaa !108
  %i.at = load ptr, ptr %.0811.i.i.i.i.i15, align 8, !tbaa !108 ; 3 uses
  store ptr %i.as, ptr %.0811.i.i.i.i.i15, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17, label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19, label %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18

_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i13
  tail call void @_ZN5clang5RISCV12RVVIntrinsicD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.at) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19

_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19: ; preds = %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i13
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 8 ; 2 uses
  %i.aw = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.ax = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit20, !llvm.loop !2

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit20: ; preds = %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit
  %.08.lcssa.i.i.i.i.i12 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ], [ %i.av, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ]
  ret ptr %.08.lcssa.i.i.i.i.i12
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @"_ZSt12__move_mergeIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EEET0_T_SO_SO_SO_SN_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.036 = phi ptr [ %.1, %bb.e ], [ %0, %bb.a ]   ; 4 uses
  %.01635 = phi ptr [ %.117, %bb.e ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.033 = phi ptr [ %i.aa, %bb.e ], [ %4, %bb.a ] ; 5 uses
  %.016.val = load ptr, ptr %.01635, align 8, !tbaa !108 ; 4 uses
  %.0.val = load ptr, ptr %.036, align 8, !tbaa !108 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.016.val, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.016.val, i64 104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.g, %i.k
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.g, 0
  br i1 %i.l, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.e, ptr %i.i, i64 %i.g)
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.n = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %i.g) #25
  %.fr.i.i.i.i53 = freeze i32 %i.n
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISD_EESH_EEbT_T0_.exit"

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.016.val, i64 232
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %.sroa.44.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32 ; 2 uses
  %.sroa.44.0.extract.trunc.i.i = trunc nuw i64 %.sroa.44.0.extract.shift.i.i to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %.sroa.0.0.copyload.i15.i.i = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i15.i.i to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i15.i.i, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %.not.i16.i.i = icmp eq i64 %.sroa.44.0.extract.shift.i.i, %.sroa.4.0.extract.shift.i.i
  %i.q = icmp slt i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.44.0.extract.trunc.i.i
  %i.r = icmp slt i32 %.sroa.03.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  %.0.i17.i.i = select i1 %.not.i16.i.i, i1 %i.r, i1 %i.q
  br i1 %.0.i17.i.i, label %bb.c, label %bb.d

_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i: ; preds = %.lr.ph
  %.sroa.speculated.i.i9.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.g) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i9.i.i, 0
  br i1 %i.s, label %.thread.i.i.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i
  %i.t = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i9.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.t                  ; 2 uses
  %.not.not.i.i.i.i.not = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.not, label %.thread.i.i.thread.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISD_EESH_EEbT_T0_.exit"

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i
  %i.u = icmp ult i64 %i.g, %i.k
  br i1 %i.u, label %bb.c, label %bb.d

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISD_EESH_EEbT_T0_.exit": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %.fr.i.i.i.i56 = phi i32 [ %.fr.i.i.i.i53, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread ], [ %.fr.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i ]
  %i.v = icmp slt i32 %.fr.i.i.i.i56, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread.i.i.thread.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISD_EESH_EEbT_T0_.exit"
  store ptr null, ptr %.01635, align 8, !tbaa !108
  %i.w = load ptr, ptr %.sroa.0.033, align 8, !tbaa !108 ; 3 uses
  store ptr %.016.val, ptr %.sroa.0.033, align 8, !tbaa !108
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN5clang5RISCV12RVVIntrinsicD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.w) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01635, i64 8
  br label %bb.e

bb.d:                                             ; preds = %.thread.i.i.thread.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISD_EESH_EEbT_T0_.exit"
  store ptr null, ptr %.036, align 8, !tbaa !108
  %i.y = load ptr, ptr %.sroa.0.033, align 8, !tbaa !108 ; 3 uses
  store ptr %.0.val, ptr %.sroa.0.033, align 8, !tbaa !108
  %.not.i.i.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit20, label %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i19

_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i19: ; preds = %bb.d
  tail call void @_ZN5clang5RISCV12RVVIntrinsicD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.y) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit20

_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit20: ; preds = %bb.d, %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i19
  %i.z = getelementptr inbounds nuw i8, ptr %.036, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit20, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit
  %.117 = phi ptr [ %i.x, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit ], [ %.01635, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit20 ] ; 3 uses
  %.1 = phi ptr [ %.036, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.z, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit20 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 8 ; 2 uses
  %i.ab = icmp ne ptr %.1, %1
  %i.ac = icmp ne ptr %.117, %3
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aa, %bb.e ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.e ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.e ] ; 2 uses
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %.0.lcssa to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.an, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.ah, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.aj = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !108
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !108
  %i.ak = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !108 ; 3 uses
  store ptr %i.aj, ptr %.0811.i.i.i.i.i, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN5clang5RISCV12RVVIntrinsicD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.ak) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, !llvm.loop !2

_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.am, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ]
  %i.ap = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ar ; 3 uses
  %i.at = ptrtoint ptr %3 to i64
  %i.au = ptrtoint ptr %.016.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28
  %.012.i.i.i.i.i23 = phi i64 [ %i.bc, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ], [ %i.aw, %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.bb, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ], [ %i.as, %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ] ; 3 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.ba, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ], [ %.016.lcssa, %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ] ; 3 uses
  %i.ay = load ptr, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !108
  store ptr null, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !108
  %i.az = load ptr, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !108 ; 3 uses
  store ptr %i.ay, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28, label %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27

_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i.i22
  tail call void @_ZN5clang5RISCV12RVVIntrinsicD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %i.az) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28

_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28: ; preds = %_ZNKSt14default_deleteIN5clang5RISCV12RVVIntrinsicEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i22
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 8 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29, !llvm.loop !2

_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29: ; preds = %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28, %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit
  %.08.lcssa.i.i.i.i.i21 = phi ptr [ %i.as, %_ZSt4moveIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ], [ %i.bb, %_ZNSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i21 to i64
  %i.be = sub i64 %5, %i.ap
  %i.bf = getelementptr inbounds i8, ptr %i.as, i64 %i.be
  ret ptr %i.bf
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EEEvT_SN_SN_T0_SO_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond77 = or i1 %i.a, %i.b
  br i1 %or.cond77, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit
  %.tr7381 = phi i64 [ %i.ew, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ], [ %4, %bb.a ] ; 4 uses
  %.tr7280 = phi i64 [ %i.ev, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ], [ %3, %bb.a ] ; 4 uses
  %.tr7079 = phi ptr [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ], [ %1, %bb.a ] ; 18 uses
  %.tr78 = phi ptr [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.c = add nsw i64 %.tr7381, %.tr7280
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %.tr7079, align 8, !tbaa !108 ; 4 uses
  %.val1.i = load ptr, ptr %.tr78, align 8, !tbaa !108 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.h, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %bb.c
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.j, i64 %i.h)
  %i.n = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.n, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.o = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %i.h) #25
  %.fr.i.i.i.i97 = freeze i32 %i.o
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISE_EESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit"

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %.sroa.44.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32 ; 2 uses
  %.sroa.44.0.extract.trunc.i.i = trunc nuw i64 %.sroa.44.0.extract.shift.i.i to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 232
  %.sroa.0.0.copyload.i15.i.i = load i64, ptr %i.q, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i15.i.i to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i15.i.i, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %.not.i16.i.i = icmp eq i64 %.sroa.44.0.extract.shift.i.i, %.sroa.4.0.extract.shift.i.i
  %i.r = icmp slt i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.44.0.extract.trunc.i.i
  %i.s = icmp slt i32 %.sroa.03.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  %.0.i17.i.i = select i1 %.not.i16.i.i, i1 %i.s, i1 %i.r
  br i1 %.0.i17.i.i, label %bb.d, label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i9.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.h) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i9.i.i, 0
  br i1 %i.t, label %.thread.i.i.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i9.i.i) #25
  %.fr.i.i.i.i = freeze i32 %i.u                  ; 2 uses
  %.not.not.i.i.i.i.not = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.not, label %.thread.i.i.thread.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISE_EESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit"

.thread.i.i.thread.i.i:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread6.thread.i.i
  %i.v = icmp ult i64 %i.h, %i.l
  br i1 %i.v, label %bb.d, label %.loopexit

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISE_EESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %.fr.i.i.i.i100 = phi i32 [ %.fr.i.i.i.i97, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.thread ], [ %.fr.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i ]
  %i.w = icmp slt i32 %.fr.i.i.i.i100, 0
  br i1 %i.w, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.thread.i.i.thread.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteISE_EESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit"
  store ptr %.val.i, ptr %.tr78, align 8, !tbaa !108
  store ptr %.val1.i, ptr %.tr7079, align 8, !tbaa !108
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.x = icmp sgt i64 %.tr7280, %.tr7381
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.y = sdiv i64 %.tr7280, 2                     ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.tr78, i64 %i.y ; 2 uses
  %.val = load ptr, ptr %i.z, align 8
  %i.aa = tail call fastcc ptr @"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EEET_SN_SN_RKT0_T1_"(ptr %.tr7079, ptr %2, ptr %.val) ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.tr7079 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.af = sdiv i64 %.tr7381, 2                    ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.tr7079, i64 %i.af ; 2 uses
  %.val50 = load ptr, ptr %i.ag, align 8
  %i.ah = tail call fastcc ptr @"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_110RVVEmitter13createCodeGenERN4llvm11raw_ostreamEE3$_0EEET_SN_SN_RKT0_T1_"(ptr %.tr78, ptr %.tr7079, ptr %.val50) ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %.tr78 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.059.0 = phi ptr [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ] ; 12 uses
  %.sroa.0.0 = phi ptr [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ] ; 4 uses
  %.047 = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ] ; 2 uses
  %.0 = phi i64 [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ] ; 2 uses
  %i.am = icmp eq ptr %.sroa.059.0, %.tr7079
  br i1 %i.am, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq ptr %.sroa.0.0, %.tr7079
  br i1 %i.an, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.059.0 to i64        ; 4 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = ptrtoint ptr %.tr7079 to i64            ; 4 uses
  %i.at = sub i64 %i.as, %i.ap
  %i.au = ashr exact i64 %i.at, 3                 ; 3 uses
  %i.av = sub nsw i64 %i.ar, %i.au
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.ax = add i64 %i.as, -8
  %i.ay = sub i64 %i.ax, %i.ap                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader163, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.059.0, i64 8
  %i.bb = add i64 %i.as, -8
  %i.bc = sub i64 %i.bb, %i.ap
  %i.bd = and i64 %i.bc, -8                       ; 2 uses
  %scevgep107 = getelementptr i8, ptr %scevgep, i64 %i.bd
  %scevgep108 = getelementptr i8, ptr %.tr7079, i64 8
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.bd
  %bound0 = icmp ult ptr %.sroa.059.0, %scevgep109
  %bound1 = icmp ult ptr %.tr7079, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader163, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %.tr7079, i64 %i.be
  %i.bg = getelementptr i8, ptr %.sroa.059.0, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.tr7079, i64 %i.bh ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.sroa.059.0, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep110, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep110, align 8, !tbaa !108, !alias.scope !318, !noalias !319
  %wide.load111 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !108, !alias.scope !318, !noalias !319
  %i.bj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load112 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !108, !alias.scope !319
  %wide.load113 = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !108, !alias.scope !319
  store <2 x ptr> %wide.load112, ptr %next.gep110, align 8, !tbaa !108, !alias.scope !318, !noalias !319
  store <2 x ptr> %wide.load113, ptr %i.bi, align 8, !tbaa !108, !alias.scope !318, !noalias !319
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !108, !alias.scope !319
  store <2 x ptr> %wide.load111, ptr %i.bj, align 8, !tbaa !108, !alias.scope !319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.lr.ph.i.i.i.preheader163

.lr.ph.i.i.i.preheader163:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.08.i.i.i.ph = phi ptr [ %.tr7079, %vector.memcheck ], [ %.tr7079, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.sroa.04.07.i.i.i.ph = phi ptr [ %.sroa.059.0, %vector.memcheck ], [ %.sroa.059.0, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader163, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader163 ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.sroa.04.07.i.i.i.ph, %.lr.ph.i.i.i.preheader163 ] ; 3 uses
end_hunk_0
