Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolFileDWARF?download=true
inline.NumInlined: 10314
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12lldb_private6plugin5dwarf15SymbolFileDWARF22FindFunctionDefinitionERKNS_17FunctionCallLabelERKNS1_8DWARFDIEE:bb.a
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(1432) %1, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @"_ZN4llvm12function_refIFN12lldb_private15IterationActionENS1_6plugin5dwarf8DWARFDIEEEE11callback_fnIZZNS4_15SymbolFileDWARF22FindFunctionDefinitionERKNS1_17FunctionCallLabelERKS5_ENK3$_0clENS_9StringRefEEUlS5_E_EES2_lS5_", i64 %i.ba) #27, !inline_history !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.be = load ptr, ptr %6, align 8, !tbaa !1400  ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i11, label %"_ZZN12lldb_private6plugin5dwarf15SymbolFileDWARF22FindFunctionDefinitionERKNS_17FunctionCallLabelERKNS1_8DWARFDIEEENK3$_0clEN4llvm9StringRefE.exit17", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1401
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #30
  br label %"_ZZN12lldb_private6plugin5dwarf15SymbolFileDWARF22FindFunctionDefinitionERKNS_17FunctionCallLabelERKNS1_8DWARFDIEEENK3$_0clEN4llvm9StringRefE.exit17"

"_ZZN12lldb_private6plugin5dwarf15SymbolFileDWARF22FindFunctionDefinitionERKNS_17FunctionCallLabelERKNS1_8DWARFDIEEENK3$_0clEN4llvm9StringRefE.exit17": ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.fca.0.load.i12 = load ptr, ptr %5, align 8    ; 2 uses
  %.fca.1.gep.i14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i15 = load ptr, ptr %.fca.1.gep.i14, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i18 = icmp ne ptr %.fca.0.load.i12, null
  %i.bk = icmp ne ptr %.fca.1.load.i15, null
  %i.bl = select i1 %.not.i18, i1 %i.bk, i1 false
  br i1 %i.bl, label %bb.h, label %._crit_edge.i.i.i.i19

._crit_edge.i.i.i.i19:                            ; preds = %"_ZZN12lldb_private6plugin5dwarf15SymbolFileDWARF22FindFunctionDefinitionERKNS_17FunctionCallLabelERKNS1_8DWARFDIEEENK3$_0clEN4llvm9StringRefE.exit17"
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.bm = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !1407 ; 2 uses
  %i.bn = extractvalue { i32, ptr } %i.bm, 0
  %i.bo = extractvalue { i32, ptr } %i.bm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !1408
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bp, ptr %4, align 8, !tbaa !314, !noalias !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !1408
  store i64 67, ptr %i.a, align 8, !tbaa !238, !noalias !1408
  %i.bq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #27, !noalias !1408 ; 3 uses
  store ptr %i.bq, ptr %4, align 8, !tbaa !315, !noalias !1408
  %i.br = load i64, ptr %i.a, align 8, !tbaa !238, !noalias !1408 ; 3 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !96, !noalias !1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.bq, ptr noundef nonnull align 1 dereferenceable(67) @.str.42, i64 67, i1 false), !noalias !1408
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !316, !noalias !1408
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !96, !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1408
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 %i.bn, ptr %i.bo) #27
  %i.bu = load ptr, ptr %4, align 8, !tbaa !315, !noalias !1408 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bp
  br i1 %i.bv, label %_ZN4llvm5ErrorD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %._crit_edge.i.i.i.i19
  %i.bw = load i64, ptr %i.bp, align 8, !tbaa !96, !noalias !1408
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #30
  br label %_ZN4llvm5ErrorD2Ev.exit24

_ZN4llvm5ErrorD2Ev.exit24:                        ; preds = %._crit_edge.i.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1408
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = or i8 %i.bz, 1
  store i8 %i.ca, ptr %i.by, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.cb = load ptr, ptr %18, align 8, !tbaa !322, !noalias !1409
  store ptr %i.cb, ptr %0, align 8, !tbaa !320, !alias.scope !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.i

bb.h:                                             ; preds = %"_ZZN12lldb_private6plugin5dwarf15SymbolFileDWARF22FindFunctionDefinitionERKNS_17FunctionCallLabelERKNS1_8DWARFDIEEENK3$_0clEN4llvm9StringRefE.exit17"
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = and i8 %i.cd, -2
  store i8 %i.ce, ptr %i.cc, align 8
  store ptr %.fca.0.load.i12, ptr %0, align 8
  %.sroa.8.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.fca.1.load.i15, ptr %.sroa.8.0..sroa_idx30, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm5ErrorD2Ev.exit24, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.cf = load i8, ptr %i.ao, align 8
  %i.cg = trunc i8 %i.cf to i1
  br i1 %i.cg, label %bb.j, label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr %17, align 8, !tbaa !320  ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #27, !inline_history !33
  br label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit

_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit: ; preds = %bb.i, %bb.j, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit, %bb.c
  ret void
}

declare void @_ZN12lldb_private17CPlusPlusLanguage39SubstituteStructorAliases_ItaniumMangleEN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.923") align 8, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6plugin5dwarf15SymbolFileDWARF24ResolveFunctionCallLabelERNS_17FunctionCallLabelE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.926") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1432) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.lldb_private::plugin::dwarf::DIERef", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i64, align 8                      ; 9 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 9 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 10 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %17 = alloca %"class.llvm::Expected.923", align 8 ; 11 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %21 = alloca %"class.lldb_private::plugin::dwarf::DWARFDIE", align 8 ; 7 uses
  %22 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %23 = alloca %"class.llvm::Expected.919", align 8 ; 9 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %25 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %26 = alloca %"class.lldb_private::SymbolContextList", align 8 ; 7 uses
  %27 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %28 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(1432) %1) #27 ; 2 uses
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #29
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !358  ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.p, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.o = load ptr, ptr %2, align 8, !tbaa !357    ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !96
  %i.q = icmp eq i8 %i.p, 67
  %.str.43..str.44 = select i1 %i.q, ptr @.str.43, ptr @.str.44
  store ptr %.str.43..str.44, ptr %13, align 8, !tbaa !357
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 2, ptr %i.r, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %lhsc.i = load i8, ptr %i.o, align 1
  switch i8 %lhsc.i, label %._crit_edge.i.i.i.i [
    i8 67, label %bb.c
    i8 68, label %.thread.i
  ]

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.t = add i64 %i.m, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.u = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.s, i64 %i.t, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27
  br i1 %i.u, label %bb.d, label %bb.e

.thread.i:                                        ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.w = add i64 %i.m, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.x = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.v, i64 %i.w, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.f, align 8, !tbaa !1463 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.z = icmp ugt i64 %i.y, 5
  br i1 %i.z, label %._crit_edge.i.i.i.i, label %bb.g

bb.f:                                             ; preds = %.thread.i
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !1463 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ab = icmp ugt i64 %i.aa, 4
  br i1 %i.ab, label %._crit_edge.i.i.i.i, label %bb.g

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e, %bb.d, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ac = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !1464 ; 2 uses
  %i.ad = extractvalue { i32, ptr } %i.ac, 0
  %i.ae = extractvalue { i32, ptr } %i.ac, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !1465
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.af, ptr %12, align 8, !tbaa !314, !noalias !1465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !1465
  store i64 47, ptr %i.e, align 8, !tbaa !238, !noalias !1465
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #27, !noalias !1465 ; 3 uses
  store ptr %i.ag, ptr %12, align 8, !tbaa !315, !noalias !1465
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !238, !noalias !1465 ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !96, !noalias !1465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ag, ptr noundef nonnull align 1 dereferenceable(47) @.str.45, i64 47, i1 false), !noalias !1465
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !316, !noalias !1465
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !96, !noalias !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27, !noalias !1465
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 %i.ad, ptr %i.ae) #27
  %i.ak = load ptr, ptr %12, align 8, !tbaa !315, !noalias !1465 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.af
  br i1 %i.al, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.am = load i64, ptr %i.af, align 8, !tbaa !96, !noalias !1465
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !1465
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.ar = load ptr, ptr %15, align 8, !tbaa !322, !noalias !1466
  store ptr %i.ar, ptr %0, align 8, !tbaa !320, !alias.scope !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ %i.y, %bb.e ], [ %i.aa, %bb.f ]
  %.sroa.018.1.i.ph.in = phi ptr [ @switch.table._ZN12lldb_private6plugin5dwarf15SymbolFileDWARF24ResolveFunctionCallLabelERNS_17FunctionCallLabelE, %bb.e ], [ @switch.table._ZN12lldb_private6plugin5dwarf15SymbolFileDWARF24ResolveFunctionCallLabelERNS_17FunctionCallLabelE.59, %bb.f ]
  %switch.gep109 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.018.1.i.ph.in, i64 %.sink
  %.sroa.018.1.i.ph = load ptr, ptr %switch.gep109, align 8 ; 2 uses
  store ptr %.sroa.018.1.i.ph, ptr %14, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %i.as, align 8
  %.sroa.07.0.copyload = load ptr, ptr %13, align 8, !tbaa !237 ; 2 uses
  %.sroa.28.0.copyload = load i64, ptr %i.r, align 8, !tbaa !238 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.28.0.copyload, 2
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.g
  %i.at = load i16, ptr %.sroa.07.0.copyload, align 1
  %i.au = load i16, ptr %.sroa.018.1.i.ph, align 1
  %i.av = icmp ne i16 %i.at, %i.au
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %._crit_edge.i.i.i.i24, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

._crit_edge.i.i.i.i24:                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ay = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !1467 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0
  %i.ba = extractvalue { i32, ptr } %i.ay, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !1468
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bb, ptr %11, align 8, !tbaa !314, !noalias !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !1468
  store i64 54, ptr %i.d, align 8, !tbaa !238, !noalias !1468
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #27, !noalias !1468 ; 3 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !315, !noalias !1468
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !238, !noalias !1468 ; 3 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !96, !noalias !1468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.bc, ptr noundef nonnull align 1 dereferenceable(54) @.str.46, i64 54, i1 false), !noalias !1468
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !316, !noalias !1468
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !96, !noalias !1468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !1468
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 %i.az, ptr %i.ba) #27
  %i.bg = load ptr, ptr %11, align 8, !tbaa !315, !noalias !1468 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bb
  br i1 %i.bh, label %_ZN4llvm5ErrorD2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %._crit_edge.i.i.i.i24
  %i.bi = load i64, ptr %i.bb, align 8, !tbaa !96, !noalias !1468
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #30
  br label %_ZN4llvm5ErrorD2Ev.exit29

_ZN4llvm5ErrorD2Ev.exit29:                        ; preds = %._crit_edge.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !1468
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = or i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.bn = load ptr, ptr %16, align 8, !tbaa !322, !noalias !1469
  store ptr %i.bn, ptr %0, align 8, !tbaa !320, !alias.scope !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.g, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !237
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !238
  call void @_ZN12lldb_private17CPlusPlusLanguage32SubstituteStructor_ItaniumMangleEN4llvm9StringRefES2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.923") align 8 %17, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %14) #27
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = trunc i8 %i.bq to i1
  br i1 %i.br, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.bs = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !1470 ; 2 uses
  %i.bt = extractvalue { i32, ptr } %i.bs, 0
  %i.bu = extractvalue { i32, ptr } %i.bs, 1
  call void @_ZN4llvm18createStringErrorVIJRNS_9StringRefES2_S2_EEENS_5ErrorESt10error_codePKcDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %19, i32 %i.bt, ptr %i.bu, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
  %i.bv = load i8, ptr %i.bp, align 8, !noalias !1471
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.h
  %i.bx = load i64, ptr %17, align 8, !tbaa !320, !noalias !1471
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr null, ptr %17, align 8, !tbaa !320, !noalias !1471
  br label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEE9takeErrorEv.exit

_ZN4llvm8ExpectedIN12lldb_private11ConstStringEE9takeErrorEv.exit: ; preds = %bb.h, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %storemerge.i = phi ptr [ %i.by, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.bz = load ptr, ptr %19, align 8, !tbaa !322, !noalias !1472
  store ptr %i.bz, ptr %9, align 8, !tbaa !322, !noalias !1472
  store ptr null, ptr %19, align 8, !tbaa !322, !noalias !1472
  store ptr %storemerge.i, ptr %10, align 8, !tbaa !322, !noalias !1472
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %18, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr nofree noundef nonnull align 8 dereferenceable(8) %10)
  %i.ca = load ptr, ptr %10, align 8, !tbaa !322, !noalias !1472 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEE9takeErrorEv.exit
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #27, !inline_history !1428
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.i, %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEE9takeErrorEv.exit
  %i.cf = load ptr, ptr %9, align 8, !tbaa !322, !noalias !1472 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN4llvm5ErrorD2Ev.exit31, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #27, !inline_history !1428
  br label %_ZN4llvm5ErrorD2Ev.exit31

_ZN4llvm5ErrorD2Ev.exit31:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = or i8 %i.cl, 1
  store i8 %i.cm, ptr %i.ck, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %i.cn = load ptr, ptr %18, align 8, !tbaa !322, !noalias !1473
  store ptr %i.cn, ptr %0, align 8, !tbaa !320, !alias.scope !1473
  store ptr null, ptr %18, align 8, !tbaa !322, !noalias !1473
  %i.co = load ptr, ptr %19, align 8, !tbaa !322  ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN4llvm5ErrorD2Ev.exit32, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit31
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #27, !inline_history !8
  br label %_ZN4llvm5ErrorD2Ev.exit32

_ZN4llvm5ErrorD2Ev.exit32:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit31, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.n

bb.l:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.ct = load ptr, ptr %17, align 8, !tbaa !345  ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN4llvm5ErrorD2Ev.exit33, label %_ZNK12lldb_private11ConstStringcvbEv.exit

_ZNK12lldb_private11ConstStringcvbEv.exit:        ; preds = %bb.l
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !96
  %.not84 = icmp eq i8 %i.cv, 0
  br i1 %.not84, label %_ZN4llvm5ErrorD2Ev.exit33, label %.critedge23

_ZN4llvm5ErrorD2Ev.exit33:                        ; preds = %bb.l, %_ZNK12lldb_private11ConstStringcvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.cw = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !1474 ; 2 uses
  %i.cx = extractvalue { i32, ptr } %i.cw, 0
  %i.cy = extractvalue { i32, ptr } %i.cw, 1
  call void @_ZN4llvm18createStringErrorVIJRNS_9StringRefES2_S2_EEENS_5ErrorESt10error_codePKcDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %20, i32 %i.cx, ptr %i.cy, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8
  %i.db = or i8 %i.da, 1
  store i8 %i.db, ptr %i.cz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.dc = load ptr, ptr %20, align 8, !tbaa !322, !noalias !1475
  store ptr %i.dc, ptr %0, align 8, !tbaa !320, !alias.scope !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.n

.critedge23:                                      ; preds = %_ZNK12lldb_private11ConstStringcvbEv.exit
  %i.dd = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #27
  store ptr %i.ct, ptr %i.bo, align 8, !tbaa !237
  store i64 %i.dd, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !238
  %i.de = load i8, ptr %i.bp, align 8
  %i.df = trunc i8 %i.de to i1
  br i1 %i.df, label %bb.m, label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit

bb.m:                                             ; preds = %.critedge23
  %i.dg = load ptr, ptr %17, align 8, !tbaa !320  ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i37, label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.m
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !80
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #27, !inline_history !33
  br label %_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit

_ZN4llvm8ExpectedIN12lldb_private11ConstStringEED2Ev.exit: ; preds = %.critedge23, %bb.m, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.p

bb.n:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit33, %_ZN4llvm5ErrorD2Ev.exit32
  %i.dk = load i8, ptr %i.bp, align 8
  %i.dl = trunc i8 %i.dk to i1
end_hunk_0
