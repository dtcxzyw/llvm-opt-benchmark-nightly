Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-compiler?download=true
inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl42InitializeCompilationUnitForSingleFunctionEPNS2_22CompilationUnitBuilderEi:bb.a
  %.not = icmp eq i8 %i.i, %i.k
  %or.cond = or i1 %i.au, %.not
  br i1 %or.cond, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i.i17 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %1, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 %i.k, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  store i8 0, ptr %i.bb, align 1
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.aw, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

bb.i:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.j, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18: ; preds = %bb.i
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i19, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i20 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i20)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #31 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh ; 3 uses
  store i32 %1, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i8 %i.k, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  store i8 0, ptr %i.bs, align 1
  %.not10.i.i.i.i.i.i21 = icmp eq ptr %i.be, %i.ax
  br i1 %.not10.i.i.i.i.i.i21, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26, label %.lr.ph.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i22:                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18, %.lr.ph.i.i.i.i.i.i22
  %.012.i.i.i.i.i.i23 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i22 ], [ %i.bp, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18 ] ; 2 uses
  %.0911.i.i.i.i.i.i24 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i22 ], [ %i.be, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i24, align 4, !alias.scope !328, !noalias !327
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i23, align 4, !alias.scope !327, !noalias !328
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i24, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i23, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i25 = icmp eq ptr %i.bu, %i.ax
  br i1 %.not.i.i.i.i.i.i25, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26, label %.lr.ph.i.i.i.i.i.i22, !llvm.loop !6

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26: ; preds = %.lr.ph.i.i.i.i.i.i22, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18
  %.0.lcssa.i.i.i.i.i.i27 = phi ptr [ %i.bp, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i22 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i27, i64 8
  %.not.i25.i.i.i28 = icmp eq ptr %i.be, null
  br i1 %.not.i25.i.i.i28, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26
  %i.bx = load ptr, ptr %i.ay, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bz) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29: ; preds = %bb.k, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26
  store ptr %i.bp, ptr %i.av, align 8
  store ptr %i.bw, ptr %i.aw, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.ca, ptr %i.ay, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29, %bb.h, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm23AsyncStreamingProcessor15OnFinishedChunkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 6 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  %or.cond.i.i = select i1 %i.f, i1 %i.k, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.val.i.i = load ptr, ptr %.val, align 8
  %i.l = getelementptr i8, ptr %.val.i.i, i64 280
  %.val.val.i.i = load ptr, ptr %i.l, align 8
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22CommitCompilationUnitsENS_4base6VectorINS1_19WasmCompilationUnitEEES7_(ptr noundef nonnull align 8 dereferenceable(416) %.val.val.i.i, ptr %i.c, i64 %i.p, ptr %i.h, i64 %i.t)
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  store ptr %i.u, ptr %i.d, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %i.w = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.i, align 8
  %.not.i.i1.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i1.i.i.i, label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit

_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit: ; preds = %bb.d, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm23AsyncStreamingProcessor16OnFinishedStreamENS_4base11OwnedVectorIKhEEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.1644", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::wasm::Result.1205", align 16 ; 12 uses
  %5 = alloca %"class.v8::internal::wasm::WasmDetectedFeatures", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::wasm::WasmError", align 8 ; 6 uses
  %7 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.1206", align 16 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.v8::internal::SaveAndSwitchContext", align 8 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.553", align 16 ; 3 uses
  %11 = alloca %"class.v8::base::OwnedVector.1041", align 8 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.66", align 16 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.66", align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN2v88internal4wasm13ModuleDecoder14FinishDecodingEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::wasm::Result.1205") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i32, ptr %i.e, align 16
  %.not.a = icmp ne i32 %i.f, -1
  %narrow = or i1 %2, %.not.a                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not62.a = icmp eq ptr %i.h, null
  br i1 %.not62.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #29
  %i.l = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr null, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #29, !inline_history !30
  br label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load atomic i8, ptr %i.p seq_cst, align 8, !range !57, !noundef !58
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, %i.t
  store i64 %i.y, ptr %i.w, align 8
  %14 = select i1 %i.r, i1 true, i1 %narrow
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.a
  %.2 = phi i1 [ %14, %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %narrow, %bb.a ]
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store ptr %i.z, ptr %i.ae, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 %i.ab, ptr %.sroa.459.0..sroa_idx, align 8
  %i.af = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.ai = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIKhEaSIS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEERS3_ONS1_ISA_EE.exit, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #30
  br label %_ZN2v84base11OwnedVectorIKhEaSIS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEERS3_ONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEaSIS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEERS3_ONS1_ISA_EE.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.aj = load i64, ptr %i.aa, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i64 %i.aj, ptr %i.ak, align 8
  store i64 0, ptr %i.aa, align 8
  br i1 %.2, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorIKhEaSIS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEERS3_ONS1_ISA_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.al = load ptr, ptr %4, align 16
  %i.am = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %.sroa.0.0.copyload.i = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @_ZN2v88internal4wasm28ValidateAndSetBuiltinImportsEPKNS1_10WasmModuleENS_4base6VectorIKhEERKNS1_18CompileTimeImportsEPNS1_20WasmDetectedFeaturesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::wasm::WasmError") align 8 %6, ptr noundef %i.al, ptr %.sroa.0.0.copyload.i, i64 poison, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull %5)
  %i.ap = load i32, ptr %6, align 8
  %.not63 = icmp eq i32 %i.ap, -1
  br i1 %.not63, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.010.0.copyload = load i64, ptr %5, align 8
  %i.aq = load ptr, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = or i64 %i.as, %.sroa.010.0.copyload
  store i64 %i.at, ptr %i.ar, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.3 = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit

_ZN2v88internal4wasm9WasmErrorD2Ev.exit:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, %_ZN2v84base11OwnedVectorIKhEaSIS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEERS3_ONS1_ISA_EE.exit
  %.4 = phi i8 [ 1, %_ZN2v84base11OwnedVectorIKhEaSIS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEERS3_ONS1_ISA_EE.exit ], [ %.3, %_ZN2v88internal4wasm9WasmErrorD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ba = call i64 @_ZN2v84base9TimeTicks3NowEv() #29
  %i.bb = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %.sroa.09.0.copyload = load i64, ptr %i.bc, align 8
  %i.bd = sub nsw i64 %i.ba, %.sroa.09.0.copyload
  store i64 %i.bd, ptr %7, align 8
  %15 = trunc nuw i8 %.4 to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 138
  %16 = xor i8 %.4, 1
  store i8 %16, ptr %i.be, align 2
  %i.bf = load ptr, ptr %i.ac, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 137
  store i8 1, ptr %i.bg, align 1
  %i.bh = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.ac, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  store i64 %i.bn, ptr %i.bp, align 8
  %i.bq = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29
  %i.br = load ptr, ptr %i.ac, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  store i64 %i.bq, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 63600
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i26, label %_ZN2v88internal7metrics8Recorder20DelayMainThreadEventINS_7metrics17WasmModuleDecodedEEEvRKT_NS4_8Recorder9ContextIdE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %.sroa.08.0.copyload = load i64, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cb = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31, !noalias !332 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal7metrics8Recorder12DelayedEventINS_7metrics17WasmModuleDecodedEEE, i64 16), ptr %i.cb, align 8, !noalias !332
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !noalias !332
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i64 %.sroa.08.0.copyload, ptr %i.cd, align 8, !noalias !332
  store ptr %i.cb, ptr %3, align 8
  call void @_ZN2v88internal7metrics8Recorder5DelayEOSt10unique_ptrINS2_16DelayedEventBaseESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  %i.ce = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i27, label %_ZNSt10unique_ptrIN2v88internal7metrics8Recorder12DelayedEventINS0_7metrics17WasmModuleDecodedEEESt14default_deleteIS7_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v88internal7metrics8Recorder16DelayedEventBaseEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN2v88internal7metrics8Recorder16DelayedEventBaseEEclEPS4_.exit.i.i: ; preds = %bb.h
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #29, !inline_history !331
  br label %_ZNSt10unique_ptrIN2v88internal7metrics8Recorder12DelayedEventINS0_7metrics17WasmModuleDecodedEEESt14default_deleteIS7_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v88internal7metrics8Recorder12DelayedEventINS0_7metrics17WasmModuleDecodedEEESt14default_deleteIS7_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v88internal7metrics8Recorder16DelayedEventBaseEEclEPS4_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN2v88internal7metrics8Recorder20DelayMainThreadEventINS_7metrics17WasmModuleDecodedEEEvRKT_NS4_8Recorder9ContextIdE.exit

_ZN2v88internal7metrics8Recorder20DelayMainThreadEventINS_7metrics17WasmModuleDecodedEEEvRKT_NS4_8Recorder9ContextIdE.exit: ; preds = %bb.g, %_ZNSt10unique_ptrIN2v88internal7metrics8Recorder12DelayedEventINS0_7metrics17WasmModuleDecodedEEESt14default_deleteIS7_EED2Ev.exit.i
  br i1 %15, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN2v88internal7metrics8Recorder20DelayMainThreadEventINS_7metrics17WasmModuleDecodedEEEvRKT_NS4_8Recorder9ContextIdE.exit
  %i.ci = load ptr, ptr %i.ac, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = call { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ck)
  %i.cm = extractvalue { ptr, i64 } %i.cl, 1
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.co = call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #29
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.ac, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  call void @_ZN2v88internal4wasm10WasmEngine26StreamingCompilationFailedEmRKNS1_18CompileTimeImportsE(ptr noundef nonnull align 8 dereferenceable(8488) %i.co, i64 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #29
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.k, %bb.j
  %i.ct = load ptr, ptr %i.ac, align 8
  call void @_ZNO2v88internal4wasm15AsyncCompileJob6FailedEv(ptr noundef nonnull align 8 dereferenceable(356) %i.ct)
  br label %bb.bf

bb.l:                                             ; preds = %_ZN2v88internal7metrics8Recorder20DelayMainThreadEventINS_7metrics17WasmModuleDecodedEEEvRKT_NS4_8Recorder9ContextIdE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = load <2 x ptr>, ptr %4, align 16
  %i.cx = load ptr, ptr %4, align 16
  store ptr null, ptr %i.cv, align 8
  store <2 x ptr> %i.cw, ptr %8, align 16
  store ptr null, ptr %4, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cz = load i8, ptr %i.cy, align 4, !range !57, !noundef !58
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.db = call noundef i64 @_ZN2v88internal4wasm15WasmCodeManager28EstimateNativeModuleCodeSizeEPKNS1_10WasmModuleE(ptr noundef %i.cx) #29
  store i64 %i.db, ptr %i.a, align 8
  %i.dc = load ptr, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i8 0, ptr %i.c, align 1
  call void @_ZN2v88internal4wasm15AsyncCompileJob6DoSyncINS2_22PrepareAndStartCompileELNS2_25UseExistingForegroundTaskE0EJSt10shared_ptrINS1_10WasmModuleEEbbRmEEEvDpOT1_(ptr noundef nonnull align 8 dereferenceable(356) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.dd = load ptr, ptr %i.ac, align 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 560 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 568 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 576 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.dm = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load i64, ptr %i.dp, align 8
  call void @_ZN2v88internal20SaveAndSwitchContextC1EPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.dn, i64 %i.dq) #29
  %i.dr = load ptr, ptr %i.ac, align 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 58656
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1072 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 1096 ; 3 uses
  %i.dx = load atomic ptr, ptr %i.dw acquire, align 8
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.o, label %_ZN2v88internal8Counters27wasm_wasm_module_size_bytesEv.exit

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 1112 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) #29
  %i.ea = load atomic ptr, ptr %i.dw monotonic, align 8
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.p, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.ec = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #29
  store atomic ptr %i.ec, ptr %i.dw release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.p, %bb.o
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) #29
  br label %_ZN2v88internal8Counters27wasm_wasm_module_size_bytesEv.exit

_ZN2v88internal8Counters27wasm_wasm_module_size_bytesEv.exit: ; preds = %bb.n, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i
  %i.ed = load ptr, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %.sroa.2.0.copyload.i30 = load i64, ptr %.sroa.2.0..sroa_idx.i29, align 8 ; 2 uses
  %i.ee = icmp ult i64 %.sroa.2.0.copyload.i30, 2147483648
  br i1 %i.ee, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.q, !prof !60

bb.q:                                             ; preds = %_ZN2v88internal8Counters27wasm_wasm_module_size_bytesEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.121) #32
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZN2v88internal8Counters27wasm_wasm_module_size_bytesEv.exit
  %i.ef = trunc nuw nsw i64 %.sroa.2.0.copyload.i30 to i32
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i32 noundef %i.ef) #29
  %i.eg = load ptr, ptr %i.ac, align 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 58656
  %i.ej = load ptr, ptr %i.ei, align 8            ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 736 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 760 ; 3 uses
  %i.em = load atomic ptr, ptr %i.el acquire, align 8
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.r, label %_ZN2v88internal8Counters30wasm_functions_per_wasm_moduleEv.exit

bb.r:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 776 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo) #29
  %i.ep = load atomic ptr, ptr %i.el monotonic, align 8
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.s, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i33

bb.s:                                             ; preds = %bb.r
  %i.er = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ek) #29
  store atomic ptr %i.er, ptr %i.el release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i33

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i33: ; preds = %bb.s, %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo) #29
  br label %_ZN2v88internal8Counters30wasm_functions_per_wasm_moduleEv.exit

_ZN2v88internal8Counters30wasm_functions_per_wasm_moduleEv.exit: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i33
  %i.es = load i32, ptr %i.bl, align 8
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.ek, i32 noundef %i.es) #29
  %i.et = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 192
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i34 = icmp eq ptr %i.ev, null
  br i1 %.not.i34, label %bb.t, label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

bb.t:                                             ; preds = %_ZN2v88internal8Counters30wasm_functions_per_wasm_moduleEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ex = load <2 x ptr>, ptr %8, align 16
  store ptr null, ptr %i.cu, align 8
  store <2 x ptr> %i.ex, ptr %10, align 16
  store ptr null, ptr %8, align 16
  %i.ey = call noundef zeroext i1 @_ZN2v88internal4wasm15AsyncCompileJob23GetOrCreateNativeModuleESt10shared_ptrIKNS1_10WasmModuleEEm(ptr noundef nonnull align 8 dereferenceable(356) %i.et, ptr noundef nonnull %10, i64 noundef 0) ; 4 uses
  %i.ez = load ptr, ptr %i.ew, align 8            ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.fa, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.ez, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #29, !inline_history !18
  %i.fi = load ptr, ptr %i.ez, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #29, !inline_history !18
  br label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.fl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.fd, %bb.x ], [ %i.fn, %bb.y ]
  %i.fo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fo, label %bb.z, label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !54
end_hunk_0
