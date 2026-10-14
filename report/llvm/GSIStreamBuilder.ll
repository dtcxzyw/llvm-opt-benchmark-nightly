Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GSIStreamBuilder?download=true
inline.NumInlined: 2242
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3pdb16GSIStreamBuilder17finalizeMsfLayoutEv:bb.a
  br label %_ZN4llvm8ExpectedIjED2Ev.exit14

_ZN4llvm8ExpectedIjED2Ev.exit14:                  ; preds = %bb.i, %_ZN4llvm8ExpectedIjEaSEOS1_.exit10
  %i.eb = phi i32 [ %i.ea, %bb.i ], [ %i.dy, %_ZN4llvm8ExpectedIjEaSEOS1_.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ec = trunc i8 %i.dt to i1
  br i1 %i.ec, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i16, label %_ZN4llvm5ErrorD2Ev.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i16: ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit14
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ed = load i64, ptr %3, align 8, !tbaa !106, !noalias !237
  %i.ee = inttoptr i64 %i.ed to ptr
  store ptr null, ptr %3, align 8, !tbaa !106, !noalias !237
  store ptr %i.ee, ptr %0, align 8, !tbaa !36, !alias.scope !237
  br label %bb.j

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit14
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.eb, ptr %i.ef, align 8, !tbaa !89
  store ptr null, ptr %0, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i16, %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i4, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.eg = phi i8 [ %.pre, %bb.f ], [ %i.dw, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i16 ], [ %i.dw, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.cd, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i4 ], [ %i.ak, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.eh = trunc i8 %i.eg to i1
  br i1 %i.eh, label %bb.k, label %_ZN4llvm8ExpectedIjED2Ev.exit21

bb.k:                                             ; preds = %bb.j
  %i.ei = load ptr, ptr %3, align 8, !tbaa !106   ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i19, label %_ZN4llvm8ExpectedIjED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20: ; preds = %bb.k
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !108
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #22, !inline_history !222
  br label %_ZN4llvm8ExpectedIjED2Ev.exit21

_ZN4llvm8ExpectedIjED2Ev.exit21:                  ; preds = %bb.j, %bb.k, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

declare void @_ZN4llvm3msf10MSFBuilder9addStreamEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(152), i32 noundef) local_unnamed_addr #3

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS0_10BulkPublicESaIS3_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((48, 56)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.6.i.i.i.i.i.i.i.i = alloca { i32, i32, i16, i16 }, align 8 ; 4 uses
  %2 = alloca %"class.llvm::parallel::TaskGroup", align 8 ; 5 uses
  %3 = alloca %class.anon.50, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !113
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  store ptr %i.h, ptr %i.d, align 8, !tbaa !93
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3pdb10BulkPublicESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIN4llvm3pdb10BulkPublicESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN4llvm3pdb10BulkPublicESaIS2_EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.val = load ptr, ptr %i.a, align 8, !tbaa !113 ; 8 uses
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !113 ; 8 uses
  %i.l = load i32, ptr @_ZN4llvm8parallel8strategyE, align 4, !tbaa !115
  %.not.i.i = icmp eq i32 %i.l, 1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm3pdb10BulkPublicESaIS2_EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4llvm8parallel9TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(97) %2) #22
  %i.m = ptrtoint ptr %.val8 to i64
  %i.n = ptrtoint ptr %.val to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  call fastcc void @"_ZN4llvm8parallel6detail19parallel_quick_sortIN9__gnu_cxx17__normal_iteratorIPNS_3pdb10BulkPublicESt6vectorIS6_SaIS6_EEEEZNS5_16GSIStreamBuilder16addPublicSymbolsEOSA_E3$_0EEvT_SF_RKT0_RNS0_9TaskGroupEm"(ptr %.val, ptr %.val8, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(97) %2, i64 noundef %i.r)
  call void @_ZN4llvm8parallel9TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit"

bb.d:                                             ; preds = %_ZNSt6vectorIN4llvm3pdb10BulkPublicESaIS2_EEaSEOS4_.exit
  %.not.i.i.i.i.i10 = icmp eq ptr %.val, %.val8
  br i1 %.not.i.i.i.i.i10, label %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %.val8 to i64
  %i.t = ptrtoint ptr %.val to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = xor i64 %i.x, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_SG_T0_T1_"(ptr %.val, ptr %.val8, i64 noundef %i.y)
  %i.z = icmp sgt i64 %i.u, 384
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_SG_T0_"(ptr %.val, ptr nonnull %i.aa)
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %.val8
  br i1 %.not6.i.i.i.i.i.i.i, label %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi ptr [ %i.ah, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i" ], [ %i.aa, %bb.f ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i.i, align 8, !tbaa !60 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !117
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.thread13.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %.sroa.09.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.thread13.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ab = getelementptr i8, ptr %.sroa.09.0.i.i.i.i.i.i.i.i, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !65 ; 2 uses
  %i.ac = tail call i32 @llvm.umin.i32(i32 %.val4.i.i.i.i.i.i.i.i.i, i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i) ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ac to i64
  %i.ae = tail call i32 @memcmp(ptr noundef readonly %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, ptr noundef readonly %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i) #26
  %.fr.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.ae ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.i.i.i.i.i.i.i.i"

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.af = icmp ult i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.af, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.thread13.i.i.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.thread13.i.i.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.thread13.i.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.i.i.i.i.i.i.i.i", %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !118
  br label %bb.g, !llvm.loop !0

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm3pdb16GSIStreamBuilder16addPublicSymbolsEOSt6vectorINS3_10BulkPublicESaIS6_EEE3$_0EclIS6_NS_17__normal_iteratorIPS6_S8_EEEEbRT_T0_.exit.i.i.i.i.i.i.i.i", %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.09.0.i.i.i.i.i.i.i.i, align 8, !tbaa !60
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i, align 8, !tbaa !48
  %.sroa.6.0..sroa_idx8.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %.val8
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

bb.h:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_SG_T0_"(ptr %.val, ptr %.val8)
  br label %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit"

"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm3pdb10BulkPublicESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16GSIStreamBuilder16addPublicSymbolsEOS8_E3$_0EEEvT_T0_.exit.i.i.i.i.i.i.i", %bb.c, %bb.d, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !113 ; 2 uses
  %.not14 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ak = zext i32 %i.aq to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit"
  %.0.lcssa = phi i64 [ 0, %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit" ], [ %i.ak, %._crit_edge.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  store i64 %.0.lcssa, ptr %i.am, align 8, !tbaa !103
  ret void

.lr.ph:                                           ; preds = %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit", %.lr.ph
  %.016 = phi i32 [ %i.aq, %.lr.ph ], [ 0, %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit" ] ; 2 uses
  %.sroa.011.015 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ai, %"_ZN4llvm12parallelSortIRSt6vectorINS_3pdb10BulkPublicESaIS3_EEZNS2_16GSIStreamBuilder16addPublicSymbolsEOS5_E3$_0EEvOT_RKT0_.exit" ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 12
  store i32 %.016, ptr %i.an, align 4, !tbaa !66
  %i.ao = getelementptr i8, ptr %.sroa.011.015, i64 8
  %.val9 = load i32, ptr %i.ao, align 8, !tbaa !65
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %.val9, i32 65265)
  %narrow.i.a = add nuw nsw i32 %.sroa.speculated.i, 14
  %i.ap = and i32 %narrow.i.a, 131068
  %narrow4.i = add i32 %.016, 4
  %i.aq = add i32 %narrow4.i, %i.ap               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.aj
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview10ProcRefSymE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::codeview::ProcRefSym", align 8 ; 4 uses
  %3 = alloca %"class.llvm::codeview::CVRecord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !37, !align !105
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137, !nonnull !37, !align !105
  %i.d = call { ptr, i64 } @_ZN4llvm8codeview16SymbolSerializer14writeOneSymbolINS0_10ProcRefSymEEENS0_8CVRecordINS0_10SymbolKindEEERT_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS0_17CodeViewContainerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i32 noundef 1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  store ptr %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  store i64 %i.g, ptr %i.f, align 8
  call void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview8CVRecordINS2_10SymbolKindEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview7DataSymE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::codeview::DataSym", align 8 ; 4 uses
  %3 = alloca %"class.llvm::codeview::CVRecord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !37, !align !105
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137, !nonnull !37, !align !105
  %i.d = call { ptr, i64 } @_ZN4llvm8codeview16SymbolSerializer14writeOneSymbolINS0_7DataSymEEENS0_8CVRecordINS0_10SymbolKindEEERT_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS0_17CodeViewContainerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i32 noundef 1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  store ptr %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  store i64 %i.g, ptr %i.f, align 8
  call void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview8CVRecordINS2_10SymbolKindEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview11ConstantSymE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::codeview::ConstantSym", align 8 ; 9 uses
  %3 = alloca %"class.llvm::codeview::CVRecord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load i16, ptr %1, align 8, !tbaa !238
  store i16 %i.a, ptr %2, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i32, ptr %i.c, align 2, !tbaa !54
  store i32 %i.d, ptr %i.b, align 2, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !240
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.f, align 8, !tbaa !54
  store i64 %i.k, ptr %i.e, align 8, !tbaa !54
  br label %_ZN4llvm8codeview11ConstantSymC2ERKS1_.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %i.e, ptr noundef nonnull align 8 dereferenceable(13) %i.f) #22
  br label %_ZN4llvm8codeview11ConstantSymC2ERKS1_.exit.i

_ZN4llvm8codeview11ConstantSymC2ERKS1_.exit.i:    ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4, !tbaa !242, !range !243, !noundef !37
  store i8 %i.n, ptr %i.l, align 4, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.p, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !104, !nonnull !37, !align !105
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !137, !nonnull !37, !align !105
  %i.t = call { ptr, i64 } @_ZN4llvm8codeview16SymbolSerializer14writeOneSymbolINS0_11ConstantSymEEENS0_8CVRecordINS0_10SymbolKindEEERT_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS0_17CodeViewContainerE(ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i32 noundef 1) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  store ptr %i.u, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = extractvalue { ptr, i64 } %i.t, 1
  store i64 %i.w, ptr %i.v, align 8
  call void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview8CVRecordINS2_10SymbolKindEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.x = load i32, ptr %i.g, align 8, !tbaa !240
  %i.y = icmp ugt i32 %i.x, 64
  br i1 %i.y, label %bb.d, label %_ZN4llvm3pdb16GSIStreamBuilder21serializeAndAddGlobalINS_8codeview11ConstantSymEEEvRKT_.exit

bb.d:                                             ; preds = %_ZN4llvm8codeview11ConstantSymC2ERKS1_.exit.i
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvm3pdb16GSIStreamBuilder21serializeAndAddGlobalINS_8codeview11ConstantSymEEEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.z) #25
  br label %_ZN4llvm3pdb16GSIStreamBuilder21serializeAndAddGlobalINS_8codeview11ConstantSymEEEvRKT_.exit

_ZN4llvm3pdb16GSIStreamBuilder21serializeAndAddGlobalINS_8codeview11ConstantSymEEEvRKT_.exit: ; preds = %_ZN4llvm8codeview11ConstantSymC2ERKS1_.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb16GSIStreamBuilder15addGlobalSymbolERKNS_8codeview8CVRecordINS2_10SymbolKindEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.e, align 1
  %.0.copyload.i.i.i.i.off = add i16 %.0.copyload.i.i.i.i, -4359
  %switch = icmp ult i16 %.0.copyload.i.i.i.i.off, 2
  br i1 %switch, label %bb.b, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread

bb.b:                                             ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8codeview8CVRecordINS2_10SymbolKindEEENS_6detail13DenseSetEmptyENS_3pdb18SymbolDenseMapInfoENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !254
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.g, 1
  %i.h = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.h, label %._ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread_crit_edge, label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE9push_backERKS4_.exit

._ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !tbaa !68
  br label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit, %._ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread_crit_edge, %bb.a
  %i.i = phi i64 [ %.pre, %._ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread_crit_edge ], [ %i.b, %bb.a ], [ %i.b, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit ]
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !103
  %i.n = add i64 %i.m, %i.j
  store i64 %i.n, ptr %i.l, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !140
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.p, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit8.thread
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !58   ; 5 uses
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775792
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 4                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 576460752303423487)
  %i.ae = select i1 %i.ac, i64 576460752303423487, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #23 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !140
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !140, !alias.scope !255
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !253

_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.an) #25
  br label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !58
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ao, ptr %i.r, align 8, !tbaa !92
  br label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_10SymbolKindEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb16GSIStreamBuilder24commitSymbolRecordStreamENS_23WritableBinaryStreamRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvm::BinaryItemStream", align 8 ; 11 uses
  %4 = alloca %"class.llvm::BinaryStreamRef", align 16 ; 6 uses
  %5 = alloca %"class.llvm::BinaryStreamRef", align 16 ; 6 uses
  %6 = alloca %"class.llvm::BinaryStreamWriter", align 8 ; 7 uses
  %7 = alloca %"class.llvm::WritableBinaryStreamRef", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !144
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !144
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !48
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !48
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit

_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @_ZN4llvm18BinaryStreamWriterC1ENS_23WritableBinaryStreamRefE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr nofree noundef nonnull align 8 dereferenceable(48) %7) #22
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !143  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !147
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22, !inline_history !2
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, !prof !148

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit: ; preds = %_ZN4llvm23WritableBinaryStreamRefC2ERKS0_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.not41.i = icmp eq ptr %i.ae, %i.ac
  br i1 %.not41.i, label %_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit.thread, label %.lr.ph.i

_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit.thread: ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !36, !alias.scope !261
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.01445.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i, label %.critedge..critedge.thread_crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, %bb.k
  %.01445.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit ] ; 6 uses
  %.sroa.022.044.i = phi ptr [ %.sroa.022.3.i, %bb.k ], [ null, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit ] ; 10 uses
  %.sroa.9.043.i = phi ptr [ %.sroa.9.1.i, %bb.k ], [ null, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit ] ; 8 uses
  %.sroa.15.042.i = phi ptr [ %.sroa.15.3.i, %bb.k ], [ null, %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit ] ; 5 uses
  %i.ag = getelementptr i8, ptr %.01445.i, i64 8  ; 2 uses
  %.014.val.i = load i32, ptr %i.ag, align 8, !tbaa !65, !noalias !261
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %.014.val.i, i32 65265)
  %narrow.i.i.a = add nuw nsw i32 %.sroa.speculated.i.i, 14
  %i.ah = and i32 %narrow.i.i.a, 131068
  %narrow4.i.i = add nuw nsw i32 %i.ah, 4
  %i.ai = zext nneg i32 %narrow4.i.i to i64       ; 5 uses
  %i.aj = ptrtoint ptr %.sroa.9.043.i to i64      ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.022.044.i to i64    ; 6 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 8 uses
  %i.am = icmp ult i64 %i.al, %i.ai
  br i1 %i.am, label %bb.l, label %bb.r

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = sub nuw nsw i64 %i.ai, %i.al            ; 5 uses
  %i.ao = ptrtoint ptr %.sroa.15.042.i to i64     ; 2 uses
  %i.ap = sub i64 %i.ao, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.al, 9223372036854775807
  %i.ar = icmp ule i64 %i.ap, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %.not23.i.i = icmp ult i64 %i.ap, %i.an
  br i1 %.not23.i.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %.sroa.9.043.i, align 1, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.043.i, i64 1 ; 2 uses
  %i.at = add nsw i64 %i.an, -1                   ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.sroa.9.043.i, i64 %i.an
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 0, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 %i.an)
  %i.aw = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #23 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.al ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !54
  %i.az = add nsw i64 %i.an, -1                   ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.az, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i: ; preds = %bb.o, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not28.i.i = icmp eq ptr %.sroa.9.043.i, %.sroa.022.044.i
  br i1 %.not28.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %.sroa.022.044.i, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.p, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  %.not.i27.i.i = icmp eq ptr %.sroa.022.044.i, null
  br i1 %.not.i27.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.bc = sub i64 %i.ao, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.044.i, i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ai
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  %.pre.i = ptrtoint ptr %i.ax to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.bf = icmp ugt i64 %i.al, %i.ai
  br i1 %i.bf, label %bb.s, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.022.044.i, i64 %i.ai ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %.sroa.9.043.i, %i.bg
  %spec.select.i = select i1 %.not.i.i.i9, ptr %.sroa.9.043.i, ptr %i.bg
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.s, %bb.r, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %bb.n, %bb.m
  %.pre-phi.i = phi i64 [ %i.ak, %bb.s ], [ %.pre.i, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %bb.r ] ; 2 uses
  %.sroa.15.3.i = phi ptr [ %.sroa.15.042.i, %bb.s ], [ %i.be, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.15.042.i, %bb.n ], [ %.sroa.15.042.i, %bb.m ], [ %.sroa.15.042.i, %bb.r ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ %spec.select.i, %bb.s ], [ %i.bd, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %i.av, %bb.n ], [ %i.as, %bb.m ], [ %.sroa.9.043.i, %bb.r ] ; 2 uses
  %.sroa.022.3.i = phi ptr [ %.sroa.022.044.i, %bb.s ], [ %i.ax, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.022.044.i, %bb.n ], [ %.sroa.022.044.i, %bb.m ], [ %.sroa.022.044.i, %bb.r ] ; 10 uses
  %i.bh = load i32, ptr %i.ag, align 8, !tbaa !48, !noalias !261
  %.sroa.speculated.i17.i = call i32 @llvm.umin.i32(i32 %i.bh, i32 65265)
  %i.bi = zext nneg i32 %.sroa.speculated.i17.i to i64 ; 4 uses
  %8 = add nuw nsw i64 %i.bi, 14
  %9 = and i64 %8, 131068                         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.022.3.i, i64 2
  store i16 4366, ptr %i.bj, align 1
  %i.bk = trunc nuw i64 %9 to i16
  %10 = or disjoint i16 %i.bk, 2
  store i16 %10, ptr %.sroa.022.3.i, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01445.i, i64 22
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !261
  %i.bn = and i16 %i.bm, 15
  %i.bo = zext nneg i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.022.3.i, i64 4
  store i32 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.01445.i, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !149, !noalias !261
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.022.3.i, i64 8
  store i32 %i.br, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.01445.i, i64 20
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !150, !noalias !261
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.022.3.i, i64 12
  store i16 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.022.3.i, i64 14 ; 2 uses
  %i.bx = load ptr, ptr %.01445.i, align 8, !tbaa !64, !noalias !261
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.bx, i64 %i.bi, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bi
  %reass.sub = sub nsw i64 %9, %i.bi
  %i.bz = add nsw i64 %reass.sub, -10
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.by, i8 0, i64 %i.bz, i1 false)
  %i.ca = ptrtoint ptr %.sroa.9.1.i to i64
  %i.cb = sub i64 %i.ca, %.pre-phi.i
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr nonnull %.sroa.022.3.i, i64 %i.cb) #22
  %i.cc = load ptr, ptr %0, align 8, !tbaa !36, !alias.scope !261
  %.not38.i = icmp eq ptr %i.cc, null
  br i1 %.not38.i, label %bb.k, label %_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit

.critedge..critedge.thread_crit_edge.i:           ; preds = %bb.k
  %.pre49.i = ptrtoint ptr %.sroa.022.3.i to i64
  br label %_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit

_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit: ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %.critedge..critedge.thread_crit_edge.i
  %.pre-phi50.i = phi i64 [ %.pre49.i, %.critedge..critedge.thread_crit_edge.i ], [ %.pre-phi.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ]
  %i.cd = ptrtoint ptr %.sroa.15.3.i to i64
  %i.ce = sub i64 %i.cd, %.pre-phi50.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.3.i, i64 noundef %i.ce) #25
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit, %_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !57
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !262
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm16BinaryItemStreamINS_8codeview8CVRecordINS1_10SymbolKindEEENS_16BinaryItemTraitsIS4_EEEE, i64 16), ptr %3, align 8, !tbaa !108, !noalias !262
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.cn, align 8, !tbaa !159, !noalias !262
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false), !noalias !262
  store ptr %i.cg, ptr %i.co, align 8, !tbaa !263, !noalias !262
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.cm, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61, !noalias !262
  call void @_ZN4llvm16BinaryItemStreamINS_8codeview8CVRecordINS1_10SymbolKindEEENS_16BinaryItemTraitsIS4_EEE18computeItemOffsetsEv(ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !262
  call void @_ZN4llvm15BinaryStreamRefC1ERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #22, !noalias !262
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !143, !noalias !262 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %4, align 16, !tbaa !144, !noalias !262
  store <2 x ptr> %i.ct, ptr %5, align 16, !tbaa !144, !noalias !262
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !262
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !48, !noalias !262
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !48, !noalias !262
  br label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cy = atomicrmw volatile add ptr %i.cu, i32 1 acq_rel, align 4, !noalias !262 ; 0 uses
  br label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit.i

_ZN4llvm15BinaryStreamRefC2ERKS0_.exit.i:         ; preds = %bb.v, %bb.u, %_ZN4llvm5ErrorD2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cz, ptr noundef nonnull align 16 dereferenceable(32) %i.da, i64 32, i1 false), !noalias !262
  call void @_ZN4llvm18BinaryStreamWriter14writeStreamRefENS_15BinaryStreamRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr nofree noundef nonnull align 8 dereferenceable(48) %5) #22
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !143, !noalias !262 ; 8 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i11, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dc, align 8, !tbaa !146
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !147
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !108
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #22, !inline_history !260
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !108
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #22, !inline_history !260
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !262
  %.not.i.i.i.i.i12 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %bb.z ], [ %i.dp, %bb.aa ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.ab, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i, !prof !148

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #22
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x, %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit.i
  %i.dr = load ptr, ptr %i.cr, align 8, !tbaa !143, !noalias !262 ; 8 uses
  %.not.i.i.i3.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i3.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ds, align 8, !tbaa !146
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !147
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !108
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22, !inline_history !260
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !108
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22, !inline_history !260
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i

bb.ae:                                            ; preds = %bb.ac
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54, !noalias !262
  %.not.i.i.i.i4.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i4.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i

bb.ag:                                            ; preds = %bb.ae
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i6.i = phi i32 [ %i.dv, %bb.af ], [ %i.ef, %bb.ag ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i6.i, 1
  br i1 %i.eg, label %bb.ah, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i, !prof !148

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i, %bb.ad, %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !262
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm16BinaryItemStreamINS_8codeview8CVRecordINS1_10SymbolKindEEENS_16BinaryItemTraitsIS4_EEEE, i64 16), ptr %3, align 8, !tbaa !108, !noalias !262
  %i.eh = load ptr, ptr %i.cp, align 8, !tbaa !160, !noalias !262 ; 3 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i8.i, label %_ZL12writeRecordsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_8codeview8CVRecordINS3_10SymbolKindEEEEE.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !161, !noalias !262
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #25, !inline_history !162
  br label %_ZL12writeRecordsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_8codeview8CVRecordINS3_10SymbolKindEEEEE.exit

_ZL12writeRecordsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_8codeview8CVRecordINS3_10SymbolKindEEEEE.exit: ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit7.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.critedge

.critedge:                                        ; preds = %_ZL12writeRecordsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_8codeview8CVRecordINS3_10SymbolKindEEEEE.exit, %_ZL12writePublicsRN4llvm18BinaryStreamWriterENS_8ArrayRefINS_3pdb10BulkPublicEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamWriterE, i64 16), ptr %6, align 8, !tbaa !108
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !143 ; 8 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i15, label %_ZN4llvm18BinaryStreamWriterD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
end_hunk_0
