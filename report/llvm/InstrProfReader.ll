Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProfReader?download=true
inline.NumInlined: 9738
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN4llvm22IndexedInstrProfReader9getSymtabEv:bb.a
  %i.ce = icmp eq ptr %.pr25, null
  br i1 %i.ce, label %_ZN4llvm5ErrorD2Ev.exit17, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i15
  %i.cf = load ptr, ptr %.pr25, align 8, !tbaa !86
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %.pr25) #26, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit17

_ZN4llvm5ErrorD2Ev.exit17:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i15, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !238 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !238
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm15InstrProfSymtabESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit17
  call void @_ZN4llvm15InstrProfSymtabD2Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(369) %i.ci) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 376) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !238
  br label %_ZNSt10unique_ptrIN4llvm15InstrProfSymtabESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm15InstrProfSymtabESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit17, %_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit.i.i.i.i, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit.i.i.i.i ], [ %i.c, %_ZN4llvm5ErrorD2Ev.exit17 ]
  ret ptr %.0
}

declare void @_ZN4llvm15InstrProfSymtab36initVTableNamesFromCompressedStringsENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(369), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14InstrProfError4takeB5cxx11ENS_5ErrorE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.302") align 8 %0, ptr nofree noundef align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %class.anon.563, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !91
  store i8 0, ptr %i.c, align 8, !tbaa !93
  %i.e = load ptr, ptr %1, align 8, !tbaa !96
  store ptr null, ptr %1, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.b, ptr %5, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !464
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.e, ptr %3, align 8, !tbaa !96
  call void @_ZN4llvm12handleErrorsIJZNS_14InstrProfError4takeB5cxx11ENS_5ErrorEEUlRKS1_E_EEES2_S2_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.g = load ptr, ptr %3, align 8, !tbaa !96     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #26, !inline_history !2113
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.l = load i32, ptr %i.b, align 4, !tbaa !191
  store i32 %i.l, ptr %0, align 8, !tbaa !2115
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !124
  %i.o = load ptr, ptr %4, align 8, !tbaa !92     ; 2 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !91   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.p, ptr %i.a, align 8, !tbaa !192
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !92
  %i.s = load i64, ptr %i.a, align 8, !tbaa !192
  store i64 %i.s, ptr %i.n, align 8, !tbaa !93
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %_ZN4llvm5ErrorD2Ev.exit
  %i.t = phi ptr [ %i.r, %bb.b ], [ %i.n, %_ZN4llvm5ErrorD2Ev.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.o, align 1, !tbaa !93
  store i8 %i.u, ptr %i.t, align 1, !tbaa !93
  br label %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.v = load i64, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !91
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.z = load ptr, ptr %4, align 8, !tbaa !92     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !93
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_Pm(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.304") align 8 %0, ptr noundef nonnull align 8 dereferenceable(508) %1, ptr %2, i64 %3, i64 noundef %4, ptr noundef byval(%"class.llvm::StringRef") align 8 %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %14 = alloca %"class.llvm::ArrayRef.244", align 8 ; 7 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %17 = alloca %class.anon.307, align 8           ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  %i.f = load ptr, ptr %15, align 8, !tbaa !96    ; 8 uses
  %.not68 = icmp eq ptr %i.f, null
  br i1 %.not68, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr null, ptr %15, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %1, ptr %17, align 8, !tbaa !468
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %5, ptr %i.g, align 8, !tbaa !2139
  %i.h = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %14, ptr %i.h, align 8, !tbaa !2140
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !86, !noalias !2141
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2141
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #26, !noalias !2141, !inline_history !2118
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %16, align 8, !tbaa !96, !alias.scope !2141
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !470, !noalias !2141 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !470, !noalias !2141 ; 2 uses
  %.not2627.i = icmp eq ptr %i.n, %i.p
  br i1 %.not2627.i, label %_ZN4llvm5ErrorD2Ev.exit.sink.split, label %_ZN4llvm5ErrorD2Ev.exit7.i

_ZN4llvm5ErrorD2Ev.exit7.i:                       ; preds = %bb.c, %_ZN4llvm5ErrorD2Ev.exit9.i
  %i.q = phi ptr [ %i.s, %_ZN4llvm5ErrorD2Ev.exit9.i ], [ null, %bb.c ]
  %.sroa.016.028.i = phi ptr [ %i.ah, %_ZN4llvm5ErrorD2Ev.exit9.i ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !2141
  store ptr %i.q, ptr %10, align 8, !tbaa !96, !noalias !2141
  %i.r = load i64, ptr %.sroa.016.028.i, align 8, !tbaa !80, !noalias !2141
  store i64 %i.r, ptr %12, align 8, !tbaa !80, !noalias !2141
  store ptr null, ptr %.sroa.016.028.i, align 8, !tbaa !80, !noalias !2141
  call fastcc void @"_ZN4llvm15handleErrorImplIZNS_22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS2_PmE3$_0JEEENS_5ErrorESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS7_EEOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %11, ptr nofree noundef align 8 dereferenceable(8) %12, ptr noundef nonnull readonly align 8 dereferenceable(24) %17), !noalias !2141
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11), !noalias !2141
  %i.s = load ptr, ptr %9, align 8, !tbaa !96, !noalias !2141 ; 2 uses
  store ptr %i.s, ptr %16, align 8, !tbaa !96, !alias.scope !2141
  store ptr null, ptr %9, align 8, !tbaa !96, !noalias !2141
  %i.t = load ptr, ptr %11, align 8, !tbaa !96, !noalias !2141 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN4llvm5ErrorD2Ev.exit8.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !86, !noalias !2141
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2141
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #26, !noalias !2141, !inline_history !2119
  br label %_ZN4llvm5ErrorD2Ev.exit8.i

_ZN4llvm5ErrorD2Ev.exit8.i:                       ; preds = %bb.d, %_ZN4llvm5ErrorD2Ev.exit7.i
  %i.y = load ptr, ptr %12, align 8, !tbaa !80, !noalias !2141 ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit8.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86, !noalias !2141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !2141
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #26, !noalias !2141, !inline_history !2120
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %_ZN4llvm5ErrorD2Ev.exit8.i
  %i.ac = load ptr, ptr %10, align 8, !tbaa !96, !noalias !2141 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvm5ErrorD2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !86, !noalias !2141
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !2141
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #26, !noalias !2141, !inline_history !2119
  br label %_ZN4llvm5ErrorD2Ev.exit9.i

_ZN4llvm5ErrorD2Ev.exit9.i:                       ; preds = %bb.e, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !2141
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %i.ah, %i.p
  br i1 %.not26.i, label %_ZN4llvm5ErrorD2Ev.exit.sink.split, label %_ZN4llvm5ErrorD2Ev.exit7.i

bb.f:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.f to i64
  store i64 %i.ai, ptr %13, align 8, !tbaa !80, !noalias !2141
  call fastcc void @"_ZN4llvm15handleErrorImplIZNS_22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS2_PmE3$_0JEEENS_5ErrorESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS7_EEOT_DpOT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %16, ptr nofree noundef align 8 dereferenceable(8) %13, ptr noundef nonnull readonly align 8 dereferenceable(24) %17)
  %i.aj = load ptr, ptr %13, align 8, !tbaa !80, !noalias !2141 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aj, null
  br i1 %.not.i10.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm5ErrorD2Ev.exit.sink.split

_ZN4llvm5ErrorD2Ev.exit.sink.split:               ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i, %bb.c, %bb.f
  %.sink115 = phi ptr [ %i.aj, %bb.f ], [ %i.f, %bb.c ], [ %i.f, %_ZN4llvm5ErrorD2Ev.exit9.i ] ; 2 uses
  %i.ak = load ptr, ptr %.sink115, align 8, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.sink115) #26
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm5ErrorD2Ev.exit.sink.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.an = load ptr, ptr %16, align 8, !tbaa !96   ; 2 uses
  %.not69 = icmp eq ptr %i.an, null
  br i1 %.not69, label %_ZN4llvm5ErrorD2Ev.exit31, label %_ZN4llvm5ErrorD2Ev.exit30

_ZN4llvm5ErrorD2Ev.exit30:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !80, !alias.scope !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.p

_ZN4llvm5ErrorD2Ev.exit31:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit31, %bb.a
  %i.ar = load ptr, ptr %14, align 8, !tbaa !472  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !473 ; 2 uses
  %.idx = mul nuw nsw i64 %i.at, 136
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx ; 2 uses
  %.not74 = icmp eq i64 %i.at, 0
  br i1 %.not74, label %._crit_edge.i.i35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.av = icmp eq ptr %6, null                    ; 2 uses
  br i1 %i.av, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.077.us = phi ptr [ %i.bb, %bb.h ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.02276.us = phi i1 [ %spec.select, %bb.h ], [ false, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.077.us, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !370 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %4
  br i1 %i.ay, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.az = xor i64 %i.ax, %4
  %i.ba = and i64 %i.az, 1152921504606846976
  %.not70.us = icmp eq i64 %i.ba, 0
  %spec.select = select i1 %.not70.us, i1 true, i1 %.02276.us ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.077.us, i64 136 ; 2 uses
  %.not.us = icmp eq ptr %i.bb, %i.au
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit"
  %.077 = phi ptr [ %i.bq, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit" ], [ %i.ar, %.lr.ph ] ; 5 uses
  %.02276 = phi i1 [ %.2.ph, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit" ], [ false, %.lr.ph ]
  %.05675 = phi i64 [ %.1.ph, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit" ], [ 0, %.lr.ph ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.077, i64 128
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !370 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %.split.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.bf = xor i64 %i.bd, %4
  %i.bg = and i64 %i.bf, 1152921504606846976
  %.not70 = icmp eq i64 %i.bg, 0
  br i1 %.not70, label %bb.j, label %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit"

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %.077, align 8, !tbaa !260 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !262 ; 2 uses
  %.not7.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not7.i, label %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.0149.i = phi ptr [ %i.bo, %bb.m ], [ %i.bh, %bb.j ] ; 2 uses
  %.0158.i = phi i64 [ %.116.ph.i, %bb.m ], [ 0, %bb.j ] ; 3 uses
  %i.bk = load i64, ptr %.0149.i, align 8, !tbaa !192 ; 3 uses
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bm = xor i64 %i.bk, -1
  %.not21.i = icmp ult i64 %.0158.i, %i.bm
  br i1 %.not21.i, label %bb.l, label %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit.loopexit"

bb.l:                                             ; preds = %bb.k
  %i.bn = add i64 %i.bk, %.0158.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.116.ph.i = phi i64 [ %.0158.i, %.lr.ph.i ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0149.i, i64 8 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bo, %i.bj
  br i1 %.not.i32, label %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit.loopexit", label %.lr.ph.i

"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit.loopexit": ; preds = %bb.m, %bb.k
  %spec.select.i.ph = phi i64 [ -1, %bb.k ], [ %.116.ph.i, %bb.m ]
  %i.bp = call i64 @llvm.umax.i64(i64 %.05675, i64 %spec.select.i.ph)
  br label %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit"

"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit": ; preds = %bb.j, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit.loopexit", %bb.i
  %.1.ph = phi i64 [ %.05675, %bb.i ], [ %.05675, %bb.j ], [ %i.bp, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit.loopexit" ] ; 2 uses
  %.2.ph = phi i1 [ %.02276, %bb.i ], [ true, %bb.j ], [ true, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit.loopexit" ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.077, i64 136 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.au
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.077.us, %.lr.ph.split.us ], [ %.077, %.lr.ph.split ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = and i8 %i.bs, -2
  store i8 %i.bt, ptr %i.br, align 8
  call void @_ZN4llvm15InstrProfRecordC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(136) %.us-phi)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = getelementptr inbounds nuw i8, ptr %.us-phi, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  br label %bb.p

._crit_edge:                                      ; preds = %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit", %bb.h
  %.056.lcssa = phi i64 [ 0, %bb.h ], [ %.1.ph, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit" ]
  %.022.lcssa = phi i1 [ %spec.select, %bb.h ], [ %.2.ph, %"_ZZN4llvm22IndexedInstrProfReader18getInstrProfRecordENS_9StringRefEmS1_PmENK3$_1clENS_8ArrayRefImEE.exit" ]
  br i1 %.022.lcssa, label %bb.n, label %._crit_edge.i.i35

bb.n:                                             ; preds = %._crit_edge
  br i1 %i.av, label %._crit_edge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.056.lcssa, ptr %6, align 8, !tbaa !192
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.bw, ptr %18, align 8, !tbaa !124
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !91
  store i8 0, ptr %i.bw, align 8, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 15, ptr %i.by, align 8, !tbaa !123, !noalias !2143
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %18) #26, !noalias !2143
  %i.ca = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !2144
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 4, ptr %i.cb, align 8, !tbaa !102, !noalias !2144
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.cc, align 1, !tbaa !103, !noalias !2144
  store ptr %18, ptr %8, align 8, !tbaa !93, !noalias !2144
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm14InstrProfErrorE, i64 16), ptr %i.ca, align 8, !tbaa !86, !noalias !2144
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 15, ptr %i.cd, align 8, !tbaa !108, !noalias !2144
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ce, ptr noundef nonnull align 8 dereferenceable(34) %8) #26, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !2144
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = or i8 %i.cg, 1
  store i8 %i.ch, ptr %i.cf, align 8
  store ptr %i.ca, ptr %0, align 8, !tbaa !80, !alias.scope !2145
  %i.ci = load ptr, ptr %18, align 8, !tbaa !92   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.ck = load i64, ptr %i.bw, align 8, !tbaa !93
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.p

._crit_edge.i.i35:                                ; preds = %bb.g, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.cm, ptr %19, align 8, !tbaa !124
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !91
  store i8 0, ptr %i.cm, align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.co, align 8, !tbaa !123, !noalias !2146
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %19) #26, !noalias !2146
  %i.cq = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2147 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !2147
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 4, ptr %i.cr, align 8, !tbaa !102, !noalias !2147
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.cs, align 1, !tbaa !103, !noalias !2147
  store ptr %19, ptr %7, align 8, !tbaa !93, !noalias !2147
end_hunk_0
