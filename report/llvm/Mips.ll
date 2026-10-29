Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Mips?download=true
inline.NumInlined: 1003
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE

declare void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !159, !range !160, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !162, !range !160, !noundef !105
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = tail call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.e, ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %i.h) #17 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !161
  store i8 0, ptr %i.a, align 8, !tbaa !159
  store i8 0, ptr %i.f, align 1, !tbaa !162
  br label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

_ZN5clang17DiagnosticBuilder4EmitEv.exit:         ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !33
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !110    ; 6 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp uge ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14848 ; 2 uses
  %i.u = icmp ule ptr %i.p, %i.t
  %or.cond.i.i.i.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 14976 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !113
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  store ptr %i.p, ptr %i.z, align 8, !tbaa !114
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.p) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 928) #18
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6driver5tools4mips21getMIPSTargetFeaturesERKNS0_6DriverERKN4llvm6TripleERKNS6_3opt7ArgListERSt6vectorINS6_9StringRefESaISF_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 13 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 8 uses
  %6 = alloca %"class.llvm::opt::Option", align 8 ; 11 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %10 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %11 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %12 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %14 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %16 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %20 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %21 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %22 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN5clang6driver5tools4mips16getMipsCPUAndABIERKN4llvm3opt7ArgListERKNS3_6TripleERNS3_9StringRefESC_(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.sroa.067.0.copyload = load ptr, ptr %5, align 8, !tbaa !27 ; 5 uses
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sroa.268.0.copyload = load i64, ptr %.sroa.268.0..sroa_idx, align 8, !tbaa !28
  switch i64 %.sroa.268.0.copyload, label %_ZN4llvmeqENS_9StringRefES0_.exit [
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i
    i64 2, label %bb.b
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i.i:          ; preds = %bb.a
  %i.a = load i16, ptr %.sroa.067.0.copyload, align 1
  %i.b = xor i16 %i.a, 13167
  %i.c = getelementptr i8, ptr %.sroa.067.0.copyload, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 50
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5clang6driver5tools4mips27getGnuCompatibleMipsABINameEN4llvm9StringRefE.exit.thread, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit17.i

_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit17.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i
  %i.j = load i16, ptr %.sroa.067.0.copyload, align 1
  %i.k = xor i16 %i.j, 13934
  %i.l = getelementptr i8, ptr %.sroa.067.0.copyload, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 52
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %bcmp.i.i.i.i13.fr.i = freeze i32 %i.r
  %.not.i.i14.i = icmp eq i32 %bcmp.i.i.i.i13.fr.i, 0
  br i1 %.not.i.i14.i, label %_ZN5clang6driver5tools4mips27getGnuCompatibleMipsABINameEN4llvm9StringRefE.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN5clang6driver5tools4mips27getGnuCompatibleMipsABINameEN4llvm9StringRefE.exit.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit17.i
  %.ph = phi ptr [ @.str.6, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i ], [ @.str.8, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit17.i ] ; 2 uses
  store ptr %.ph, ptr %5, align 8, !tbaa !27
  store i64 2, ptr %.sroa.268.0..sroa_idx, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5clang6driver5tools4mips27getGnuCompatibleMipsABINameEN4llvm9StringRefE.exit.thread
  %i.s = phi ptr [ %.ph, %_ZN5clang6driver5tools4mips27getGnuCompatibleMipsABINameEN4llvm9StringRefE.exit.thread ], [ %.sroa.067.0.copyload, %bb.a ]
  %i.t = load i16, ptr %i.s, align 1
  %i.u = icmp ne i16 %i.t, 13366
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit17.i, %bb.b
  %.0.i = phi i1 [ %i.w, %bb.b ], [ false, %bb.a ], [ false, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit17.i ] ; 4 uses
  %i.x = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_S5_S5_S5_S5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef 1748, i32 noundef 1398, i32 noundef 1749, i32 noundef 1399, i32 noundef 1750, i32 noundef 1400, i32 noundef 1751, i32 noundef 1401) ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !273
  %i.y = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1398) #17
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1399) #17
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1400) #17
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1401) #17
  %i.ac = and i1 %.0.i, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ad = phi i1 [ %.0.i, %bb.e ], [ %.0.i, %bb.d ], [ %.0.i, %bb.c ], [ %i.ac, %bb.f ]
  %i.ae = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1748) #17
  br i1 %i.ae, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1749) #17
  br i1 %i.af, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1750) #17
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 1751) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ai = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.0158 = phi i1 [ %i.ad, %bb.k ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %.0 = phi i1 [ %i.ai, %bb.k ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.aj = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef 2403, i32 noundef 2690) ; 2 uses
  %.not172 = icmp ne ptr %i.aj, null              ; 3 uses
  br i1 %.not172, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i32 2403) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = phi i1 [ true, %bb.l ], [ %i.ak, %bb.m ] ; 3 uses
  %.not172.not = xor i1 %.not172, true            ; 2 uses
  %or.cond3 = or i1 %i.al, %.not172.not           ; 2 uses
  %or.cond = and i1 %.0158, %or.cond3
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.am = load ptr, ptr %0, align 8, !tbaa !104, !noalias !274, !nonnull !105, !align !106
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.am, i32 0, i32 noundef 645) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(176) %2) #17
  %i.an = load ptr, ptr %8, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !55
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr %i.an, i64 %i.ap)
  %i.aq = load ptr, ptr %7, align 8, !tbaa !110   ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i187, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.as) ; 2 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !110
  br label %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit: ; preds = %bb.o, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.au = phi ptr [ %i.at, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.aq, %bb.o ] ; 2 uses
  %i.av = zext i1 %.not172 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ax = load i8, ptr %i.au, align 8, !tbaa !126
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  store i8 2, ptr %i.az, align 1, !tbaa !33
  %i.ba = load ptr, ptr %7, align 8, !tbaa !110   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.ba, align 8, !tbaa !126 ; 2 uses
  %i.bd = add i8 %i.bc, 1
  store i8 %i.bd, ptr %i.ba, align 8, !tbaa !126
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be
  store i64 %i.av, ptr %i.bf, align 8, !tbaa !28
  %i.bg = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %or.cond5.not = xor i1 %or.cond3, true
  %or.cond7 = and i1 %.0, %or.cond5.not
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %0, align 8, !tbaa !104, !noalias !275, !nonnull !105, !align !106
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr noundef nonnull align 8 dereferenceable(15256) %i.bl, i32 0, i32 noundef 508) #17
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %9) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.046.0.copyload = load ptr, ptr %4, align 8, !tbaa !27 ; 8 uses
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.247.0.copyload = load i64, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !28 ; 5 uses
  %cond = icmp eq i64 %.sroa.247.0.copyload, 5
  br i1 %cond, label %_ZN4llvmeqENS_9StringRefES0_.exit191, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

_ZN4llvmeqENS_9StringRefES0_.exit191:             ; preds = %bb.r
  %i.bm = load i32, ptr %.sroa.046.0.copyload, align 1
  %i.bn = xor i32 %i.bm, 808793705
  %i.bo = getelementptr i8, ptr %.sroa.046.0.copyload, i64 4
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = xor i32 %i.bq, 48
  %i.bs = or i32 %i.bn, %i.br
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvmeqENS_9StringRefES0_.exit191.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit195

_ZN4llvmeqENS_9StringRefES0_.exit195:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit191
  %i.bw = load i32, ptr %.sroa.046.0.copyload, align 1
  %i.bx = xor i32 %i.bw, 808728169
  %i.by = getelementptr i8, ptr %.sroa.046.0.copyload, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = xor i32 %i.ca, 48
  %i.cc = or i32 %i.bx, %i.cb
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvmeqENS_9StringRefES0_.exit191.thread, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

_ZN4llvmeqENS_9StringRefES0_.exit191.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit195, %_ZN4llvmeqENS_9StringRefES0_.exit191
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !278 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !279
  %.not.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit191.thread
  store ptr @.str.27, ptr %i.ch, align 8, !tbaa !27
  %.sroa.5892.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 4, ptr %.sroa.5892.0..sroa_idx, align 8, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

bb.t:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit191.thread
  %i.cl = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775792
  br i1 %i.cp, label %bb.u, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #19
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.cq = ashr exact i64 %i.co, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 576460752303423487)
  %i.cu = select i1 %i.cs, i64 576460752303423487, i64 %i.ct ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 4
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #20 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co ; 2 uses
  store ptr @.str.27, ptr %i.cx, align 8, !tbaa !27
  %.sroa.5892.0..sroa_idx893 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 4, ptr %.sroa.5892.0..sroa_idx893, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %i.cw, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.cl, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !281, !alias.scope !282
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.ch
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !170

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.db = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dd) #18
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.cw, ptr %3, align 8, !tbaa !280
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !278
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.de, ptr %i.ci, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.r, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.s, %_ZN4llvmeqENS_9StringRefES0_.exit195
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !278 ; 13 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !279
  %.not.i.i210 = icmp eq ptr %i.dg, %i.di         ; 2 uses
  br i1 %i.al, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit
  br i1 %.not.i.i210, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @.str.28, ptr %i.dg, align 8, !tbaa !27
  %.sroa.5887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 11, ptr %.sroa.5887.0..sroa_idx, align 8, !tbaa !28
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit209

bb.y:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 3 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775792
  br i1 %i.do, label %bb.z, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i197

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #19
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i197: ; preds = %bb.y
  %i.dp = ashr exact i64 %i.dn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i198 = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i.i198, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 576460752303423487)
  %i.dt = select i1 %i.dr, i64 576460752303423487, i64 %i.ds ; 3 uses
  %.not.i.i.i.i199 = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i199)
  %i.du = shl nuw nsw i64 %i.dt, 4
  %i.dv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #20 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store ptr @.str.28, ptr %i.dw, align 8, !tbaa !27
  %.sroa.5887.0..sroa_idx888 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 11, ptr %.sroa.5887.0..sroa_idx888, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i200 = icmp eq ptr %i.dk, %i.dg
  br i1 %.not10.i.i.i.i.i.i200, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i205, label %.lr.ph.i.i.i.i.i.i201

.lr.ph.i.i.i.i.i.i201:                            ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i197, %.lr.ph.i.i.i.i.i.i201
  %.012.i.i.i.i.i.i202 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i201 ], [ %i.dv, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i197 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5clang6driver5tools4mips21getMIPSTargetFeaturesERKNS0_6DriverERKN4llvm6TripleERKNS6_3opt7ArgListERSt6vectorINS6_9StringRefESaISF_EE:bb.a

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i215, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i211
  %.0.lcssa.i.i.i.i.i.i220 = phi ptr [ %i.eq, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i211 ], [ %i.et, %.lr.ph.i.i.i.i.i.i215 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i220, i64 16
  %.not.i23.i.i.i221 = icmp eq ptr %i.ef, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i222, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i219
  %i.ev = load ptr, ptr %i.dh, align 8, !tbaa !279
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ew, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ex) #18
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i222

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i222: ; preds = %bb.af, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i219
  store ptr %i.eq, ptr %3, align 8, !tbaa !280
  store ptr %i.eu, ptr %i.df, align 8, !tbaa !278
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.ey, ptr %i.dh, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit209

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit209: ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i222, %bb.ac, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i208, %bb.x
  %i.ez = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef 2648, i32 noundef 2816) ; 2 uses
  %.not173 = icmp eq ptr %i.ez, null
  br i1 %.not173, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit209
  %i.fa = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i32 2816) #17
  br i1 %i.fa, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !278 ; 7 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !279
  %.not.i.i224 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not.i.i224, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr @.str.30, ptr %i.fc, align 8, !tbaa !27
  %.sroa.5876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 11, ptr %.sroa.5876.0..sroa_idx, align 8, !tbaa !28
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237

bb.aj:                                            ; preds = %bb.ah
  %i.fg = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.fh = ptrtoint ptr %i.fc to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 3 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775792
  br i1 %i.fk, label %bb.ak, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #19
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225: ; preds = %bb.aj
  %i.fl = ashr exact i64 %i.fj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i226 = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i.i226, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 576460752303423487)
  %i.fp = select i1 %i.fn, i64 576460752303423487, i64 %i.fo ; 3 uses
  %.not.i.i.i.i227 = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i227)
  %i.fq = shl nuw nsw i64 %i.fp, 4
  %i.fr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #20 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fj ; 2 uses
  store ptr @.str.30, ptr %i.fs, align 8, !tbaa !27
  %.sroa.5876.0..sroa_idx877 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 11, ptr %.sroa.5876.0..sroa_idx877, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i228 = icmp eq ptr %i.fg, %i.fc
  br i1 %.not10.i.i.i.i.i.i228, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i233, label %.lr.ph.i.i.i.i.i.i229

.lr.ph.i.i.i.i.i.i229:                            ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225, %.lr.ph.i.i.i.i.i.i229
  %.012.i.i.i.i.i.i230 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i229 ], [ %i.fr, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225 ] ; 2 uses
  %.0911.i.i.i.i.i.i231 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i229 ], [ %i.fg, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i230, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i231, i64 16, i1 false), !tbaa.struct !281, !alias.scope !285
  %i.ft = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i231, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i230, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i232 = icmp eq ptr %i.ft, %i.fc
  br i1 %.not.i.i.i.i.i.i232, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i233, label %.lr.ph.i.i.i.i.i.i229, !llvm.loop !170

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i233: ; preds = %.lr.ph.i.i.i.i.i.i229, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225
  %.0.lcssa.i.i.i.i.i.i234 = phi ptr [ %i.fr, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i225 ], [ %i.fu, %.lr.ph.i.i.i.i.i.i229 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i234, i64 16
  %.not.i23.i.i.i235 = icmp eq ptr %i.fg, null
  br i1 %.not.i23.i.i.i235, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i236, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i233
  %i.fw = load ptr, ptr %i.fd, align 8, !tbaa !279
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fy) #18
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i236

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i236: ; preds = %bb.al, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i233
  store ptr %i.fr, ptr %3, align 8, !tbaa !280
  store ptr %i.fv, ptr %i.fb, align 8, !tbaa !278
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fz, ptr %i.fd, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237

bb.am:                                            ; preds = %bb.ag
  br i1 %i.al, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !278 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !279
  %.not.i.i238 = icmp eq ptr %i.gb, %i.gd
  br i1 %.not.i.i238, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr @.str.31, ptr %i.gb, align 8, !tbaa !27
  %.sroa.5871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 11, ptr %.sroa.5871.0..sroa_idx, align 8, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store ptr %i.ge, ptr %i.ga, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237

bb.ap:                                            ; preds = %bb.an
  %i.gf = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.gg = ptrtoint ptr %i.gb to i64
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775792
  br i1 %i.gj, label %bb.aq, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #19
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239: ; preds = %bb.ap
  %i.gk = ashr exact i64 %i.gi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i240 = call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i240, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 576460752303423487)
  %i.go = select i1 %i.gm, i64 576460752303423487, i64 %i.gn ; 3 uses
  %.not.i.i.i.i241 = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i.i241)
  %i.gp = shl nuw nsw i64 %i.go, 4
  %i.gq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #20 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store ptr @.str.31, ptr %i.gr, align 8, !tbaa !27
  %.sroa.5871.0..sroa_idx872 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 11, ptr %.sroa.5871.0..sroa_idx872, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i242 = icmp eq ptr %i.gf, %i.gb
  br i1 %.not10.i.i.i.i.i.i242, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247, label %.lr.ph.i.i.i.i.i.i243

.lr.ph.i.i.i.i.i.i243:                            ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239, %.lr.ph.i.i.i.i.i.i243
  %.012.i.i.i.i.i.i244 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i243 ], [ %i.gq, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ] ; 2 uses
  %.0911.i.i.i.i.i.i245 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i243 ], [ %i.gf, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i244, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i245, i64 16, i1 false), !tbaa.struct !281, !alias.scope !286
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i245, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i244, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i246 = icmp eq ptr %i.gs, %i.gb
  br i1 %.not.i.i.i.i.i.i246, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247, label %.lr.ph.i.i.i.i.i.i243, !llvm.loop !170

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247: ; preds = %.lr.ph.i.i.i.i.i.i243, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239
  %.0.lcssa.i.i.i.i.i.i248 = phi ptr [ %i.gq, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i243 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i248, i64 16
  %.not.i23.i.i.i249 = icmp eq ptr %i.gf, null
  br i1 %.not.i23.i.i.i249, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247
  %i.gv = load ptr, ptr %i.gc, align 8, !tbaa !279
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gx) #18
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250: ; preds = %bb.ar, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247
  store ptr %i.gq, ptr %3, align 8, !tbaa !280
  store ptr %i.gu, ptr %i.ga, align 8, !tbaa !278
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.gy, ptr %i.gc, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237

bb.as:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.gz = load ptr, ptr %0, align 8, !tbaa !104, !noalias !287, !nonnull !105, !align !106
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr noundef nonnull align 8 dereferenceable(15256) %i.gz, i32 0, i32 noundef 636) #17
  %i.ha = load ptr, ptr %10, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i252, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i253, label %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit254

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i253: ; preds = %bb.as
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !111
  %i.hd = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.hc) ; 2 uses
  store ptr %i.hd, ptr %10, align 8, !tbaa !110
  br label %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit254

_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit254: ; preds = %bb.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i253
  %i.he = phi ptr [ %i.hd, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i253 ], [ %i.ha, %bb.as ] ; 2 uses
  %i.hf = zext i1 %.not172.not to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  %i.hh = load i8, ptr %i.he, align 8, !tbaa !126
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  store i8 2, ptr %i.hj, align 1, !tbaa !33
  %i.hk = load ptr, ptr %10, align 8, !tbaa !110  ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i8, ptr %i.hk, align 8, !tbaa !126 ; 2 uses
  %i.hn = add i8 %i.hm, 1
  store i8 %i.hn, ptr %i.hk, align 8, !tbaa !126
  %i.ho = zext i8 %i.hm to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.ho
  store i64 %i.hf, ptr %i.hp, align 8, !tbaa !28
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237: ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250, %bb.ao, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i236, %bb.ai, %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit254, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit209
  %i.hq = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef 3172, i32 noundef 2956) ; 2 uses
  %.not174 = icmp eq ptr %i.hq, null
  br i1 %.not174, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237
  %i.hr = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i32 3172) #17
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !278 ; 13 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !279
  %.not.i.i255 = icmp eq ptr %i.ht, %i.hv         ; 2 uses
  br i1 %i.hr, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i.i255, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr @.str.32, ptr %i.ht, align 8, !tbaa !27
  %.sroa.5865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i64 5, ptr %.sroa.5865.0..sroa_idx, align 8, !tbaa !28
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %i.hw, ptr %i.hs, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268

bb.aw:                                            ; preds = %bb.au
  %i.hx = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775792
  br i1 %i.ib, label %bb.ax, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #19
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256: ; preds = %bb.aw
  %i.ic = ashr exact i64 %i.ia, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i257 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i.i257, %i.ic ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 576460752303423487)
  %i.ig = select i1 %i.ie, i64 576460752303423487, i64 %i.if ; 3 uses
  %.not.i.i.i.i258 = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i.i.i258)
  %i.ih = shl nuw nsw i64 %i.ig, 4
  %i.ii = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #20 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia ; 2 uses
  store ptr @.str.32, ptr %i.ij, align 8, !tbaa !27
  %.sroa.5865.0..sroa_idx866 = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 5, ptr %.sroa.5865.0..sroa_idx866, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i259 = icmp eq ptr %i.hx, %i.ht
  br i1 %.not10.i.i.i.i.i.i259, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i264, label %.lr.ph.i.i.i.i.i.i260

.lr.ph.i.i.i.i.i.i260:                            ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256, %.lr.ph.i.i.i.i.i.i260
  %.012.i.i.i.i.i.i261 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i260 ], [ %i.ii, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256 ] ; 2 uses
  %.0911.i.i.i.i.i.i262 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i260 ], [ %i.hx, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i261, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i262, i64 16, i1 false), !tbaa.struct !281, !alias.scope !288
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i262, i64 16 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i261, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i263 = icmp eq ptr %i.ik, %i.ht
  br i1 %.not.i.i.i.i.i.i263, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i264, label %.lr.ph.i.i.i.i.i.i260, !llvm.loop !170

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i264: ; preds = %.lr.ph.i.i.i.i.i.i260, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256
  %.0.lcssa.i.i.i.i.i.i265 = phi ptr [ %i.ii, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i256 ], [ %i.il, %.lr.ph.i.i.i.i.i.i260 ]
  %i.im = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i265, i64 16
  %.not.i23.i.i.i266 = icmp eq ptr %i.hx, null
  br i1 %.not.i23.i.i.i266, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i267, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i264
  %i.in = load ptr, ptr %i.hu, align 8, !tbaa !279
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = sub i64 %i.io, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ip) #18
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i267

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i267: ; preds = %bb.ay, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i264
  store ptr %i.ii, ptr %3, align 8, !tbaa !280
  store ptr %i.im, ptr %i.hs, align 8, !tbaa !278
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.iq, ptr %i.hu, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268

bb.az:                                            ; preds = %bb.at
  br i1 %.not.i.i255, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr @.str.33, ptr %i.ht, align 8, !tbaa !27
  %.sroa.5860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i64 5, ptr %.sroa.5860.0..sroa_idx, align 8, !tbaa !28
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %i.ir, ptr %i.hs, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268

bb.bb:                                            ; preds = %bb.az
  %i.is = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.it = ptrtoint ptr %i.ht to i64
  %i.iu = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iv = sub i64 %i.it, %i.iu                    ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775792
  br i1 %i.iw, label %bb.bc, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #19
  unreachable

_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270: ; preds = %bb.bb
  %i.ix = ashr exact i64 %i.iv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i271 = call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  %i.iy = add nsw i64 %.sroa.speculated.i.i.i.i271, %i.ix ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ix
  %i.ja = call i64 @llvm.umin.i64(i64 %i.iy, i64 576460752303423487)
  %i.jb = select i1 %i.iz, i64 576460752303423487, i64 %i.ja ; 3 uses
  %.not.i.i.i.i272 = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i272)
  %i.jc = shl nuw nsw i64 %i.jb, 4
  %i.jd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #20 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.iv ; 2 uses
  store ptr @.str.33, ptr %i.je, align 8, !tbaa !27
  %.sroa.5860.0..sroa_idx861 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 5, ptr %.sroa.5860.0..sroa_idx861, align 8, !tbaa !28
  %.not10.i.i.i.i.i.i273 = icmp eq ptr %i.is, %i.ht
  br i1 %.not10.i.i.i.i.i.i273, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i278, label %.lr.ph.i.i.i.i.i.i274

.lr.ph.i.i.i.i.i.i274:                            ; preds = %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270, %.lr.ph.i.i.i.i.i.i274
  %.012.i.i.i.i.i.i275 = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i.i274 ], [ %i.jd, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270 ] ; 2 uses
  %.0911.i.i.i.i.i.i276 = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i.i274 ], [ %i.is, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i275, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i276, i64 16, i1 false), !tbaa.struct !281, !alias.scope !289
  %i.jf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i276, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i275, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i277 = icmp eq ptr %i.jf, %i.ht
  br i1 %.not.i.i.i.i.i.i277, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i278, label %.lr.ph.i.i.i.i.i.i274, !llvm.loop !170

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i278: ; preds = %.lr.ph.i.i.i.i.i.i274, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270
  %.0.lcssa.i.i.i.i.i.i279 = phi ptr [ %i.jd, %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i270 ], [ %i.jg, %.lr.ph.i.i.i.i.i.i274 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i279, i64 16
  %.not.i23.i.i.i280 = icmp eq ptr %i.is, null
  br i1 %.not.i23.i.i.i280, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i281, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i278
  %i.ji = load ptr, ptr %i.hu, align 8, !tbaa !279
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.jk) #18
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i281

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i281: ; preds = %bb.bd, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i278
  store ptr %i.jd, ptr %3, align 8, !tbaa !280
  store ptr %i.jh, ptr %i.hs, align 8, !tbaa !278
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jb
  store ptr %i.jl, ptr %i.hu, align 8, !tbaa !279
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268

_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268: ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i281, %bb.ba, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i267, %bb.av, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit237
  %i.jm = call noundef i32 @_ZN5clang6driver5tools4mips15getMipsFloatABIERKNS0_6DriverERKN4llvm3opt7ArgListERKNS6_6TripleE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(56) %1) ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.be, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit296

bb.be:                                            ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit268
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !278 ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !279
  %.not.i.i283 = icmp eq ptr %i.jp, %i.jr
  br i1 %.not.i.i283, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr @.str.34, ptr %i.jp, align 8, !tbaa !27
  %.sroa.5855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 11, ptr %.sroa.5855.0..sroa_idx, align 8, !tbaa !28
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store ptr %i.js, ptr %i.jo, align 8, !tbaa !278
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit296

bb.bg:                                            ; preds = %bb.be
  %i.jt = load ptr, ptr %3, align 8, !tbaa !280   ; 5 uses
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = ptrtoint ptr %i.jt to i64               ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 3 uses
  %i.jx = icmp eq i64 %i.jw, 9223372036854775792
  br i1 %i.jx, label %bb.bh, label %_ZNKSt6vectorIN4llvm9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i284

end_hunk_1
