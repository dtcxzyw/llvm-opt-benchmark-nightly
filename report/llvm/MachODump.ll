Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachODump?download=true
inline.NumInlined: 10905
inline.NumDeleted: 3317
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_SF_T0_SG_T1_T2_:bb.a
bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.024.i, ptr align 8 %.025.i, i64 %i.m, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.o = icmp eq i64 %i.m, 16
  br i1 %i.o, label %bb.l, label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(16) %.025.i, i64 16, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %2 to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  %i.s = icmp sgt i64 %i.r, 16
  br i1 %i.s, label %bb.n, label %bb.o, !prof !100

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.r, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

bb.o:                                             ; preds = %bb.m
  %i.t = icmp eq i64 %i.r, 16
  br i1 %i.t, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23: ; preds = %bb.n, %bb.o, %bb.p
  %i.u = getelementptr inbounds i8, ptr %5, i64 %i.r
  %i.v = icmp eq ptr %0, %1
  br i1 %i.v, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23
  %i.w = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.r, label %bb.s, !prof !100

bb.r:                                             ; preds = %bb.q
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [16 x i8], ptr %2, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %5, i64 %i.r, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.s:                                             ; preds = %bb.q
  %i.aa = icmp eq i64 %i.r, 16
  br i1 %i.aa, label %bb.t, label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.t:                                             ; preds = %bb.s
  %i.ab = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23
  %i.ac = icmp eq ptr %2, %1
  br i1 %i.ac, label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -16
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.v
  %.sroa.022.0.i.ph.pn = phi ptr [ %1, %bb.v ], [ %.sroa.022.0.i.ph, %bb.x ]
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.v ], [ %i.af, %bb.x ]
  %.0.i.ph = phi ptr [ %i.ad, %bb.v ], [ %.0.i, %bb.x ]
  %.sroa.022.0.i.ph = getelementptr inbounds i8, ptr %.sroa.022.0.i.ph.pn, i64 -16 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %.outer, %bb.ad
  %.sroa.0.0.i = phi ptr [ %i.af, %bb.ad ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.as, %bb.ad ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112SymbolSorterclERKN4llvm6object9SymbolRefES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %.0.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.022.0.i.ph)
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 5 uses
  br i1 %i.ae, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.022.0.i.ph, i64 16, i1 false)
  %i.ag = icmp eq ptr %0, %.sroa.022.0.i.ph
  br i1 %i.ag, label %bb.y, label %.outer, !llvm.loop !2276

bb.y:                                             ; preds = %bb.x
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %5 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = ashr exact i64 %i.ak, 4                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %bb.aa, !prof !100

bb.z:                                             ; preds = %bb.y
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %5, i64 %i.ak, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ap = icmp eq i64 %i.ak, 16
  br i1 %i.ap, label %bb.ab, label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit

bb.ac:                                            ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.ar = icmp eq ptr %5, %.0.i
  br i1 %i.ar, label %_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = getelementptr inbounds i8, ptr %.0.i, i64 -16
  br label %bb.w, !llvm.loop !2276

_ZSt21__move_merge_adaptiveIPN4llvm6object9SymbolRefEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_T0_SG_T1_T2_.exit: ; preds = %bb.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.s, %bb.r, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112SymbolSorterclERKN4llvm6object9SymbolRefES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Expected.590", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.llvm::Expected.590", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %8 = alloca %"class.llvm::Expected.157", align 8 ; 2 uses
  %9 = alloca %"class.llvm::Expected.157", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106, !noalias !2289 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !65, !noalias !2289
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81, !noalias !2289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2289
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.590") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 %.sroa.0.0.copyload.i.i) #27, !inline_history !28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %i.i = load i64, ptr %2, align 8, !tbaa !107, !noalias !2290
  %i.j = inttoptr i64 %i.i to ptr
  store ptr null, ptr %2, align 8, !tbaa !107, !noalias !2290
  store ptr %i.j, ptr %3, align 8, !tbaa !103, !alias.scope !2290
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.l = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #27 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr @.str, ptr %4, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !109
  call void @_ZN4llvm7objdump11reportErrorENS_5ErrorENS_9StringRefES2_S2_(ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr %i.m, i64 %i.n, ptr nonnull @.str, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %2, align 8, !tbaa !428
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106, !noalias !2291 ; 2 uses
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %1, align 8, !tbaa !65, !noalias !2291
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81, !noalias !2291
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2291
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.590") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 %.sroa.0.0.copyload.i.i15) #27, !inline_history !28
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i17, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i17: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  %i.y = load i64, ptr %5, align 8, !tbaa !107, !noalias !2292
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %5, align 8, !tbaa !107, !noalias !2292
  store ptr %i.z, ptr %6, align 8, !tbaa !103, !alias.scope !2292
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.ab = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa) #27 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  store ptr @.str, ptr %7, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !109
  call void @_ZN4llvm7objdump11reportErrorENS_5ErrorENS_9StringRefES2_S2_(ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr %i.ac, i64 %i.ad, ptr nonnull @.str, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %5, align 8, !tbaa !428
  %.not = icmp eq i32 %i.p, 5
  br i1 %.not, label %bb.d, label %_ZN4llvm8ExpectedImED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !106, !noalias !2293
  %.sroa.0.0.copyload.i.i19 = load i64, ptr %0, align 8, !tbaa !65, !noalias !2293
  call void @_ZNK4llvm6object10ObjectFile14getSymbolValueENS0_11DataRefImplE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.157") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 %.sroa.0.0.copyload.i.i19) #27
  %i.ah = load i64, ptr %8, align 8, !tbaa !72
  br label %_ZN4llvm8ExpectedImED2Ev.exit

_ZN4llvm8ExpectedImED2Ev.exit:                    ; preds = %bb.d, %bb.c
  %i.ai = phi i64 [ 0, %bb.c ], [ %i.ah, %bb.d ]
  %.not14 = icmp eq i32 %i.af, 5
  br i1 %.not14, label %bb.e, label %_ZN4llvm8ExpectedImED2Ev.exit25

bb.e:                                             ; preds = %_ZN4llvm8ExpectedImED2Ev.exit
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !106, !noalias !2294
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %1, align 8, !tbaa !65, !noalias !2294
  call void @_ZNK4llvm6object10ObjectFile14getSymbolValueENS0_11DataRefImplE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.157") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 %.sroa.0.0.copyload.i.i21) #27
  %i.ak = load i64, ptr %9, align 8
  %i.al = icmp ult i64 %i.ai, %i.ak
  br label %_ZN4llvm8ExpectedImED2Ev.exit25

_ZN4llvm8ExpectedImED2Ev.exit25:                  ; preds = %bb.e, %_ZN4llvm8ExpectedImED2Ev.exit
  %i.am = phi i1 [ false, %_ZN4llvm8ExpectedImED2Ev.exit ], [ %i.al, %bb.e ]
  %i.an = load i8, ptr %i.v, align 8
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm8ExpectedImED2Ev.exit25
  %i.ap = load ptr, ptr %5, align 8, !tbaa !107   ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i27, label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i28

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i28: ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #27, !inline_history !30
  br label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit

_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit: ; preds = %_ZN4llvm8ExpectedImED2Ev.exit25, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.at = load i8, ptr %i.f, align 8
  %i.au = trunc i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit32

bb.g:                                             ; preds = %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit
  %i.av = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.av, null
  br i1 %.not.i.i30, label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit32, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31: ; preds = %bb.g
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #27, !inline_history !30
  br label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit32

_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit32: ; preds = %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEED2Ev.exit, %bb.g, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEEvT_SF_SF_T0_SG_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.sroa.0.i.i24.i.i = alloca %"class.llvm::object::BasicSymbolRef", align 8 ; 12 uses
  %.sroa.0.i.i.i.i = alloca %"class.llvm::object::BasicSymbolRef", align 8 ; 12 uses
  %.sroa.0.i.i.i.i.i = alloca %"class.llvm::object::BasicSymbolRef", align 8 ; 4 uses
  %.sroa.0.i.i = alloca %"class.llvm::object::BasicSymbolRef", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond82 = or i1 %i.a, %i.b
  br i1 %or.cond82, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit
  %.tr7888 = phi i64 [ %4, %.lr.ph ], [ %i.bz, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit ] ; 4 uses
  %.tr7787 = phi i64 [ %3, %.lr.ph ], [ %i.by, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit ] ; 4 uses
  %.tr7585 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit ] ; 13 uses
  %.tr83 = phi ptr [ %0, %.lr.ph ], [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit ] ; 8 uses
  %i.d = add nsw i64 %.tr7888, %.tr7787
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112SymbolSorterclERKN4llvm6object9SymbolRefES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %.tr7585, ptr noundef nonnull readonly align 8 dereferenceable(16) %.tr83)
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.tr83, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr83, ptr noundef nonnull align 8 dereferenceable(16) %.tr7585, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr7585, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.tr7787, %.tr7888
  %i.h = ptrtoint ptr %.tr7585 to i64             ; 4 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %.tr7787, 2                     ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %.tr83, i64 %i.i ; 2 uses
  %i.k = sub i64 %i.c, %i.h
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7585, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.n = lshr i64 %.016.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.n ; 2 uses
  %i.p = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112SymbolSorterclERKN4llvm6object9SymbolRefES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = xor i64 %i.n, -1
  %i.s = add nsw i64 %.016.i, %i.r
  %.sroa.011.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.n      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit, !llvm.loop !38

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr7585, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.h
  %i.v = ashr exact i64 %i.u, 4
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.w = sdiv i64 %.tr7888, 2                     ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.tr7585, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr83 to i64               ; 3 uses
  %i.z = sub i64 %i.h, %i.y
  %i.aa = ashr exact i64 %i.z, 4                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.016.i56 = phi i64 [ %.1.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %.sroa.011.015.i57 = phi ptr [ %.sroa.011.1.i60, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %i.ac = lshr i64 %.016.i56, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i57, i64 %i.ac ; 2 uses
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112SymbolSorterclERKN4llvm6object9SymbolRefES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.016.i56, %i.ag
  %.sroa.011.1.i60 = select i1 %i.ae, ptr %.sroa.011.015.i57, ptr %i.af ; 3 uses
  %.1.i61 = select i1 %i.ae, i64 %i.ac, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i61, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit, !llvm.loop !39

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre92 = ptrtoint ptr %.sroa.011.1.i60 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi93 = phi i64 [ %.pre92, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.011.0.lcssa.i54 = phi ptr [ %.sroa.011.1.i60, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.aj = sub i64 %.pre-phi93, %i.y
  %i.ak = ashr exact i64 %i.aj, 4
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit
  %.sroa.064.0 = phi ptr [ %i.j, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i54, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ], [ %i.x, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ] ; 4 uses
  %.047 = phi i64 [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ], [ %i.w, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_112SymbolSorterEEEET_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.064.0, %.tr7585
  br i1 %i.al, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq ptr %.sroa.0.0, %.tr7585
  br i1 %i.am, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm6object9SymbolRefESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.064.0 to i64        ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4                 ; 2 uses
  %i.ar = ptrtoint ptr %.tr7585 to i64            ; 2 uses
  %i.as = sub i64 %i.ar, %i.ao
  %i.at = ashr exact i64 %i.as, 4                 ; 3 uses
  %i.au = sub nsw i64 %i.aq, %i.at
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i.i.i, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.tr7585, %bb.h ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.sroa.064.0, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.aw, %.tr7585
end_hunk_0
