Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFPlatform?download=true
inline.NumInlined: 7271
inline.NumDeleted: 3652
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm3orc12COFFPlatform6CreateERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS7_EENS_15unique_functionIFNS_5ErrorES5_NS_9StringRefEEEEbPKcSt8optionalINS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoISK_vEENS_6detail12DenseMapPairISK_SL_EEEEE:bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str, i64 noundef 33) #23 ; 0 uses
  %i.s = load i64, ptr %i.m, align 8, !tbaa !34, !alias.scope !36
  %i.t = sub i64 4611686018427387903, %i.s
  %i.u = icmp ult i64 %i.t, %i.k
  br i1 %i.u, label %bb.d, label %_ZN4llvm5ErrorD2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
  unreachable

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.i, i64 noundef %i.k) #23 ; 0 uses
  %i.w = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #23 ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.w, 0
  %i.y = extractvalue { i32, ptr } %i.w, 1
  %i.z = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !40
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.aa, align 8, !tbaa !45, !noalias !40
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ab, align 1, !tbaa !48, !noalias !40
  store ptr %13, ptr %12, align 8, !tbaa !39, !noalias !40
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.z, ptr noundef nonnull align 8 dereferenceable(34) %12, i32 %i.x, ptr %i.y) #23, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = or i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 8
  store ptr %i.z, ptr %0, align 8, !tbaa !49, !alias.scope !51
  %i.af = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !39
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ax

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.aj = load ptr, ptr %3, align 8, !tbaa !54
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #23
  call void @_ZN4llvm6object7Archive6createENS_15MemoryBufferRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.91") align 8 %14, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %15) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %.thread230, label %bb.f

.thread230:                                       ; preds = %bb.e
  %i.an = load i64, ptr %14, align 8, !tbaa !49, !noalias !56
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.ao, ptr %0, align 8, !tbaa !49, !alias.scope !59
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit103

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.as, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr null, ptr %i.at, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.au, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  store ptr %i.as, ptr %i.av, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr null, ptr %18, align 8, !tbaa !71
  %i.ay = load i64, ptr %14, align 8, !tbaa !73
  store i64 %i.ay, ptr %19, align 8, !tbaa !73
  store ptr null, ptr %14, align 8, !tbaa !73
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  store i64 0, ptr %i.ba, align 8
  store ptr %16, ptr %20, align 8, !tbaa !75
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEEC1INS_3orc21COFFImportFileScannerESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S6_RS7_mE_8__invokeESH_S6_SI_m, ptr %i.az, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, i8 0, i64 40, i1 false)
  call void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator6CreateERNS0_11ObjectLayerESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EES4_INS_6object7ArchiveES6_ISA_EENS_15unique_functionIFNS_8ExpectedIbEERSA_NS_15MemoryBufferRefEmEEENSD_IFNSE_INS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionESH_EEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.105") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr nofree noundef nonnull align 8 dereferenceable(8) %18, ptr nofree noundef nonnull align 8 dereferenceable(8) %19, ptr nofree noundef nonnull align 8 dereferenceable(40) %20, ptr nofree noundef nonnull align 8 dereferenceable(40) %21) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.bc(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %21) #23, !inline_history !81
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit: ; preds = %bb.f, %bb.g
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !82 ; 2 uses
  %.not.i26 = icmp eq ptr %i.bd, null
  br i1 %.not.i26, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit
  call void %i.bd(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %20) #23, !inline_history !83
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, %bb.h
  %i.be = load ptr, ptr %19, align 8, !tbaa !73   ; 3 uses
  %.not.i27 = icmp eq ptr %i.be, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(144) %i.be) #23, !inline_history !86
  br label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit, %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i
  %i.bi = load ptr, ptr %18, align 8, !tbaa !54   ; 3 uses
  %.not.i28 = icmp eq ptr %i.bi, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #23, !inline_history !87
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i30, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i30: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.bp = load i64, ptr %17, align 8, !tbaa !49, !noalias !88
  %i.bq = inttoptr i64 %i.bp to ptr
  store ptr null, ptr %17, align 8, !tbaa !49, !noalias !88
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = or i8 %i.bs, 1
  store i8 %i.bt, ptr %i.br, align 8
  store ptr %i.bq, ptr %0, align 8, !tbaa !49, !alias.scope !91
  br label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit99

_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.bu = load ptr, ptr %3, align 8, !tbaa !54
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) #23
  call void @_ZN4llvm6object7Archive6createENS_15MemoryBufferRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.91") align 8 %22, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %23) #23
  %i.bv = load i64, ptr %22, align 8, !tbaa !73, !noalias !94 ; 3 uses
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  store ptr null, ptr %22, align 8, !tbaa !73, !noalias !94
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !97, !range !100, !noundef !15
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit._crit_edge, label %bb.i

_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit._crit_edge: ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit
  %i.ca = load <2 x ptr>, ptr %7, align 8, !tbaa !101
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = load <2 x i32>, ptr %.phi.trans.insert179, align 8, !tbaa !102
  br label %bb.p

bb.i:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %24, i8 0, i64 24, i1 false), !alias.scope !103
  call fastcc void @_ZN4llvm3orcL10addAliasesERNS0_16ExecutionSessionERNS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEENS_8ArrayRefISt4pairIPKcSG_EEE(ptr noundef nonnull readonly align 8 dereferenceable(392) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr nonnull @_ZZN4llvm3orc12COFFPlatform29standardRuntimeUtilityAliasesEvE29StandardRuntimeUtilityAliases, i64 7)
  %i.cc = load i8, ptr %i.bx, align 8, !tbaa !97, !range !100, !noundef !15
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !106 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit, label %.lr.ph7.preheader.i.i104

.lr.ph7.preheader.i.i104:                         ; preds = %bb.j
  %i.ch = load ptr, ptr %7, align 8, !tbaa !110
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !111
  %i.ck = zext i32 %i.cf to i64
  %i.cl = add nuw nsw i64 %i.ck, 31
  %i.cm = lshr i64 %i.cl, 5
  br label %.lr.ph7.i.i105

.lr.ph7.i.i105:                                   ; preds = %._crit_edge.i.i116, %.lr.ph7.preheader.i.i104
  %indvars.iv.i.i106 = phi i64 [ 0, %.lr.ph7.preheader.i.i104 ], [ %indvars.iv.next.i.i117, %._crit_edge.i.i116 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i106
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i107 = icmp eq i32 %i.co, 0
  br i1 %.not11.i2.i.i107, label %._crit_edge.i.i116, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %.lr.ph7.i.i105
  %indvars.iv.tr.i.i109 = trunc i64 %indvars.iv.i.i106 to i32
  %i.cp = shl i32 %indvars.iv.tr.i.i109, 5
  br label %bb.k

bb.k:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i114, %.lr.ph.i.i108
  %.0.i3.i.i110 = phi i32 [ %i.co, %.lr.ph.i.i108 ], [ %i.dg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i114 ] ; 3 uses
  %i.cq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i110, i1 true)
  %i.cr = or disjoint i32 %i.cq, %i.cp
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !112 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %notsub.i.i.i.i.i.i.i111 = add i64 %i.cw, -1
  %i.cx = icmp ult i64 %notsub.i.i.i.i.i.i.i111, -32
  br i1 %i.cx, label %bb.l, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i112

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i112

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i112: ; preds = %bb.l, %bb.k
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !112 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64
  %notsub.i.i.i.i.i.i113 = add i64 %i.db, -1
  %i.dc = icmp ult i64 %notsub.i.i.i.i.i.i113, -32
  br i1 %i.dc, label %bb.m, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i114

bb.m:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i112
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = atomicrmw sub ptr %i.dd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i114

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i114: ; preds = %bb.m, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i112
  %i.df = add i32 %.0.i3.i.i110, -1
  %i.dg = and i32 %i.df, %.0.i3.i.i110            ; 2 uses
  %.not11.i.i.i115 = icmp eq i32 %i.dg, 0
  br i1 %.not11.i.i.i115, label %._crit_edge.i.i116, label %bb.k, !llvm.loop !115

._crit_edge.i.i116:                               ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i114, %.lr.ph7.i.i105
  %indvars.iv.next.i.i117 = add nuw nsw i64 %indvars.iv.i.i106, 1 ; 2 uses
  %.not.i.i.i118 = icmp eq i64 %indvars.iv.next.i.i117, %i.cm
  br i1 %.not.i.i.i118, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i119, label %.lr.ph7.i.i105, !llvm.loop !117

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i119: ; preds = %._crit_edge.i.i116
  %.pr.i120 = load i32, ptr %i.ce, align 4, !tbaa !106 ; 2 uses
  %i.dh = icmp eq i32 %.pr.i120, 0
  br i1 %i.dh, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i119
  %i.di = load ptr, ptr %7, align 8, !tbaa !110
  %i.dj = zext i32 %.pr.i120 to i64               ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, 24
  %i.dl = add nuw nsw i64 %i.dj, 31
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = and i64 %i.dm, 1073741820
  %i.do = add nuw nsw i64 %i.dn, %i.dk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.di, i64 noundef %i.do, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit: ; preds = %bb.j, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i119, %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  %i.dq = load <2 x ptr>, ptr %24, align 16, !tbaa !101
  %i.dr = load ptr, ptr %24, align 16, !tbaa !118
  store ptr %i.dr, ptr %7, align 8, !tbaa !118
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dt = load <2 x i32>, ptr %i.ds, align 16, !tbaa !102
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

bb.o:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  %i.dv = load <2 x ptr>, ptr %24, align 16, !tbaa !101
  %i.dw = load ptr, ptr %24, align 16, !tbaa !118
  store ptr %i.dw, ptr %7, align 8, !tbaa !118
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dy = load <2 x i32>, ptr %i.dx, align 16, !tbaa !102
  store i8 1, ptr %i.bx, align 8, !tbaa !97
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.o, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit
  %i.dz = phi <2 x i32> [ %i.dt, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit ], [ %i.dy, %bb.o ]
  %i.ea = phi <2 x ptr> [ %i.dq, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEaSEOS9_.exit ], [ %i.dv, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit._crit_edge, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.eb = phi <2 x i32> [ %i.cb, %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit._crit_edge ], [ %i.dz, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit ]
  %i.ec = phi <2 x ptr> [ %i.ca, %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit._crit_edge ], [ %i.ea, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ed = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25, !noalias !119 ; 2 uses
  store <2 x ptr> %i.ec, ptr %9, align 16, !tbaa !101, !noalias !119
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  store <2 x i32> %i.eb, ptr %i.ee, align 16, !tbaa !102, !noalias !119
  call void @_ZN4llvm3orc28ReExportsMaterializationUnitC1EPNS0_8JITDylibENS0_19JITDylibLookupFlagsENS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ed, ptr noundef null, i32 noundef 1, ptr nofree noundef nonnull align 8 dereferenceable(24) %9) #23, !noalias !119
  store ptr %i.ed, ptr %26, align 8, !tbaa !122, !alias.scope !119
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !106, !noalias !119 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ej = load ptr, ptr %9, align 16, !tbaa !110, !noalias !119
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !111, !noalias !119
  %i.el = zext i32 %i.eg to i64
  %i.em = add nuw nsw i64 %i.el, 31
  %i.en = lshr i64 %i.em, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !102, !noalias !119 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i121

.lr.ph.i.i.i121:                                  ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.eq = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.q

bb.q:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i121
  %.0.i3.i.i.i = phi i32 [ %i.ep, %.lr.ph.i.i.i121 ], [ %i.fh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.er = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.es = or disjoint i32 %i.er, %i.eq
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !112, !noalias !119 ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.ex, -1
  %i.ey = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.ey, label %bb.r, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 seq_cst, align 8, !noalias !119 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.fb = load ptr, ptr %i.eu, align 8, !tbaa !112, !noalias !119 ; 2 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %notsub.i.i.i.i.i.i.i122 = add i64 %i.fc, -1
  %i.fd = icmp ult i64 %notsub.i.i.i.i.i.i.i122, -32
  br i1 %i.fd, label %bb.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.s:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = atomicrmw sub ptr %i.fe, i64 1 seq_cst, align 8, !noalias !119 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.s, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i
  %i.fg = add i32 %.0.i3.i.i.i, -1
  %i.fh = and i32 %i.fg, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.q, !llvm.loop !115

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i123 = icmp eq i64 %indvars.iv.next.i.i.i, %i.en
  br i1 %.not.i.i.i.i123, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !117

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ef, align 4, !tbaa !106, !noalias !119 ; 2 uses
  %i.fi = icmp eq i32 %.pr.i.i, 0
  br i1 %i.fi, label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.fj = load ptr, ptr %9, align 16, !tbaa !110, !noalias !119
  %i.fk = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.fl = mul nuw nsw i64 %i.fk, 24
  %i.fm = add nuw nsw i64 %i.fk, 31
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = and i64 %i.fn, 1073741820
  %i.fp = add nuw nsw i64 %i.fo, %i.fl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fj, i64 noundef %i.fp, i64 noundef 8) #23, !noalias !119
  br label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.p, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr null, ptr %27, align 8, !tbaa !124
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.fq = load ptr, ptr %26, align 8, !tbaa !122, !noalias !127
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !130, !noalias !127
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, label %bb.u

_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread: ; preds = %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %25, align 8, !tbaa !133, !alias.scope !127
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.u:                                             ; preds = %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !135, !noalias !127, !nonnull !15, !align !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !127
  store ptr %2, ptr %11, align 8, !tbaa !164, !noalias !127
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %26, ptr %i.fw, align 8, !tbaa !169, !noalias !127
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %27, ptr %i.fx, align 8, !tbaa !170, !noalias !127
  %i.fy = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.fv) #23, !noalias !171 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_system_errori(i32 noundef %i.fy) #24, !noalias !171
  unreachable

_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit: ; preds = %bb.u
  call void @_ZZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.fz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.fv) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !127
  %.pre183 = load ptr, ptr %27, align 8, !tbaa !124 ; 4 uses
  %.not.i.i = icmp eq ptr %.pre183, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit
  %i.ga = atomicrmw sub ptr %.pre183, i32 1 acq_rel, align 4
  %.not.i.i.i.i32 = icmp eq i32 %i.ga, 1
  br i1 %.not.i.i.i.i32, label %bb.x, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pre183) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.pre183, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, %bb.w, %bb.x
  %i.gb = load ptr, ptr %26, align 8, !tbaa !122  ; 3 uses
  %.not.i33 = icmp eq ptr %i.gb, null
  br i1 %.not.i33, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit51, label %_ZNKSt14default_deleteIN4llvm3orc28ReExportsMaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc28ReExportsMaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !84
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(80) %i.gb) #23, !inline_history !174
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit51

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN4llvm3orc28ReExportsMaterializationUnitEEclEPS2_.exit.i, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.gf = load ptr, ptr %25, align 8, !tbaa !133  ; 2 uses
  %.not = icmp eq ptr %i.gf, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit53, label %_ZN4llvm5ErrorD2Ev.exit52

_ZN4llvm5ErrorD2Ev.exit52:                        ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit51
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8
  %i.gi = or i8 %i.gh, 1
  store i8 %i.gi, ptr %i.gg, align 8
  store ptr %i.gf, ptr %0, align 8, !tbaa !49, !alias.scope !175
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.av

_ZN4llvm5ErrorD2Ev.exit53:                        ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.gj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.gj, ptr %28, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 28, ptr %i.a, align 8, !tbaa !178
  %i.gk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.gk, ptr %28, align 8, !tbaa !33
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.gk, ptr noundef nonnull align 1 dereferenceable(28) @.str.1, i64 28, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !34
  %i.gn = load ptr, ptr %28, align 8, !tbaa !33
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gl
  store i8 0, ptr %i.go, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.gp = call noundef nonnull align 8 dereferenceable(272) ptr @_ZN4llvm3orc16ExecutionSession18createBareJITDylibENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr nofree noundef nonnull align 8 dereferenceable(32) %28) #23 ; 3 uses
  %i.gq = load ptr, ptr %28, align 8, !tbaa !33   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gj
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZN4llvm5ErrorD2Ev.exit53
  %i.gs = load i64, ptr %i.gj, align 8, !tbaa !39
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZN4llvm5ErrorD2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !17, !noalias !179
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !182, !noalias !187
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %33, ptr noundef nonnull align 8 dereferenceable(64) %i.gw, ptr nonnull @.str.2, i64 21)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.02.0.copyload = load i64, ptr %i.gx, align 8, !tbaa !178
  %i.gy = load ptr, ptr %33, align 8, !tbaa !112  ; 3 uses
  store ptr %i.gy, ptr %32, align 8, !tbaa !112
  %i.gz = ptrtoint ptr %i.gy to i64
  %notsub.i.i.i.i.i = add i64 %i.gz, -1
  %i.ha = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.ha, label %bb.y, label %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hc = atomicrmw add ptr %i.hb, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit

_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.y
  %i.hd = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store i64 %.sroa.02.0.copyload, ptr %i.hd, align 8, !tbaa !178
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i16 4096, ptr %.sroa.4145.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !17, !noalias !190
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !182, !noalias !193
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %34, ptr noundef nonnull align 8 dereferenceable(64) %i.hh, ptr nonnull @.str.3, i64 25)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.0.0.copyload = load i64, ptr %i.hi, align 8, !tbaa !178
  %i.hj = load ptr, ptr %34, align 8, !tbaa !112  ; 3 uses
  store ptr %i.hj, ptr %i.he, align 8, !tbaa !112
  %i.hk = ptrtoint ptr %i.hj to i64
  %notsub.i.i.i.i.i58 = add i64 %i.hk, -1
  %i.hl = icmp ult i64 %notsub.i.i.i.i.i58, -32
  br i1 %i.hl, label %bb.z, label %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit59

bb.z:                                             ; preds = %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hn = atomicrmw add ptr %i.hm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit59

_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit59: ; preds = %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit, %bb.z
  %i.ho = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i64 %.sroa.0.0.copyload, ptr %i.ho, align 8, !tbaa !178
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 40
  store i16 4096, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %31, i64 20 ; 5 uses
  store i32 4, ptr %i.hp, align 4, !tbaa !196
  %i.hq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.hs = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 100, i64 noundef 8) #23 ; 2 uses
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !196 ; 2 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = mul nuw nsw i64 %i.hu, 24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv ; 2 uses
  store ptr %i.hs, ptr %31, align 16, !tbaa !199
  store ptr %i.hw, ptr %i.hr, align 8, !tbaa !200
  store i32 0, ptr %i.hq, align 16, !tbaa !201
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.preheader.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit59
  %i.hx = add nuw nsw i64 %i.hu, 31
  %i.hy = lshr i64 %i.hx, 3
  %i.hz = and i64 %i.hy, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hw, i8 0, i64 %i.hz, i1 false)
  br label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.aa, %_ZN4llvm6detail12DenseMapPairINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefEECI2St4pairIS3_S4_EIS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERKS3_RKS4_.exit59
  %i.ia = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(10) %i.hd), !noalias !202 ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ic = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(10) %i.ib), !noalias !202 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.id = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !207 ; 2 uses
  %i.ie = load <2 x ptr>, ptr %31, align 16, !tbaa !101, !noalias !207
  store ptr null, ptr %31, align 16, !tbaa !210, !noalias !207
  store <2 x ptr> %i.ie, ptr %8, align 16, !tbaa !101, !noalias !207
  store ptr null, ptr %i.hr, align 8, !tbaa !211, !noalias !207
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.ih = load <2 x i32>, ptr %i.hq, align 16, !tbaa !102, !noalias !207
  store i32 0, ptr %i.hq, align 16, !tbaa !102, !noalias !207
  store <2 x i32> %i.ih, ptr %i.if, align 16, !tbaa !102, !noalias !207
  store i32 0, ptr %i.hp, align 4, !tbaa !102, !noalias !207
  call void @_ZN4llvm3orc34AbsoluteSymbolsMaterializationUnitC1ENS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.id, ptr nofree noundef nonnull align 8 dereferenceable(24) %8) #23, !noalias !207
  store ptr %i.id, ptr %30, align 8, !tbaa !212, !alias.scope !207
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !196, !noalias !207 ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph7.preheader.i.i.i124

.lr.ph7.preheader.i.i.i124:                       ; preds = %.lr.ph.i.i.preheader.i
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.il = load ptr, ptr %8, align 16, !tbaa !199, !noalias !207
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !200, !noalias !207
  %i.in = zext i32 %i.ii to i64
  %i.io = add nuw nsw i64 %i.in, 31
  %i.ip = lshr i64 %i.io, 5
  br label %.lr.ph7.i.i.i125

.lr.ph7.i.i.i125:                                 ; preds = %._crit_edge.i.i.i133, %.lr.ph7.preheader.i.i.i124
  %indvars.iv.i.i.i126 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i124 ], [ %indvars.iv.next.i.i.i134, %._crit_edge.i.i.i133 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i.i.i126
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !102, !noalias !207 ; 2 uses
  %.not11.i2.i.i.i127 = icmp eq i32 %i.ir, 0
  br i1 %.not11.i2.i.i.i127, label %._crit_edge.i.i.i133, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %.lr.ph7.i.i.i125
  %indvars.iv.tr.i.i.i129 = trunc i64 %indvars.iv.i.i.i126 to i32
  %i.is = shl i32 %indvars.iv.tr.i.i.i129, 5
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i128
  %.0.i3.i.i.i130 = phi i32 [ %i.ir, %.lr.ph.i.i.i128 ], [ %i.jd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.it = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i130, i1 true)
  %i.iu = or disjoint i32 %i.it, %i.is
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !112, !noalias !207 ; 2 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %notsub.i.i.i.i.i.i.i131 = add i64 %i.iy, -1
  %i.iz = icmp ult i64 %notsub.i.i.i.i.i.i.i131, -32
  br i1 %i.iz, label %bb.ac, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = atomicrmw sub ptr %i.ja, i64 1 seq_cst, align 8, !noalias !207 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.jc = add i32 %.0.i3.i.i.i130, -1
  %i.jd = and i32 %i.jc, %.0.i3.i.i.i130          ; 2 uses
  %.not11.i.i.i.i132 = icmp eq i32 %i.jd, 0
  br i1 %.not11.i.i.i.i132, label %._crit_edge.i.i.i133, label %bb.ab, !llvm.loop !214

._crit_edge.i.i.i133:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i125
  %indvars.iv.next.i.i.i134 = add nuw nsw i64 %indvars.iv.i.i.i126, 1 ; 2 uses
  %.not.i.i.i.i135 = icmp eq i64 %indvars.iv.next.i.i.i134, %i.ip
  br i1 %.not.i.i.i.i135, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i125, !llvm.loop !215

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i133
  %.pr.i.i136 = load i32, ptr %i.ig, align 4, !tbaa !196, !noalias !207 ; 2 uses
  %i.je = icmp eq i32 %.pr.i.i136, 0
  br i1 %i.je, label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.jf = load ptr, ptr %8, align 16, !tbaa !199, !noalias !207
  %i.jg = zext i32 %.pr.i.i136 to i64             ; 2 uses
  %i.jh = mul nuw nsw i64 %i.jg, 24
  %i.ji = add nuw nsw i64 %i.jg, 31
  %i.jj = lshr i64 %i.ji, 3
  %i.jk = and i64 %i.jj, 1073741820
  %i.jl = add nuw nsw i64 %i.jk, %i.jh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jf, i64 noundef %i.jl, i64 noundef 8) #23, !noalias !207
  br label %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.lr.ph.i.i.preheader.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr null, ptr %35, align 8, !tbaa !124
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.jm = load ptr, ptr %30, align 8, !tbaa !212, !noalias !216
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !130, !noalias !216
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, label %bb.ae

_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread: ; preds = %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %29, align 8, !tbaa !133, !alias.scope !216
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65

bb.ae:                                            ; preds = %_ZSt11make_uniqueIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEJNS0_8DenseMapINS1_15SymbolStringPtrENS1_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !135, !noalias !216, !nonnull !15, !align !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !216
  store ptr %i.gp, ptr %10, align 8, !tbaa !219, !noalias !216
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %30, ptr %i.js, align 8, !tbaa !222, !noalias !216
  %i.jt = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %35, ptr %i.jt, align 8, !tbaa !170, !noalias !216
  %i.ju = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.jr) #23, !noalias !223 ; 2 uses
  %.not.i.i.i.i61 = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i.i.i61, label %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ju) #24, !noalias !223
  unreachable

_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit: ; preds = %bb.ae
  call void @_ZZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %i.jv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.jr) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !216
  %.pre184 = load ptr, ptr %35, align 8, !tbaa !124 ; 4 uses
  %.not.i.i63 = icmp eq ptr %.pre184, null
  br i1 %.not.i.i63, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit
  %i.jw = atomicrmw sub ptr %.pre184, i32 1 acq_rel, align 4
  %.not.i.i.i.i64 = icmp eq i32 %i.jw, 1
  br i1 %.not.i.i.i.i64, label %bb.ah, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pre184) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.pre184, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65: ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, %_ZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, %bb.ag, %bb.ah
  %i.jx = load ptr, ptr %30, align 8, !tbaa !212  ; 3 uses
  %.not.i66 = icmp eq ptr %i.jx, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN4llvm3orc34AbsoluteSymbolsMaterializationUnitESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !84
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(64) %i.jx) #23, !inline_history !226
  br label %_ZNSt10unique_ptrIN4llvm3orc34AbsoluteSymbolsMaterializationUnitESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc34AbsoluteSymbolsMaterializationUnitESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit65, %_ZNKSt14default_deleteIN4llvm3orc34AbsoluteSymbolsMaterializationUnitEEclEPS2_.exit.i
  %i.kb = load i32, ptr %i.hp, align 4, !tbaa !196 ; 2 uses
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i67

.lr.ph7.preheader.i.i67:                          ; preds = %_ZNSt10unique_ptrIN4llvm3orc34AbsoluteSymbolsMaterializationUnitESt14default_deleteIS2_EED2Ev.exit
  %i.kd = load ptr, ptr %31, align 16, !tbaa !199
  %i.ke = load ptr, ptr %i.hr, align 8, !tbaa !200
  %i.kf = zext i32 %i.kb to i64
  %i.kg = add nuw nsw i64 %i.kf, 31
  %i.kh = lshr i64 %i.kg, 5
  br label %.lr.ph7.i.i68

.lr.ph7.i.i68:                                    ; preds = %._crit_edge.i.i76, %.lr.ph7.preheader.i.i67
  %indvars.iv.i.i69 = phi i64 [ 0, %.lr.ph7.preheader.i.i67 ], [ %indvars.iv.next.i.i77, %._crit_edge.i.i76 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i.i69
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i70 = icmp eq i32 %i.kj, 0
  br i1 %.not11.i2.i.i70, label %._crit_edge.i.i76, label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %.lr.ph7.i.i68
  %indvars.iv.tr.i.i72 = trunc i64 %indvars.iv.i.i69 to i32
  %i.kk = shl i32 %indvars.iv.tr.i.i72, 5
  br label %bb.ai

bb.ai:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i71
  %.0.i3.i.i73 = phi i32 [ %i.kj, %.lr.ph.i.i71 ], [ %i.kv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.kl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i73, i1 true)
  %i.km = or disjoint i32 %i.kl, %i.kk
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.kd, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !112 ; 2 uses
  %i.kq = ptrtoint ptr %i.kp to i64
  %notsub.i.i.i.i.i.i74 = add i64 %i.kq, -1
  %i.kr = icmp ult i64 %notsub.i.i.i.i.i.i74, -32
  br i1 %i.kr, label %bb.aj, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kt = atomicrmw sub ptr %i.ks, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.aj, %bb.ai
  %i.ku = add i32 %.0.i3.i.i73, -1
  %i.kv = and i32 %i.ku, %.0.i3.i.i73             ; 2 uses
  %.not11.i.i.i75 = icmp eq i32 %i.kv, 0
  br i1 %.not11.i.i.i75, label %._crit_edge.i.i76, label %bb.ai, !llvm.loop !214

._crit_edge.i.i76:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i68
  %indvars.iv.next.i.i77 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %.not.i.i.i78 = icmp eq i64 %indvars.iv.next.i.i77, %i.kh
  br i1 %.not.i.i.i78, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i68, !llvm.loop !215

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i76
  %.pr.i79 = load i32, ptr %i.hp, align 4, !tbaa !196 ; 2 uses
  %i.kw = icmp eq i32 %.pr.i79, 0
  br i1 %i.kw, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.kx = load ptr, ptr %31, align 16, !tbaa !199
  %i.ky = zext i32 %.pr.i79 to i64                ; 2 uses
  %i.kz = mul nuw nsw i64 %i.ky, 24
  %i.la = add nuw nsw i64 %i.ky, 31
  %i.lb = lshr i64 %i.la, 3
  %i.lc = and i64 %i.lb, 1073741820
  %i.ld = add nuw nsw i64 %i.lc, %i.kz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kx, i64 noundef %i.ld, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3orc34AbsoluteSymbolsMaterializationUnitESt14default_deleteIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.ak
  %i.le = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !112 ; 2 uses
  %i.lg = ptrtoint ptr %i.lf to i64
  %notsub.i.i.i.i = add i64 %i.lg, -1
  %i.lh = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.lh, label %bb.al, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit

bb.al:                                            ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lj = atomicrmw sub ptr %i.li, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit

_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %bb.al
  %i.lk = load ptr, ptr %32, align 8, !tbaa !112  ; 2 uses
  %i.ll = ptrtoint ptr %i.lk to i64
  %notsub.i.i.i.i.1 = add i64 %i.ll, -1
  %i.lm = icmp ult i64 %notsub.i.i.i.i.1, -32
  br i1 %i.lm, label %bb.am, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit.1

bb.am:                                            ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lo = atomicrmw sub ptr %i.ln, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit.1

_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit.1: ; preds = %bb.am, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit
  %i.lp = load ptr, ptr %34, align 8, !tbaa !112  ; 2 uses
  %i.lq = ptrtoint ptr %i.lp to i64
  %notsub.i.i.i = add i64 %i.lq, -1
  %i.lr = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.lr, label %bb.an, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.an:                                            ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit.1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrENS1_17ExecutorSymbolDefEED2Ev.exit.1, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  %i.lu = load ptr, ptr %33, align 8, !tbaa !112  ; 2 uses
  %i.lv = ptrtoint ptr %i.lu to i64
  %notsub.i.i.i80 = add i64 %i.lv, -1
  %i.lw = icmp ult i64 %notsub.i.i.i80, -32
  br i1 %i.lw, label %bb.ao, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit81

bb.ao:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ly = atomicrmw sub ptr %i.lx, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit81

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit81:         ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.lz = load ptr, ptr %29, align 8, !tbaa !133  ; 2 uses
  %.not173 = icmp eq ptr %i.lz, null
  br i1 %.not173, label %_ZN4llvm5ErrorD2Ev.exit84, label %_ZN4llvm5ErrorD2Ev.exit82

_ZN4llvm5ErrorD2Ev.exit82:                        ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit81
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 8
  %i.mc = or i8 %i.mb, 1
  store i8 %i.mc, ptr %i.ma, align 8
  store ptr %i.lz, ptr %0, align 8, !tbaa !49, !alias.scope !227
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.av

_ZN4llvm5ErrorD2Ev.exit84:                        ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @_ZN4llvm3orc8JITDylib14addToLinkOrderERS1_NS0_19JITDylibLookupFlagsE(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(272) %i.gp, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  store ptr null, ptr %36, align 8, !tbaa !133
  %i.md = call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #25 ; 4 uses
  %i.me = load i64, ptr %17, align 8, !tbaa !230
  store i64 %i.me, ptr %37, align 8, !tbaa !230
  store ptr null, ptr %17, align 8, !tbaa !230
  %i.mf = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.mg = load ptr, ptr %i.at, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.i85, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit84
  %i.mh = load i32, ptr %i.as, align 8, !tbaa !62
  %i.mi = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.mg, ptr %i.mi, align 8, !tbaa !67
  %i.mj = load ptr, ptr %i.au, align 8, !tbaa !68
  %i.mk = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %i.mf, ptr %i.ml, align 8, !tbaa !232
  %i.mm = load i64, ptr %i.aw, align 8, !tbaa !70
  store ptr null, ptr %i.at, align 8, !tbaa !67
  store ptr %i.as, ptr %i.au, align 8, !tbaa !68
  store ptr %i.as, ptr %i.av, align 8, !tbaa !69
  store i64 0, ptr %i.aw, align 8, !tbaa !70
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2EOS9_.exit

bb.aq:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit84
  %i.mn = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr null, ptr %i.mn, align 8, !tbaa !67
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2EOS9_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2EOS9_.exit: ; preds = %bb.ap, %bb.aq
  %.sink176 = phi ptr [ %i.mf, %bb.aq ], [ %i.mj, %bb.ap ]
  %.sink175 = phi ptr [ %i.mf, %bb.aq ], [ %i.mk, %bb.ap ]
  %.sink = phi i64 [ 0, %bb.aq ], [ %i.mm, %bb.ap ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.aq ], [ %i.mh, %bb.ap ]
  %i.mo = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %.sink176, ptr %i.mo, align 8, !tbaa !68
  %i.mp = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %.sink175, ptr %i.mp, align 8, !tbaa !69
  %i.mq = getelementptr inbounds nuw i8, ptr %38, i64 40
  store i64 %.sink, ptr %i.mq, align 8, !tbaa !70
  store i32 %.sink.i.i.i.i, ptr %i.mf, align 8, !tbaa !62
  %i.mr = load i64, ptr %3, align 8, !tbaa !54
  store i64 %i.mr, ptr %39, align 8, !tbaa !54
  store ptr null, ptr %3, align 8, !tbaa !54
  store i64 %i.bv, ptr %40, align 8, !tbaa !73
  %i.ms = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !233 ; 2 uses
  %i.mx = load <2 x ptr>, ptr %i.mu, align 8, !tbaa !101
  store <2 x ptr> %i.mx, ptr %i.ms, align 8, !tbaa !101
  %.not.i.i86 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i86, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2EOS9_.exit
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(40) %4) #23, !inline_history !235
  br label %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit

bb.as:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2EOS9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit

_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mu, i8 0, i64 16, i1 false)
  call void @_ZN4llvm3orc12COFFPlatformC1ERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS0_32StaticLibraryDefinitionGeneratorESt14default_deleteIS7_EESt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_ESaISH_EES6_INS_12MemoryBufferES8_ISM_EES6_INS_6object7ArchiveES8_ISQ_EENS_15unique_functionIFNS_5ErrorES5_NS_9StringRefEEEEbPKcRSU_(ptr noundef nonnull align 8 dereferenceable(320) %i.md, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %37, ptr nofree noundef nonnull align 8 dereferenceable(48) %38, ptr nofree noundef nonnull align 8 dereferenceable(8) %39, ptr nofree noundef nonnull align 8 dereferenceable(8) %40, ptr nofree noundef nonnull align 8 dereferenceable(40) %41, i1 noundef zeroext %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %36) #23
  %i.my = load ptr, ptr %i.mt, align 8, !tbaa !233 ; 2 uses
  %.not.i87 = icmp eq ptr %i.my, null
  br i1 %.not.i87, label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit
  call void %i.my(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %41) #23, !inline_history !236
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit: ; preds = %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit, %bb.at
  %i.mz = load ptr, ptr %40, align 8, !tbaa !73   ; 3 uses
  %.not.i88 = icmp eq ptr %i.mz, null
  br i1 %.not.i88, label %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit90, label %_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i89

_ZNKSt14default_deleteIN4llvm6object7ArchiveEEclEPS2_.exit.i89: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !84
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
end_hunk_0
begin_hunk_1_@_ZN4llvm3orc12COFFPlatform6CreateERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS7_EENS_15unique_functionIFNS_5ErrorES5_NS_9StringRefEEEEbPKcSt8optionalINS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoISK_vEENS_6detail12DenseMapPairISK_SL_EEEEE:bb.a
_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit.sink.split.i102: ; preds = %bb.aw
  %i.oh = load ptr, ptr %.pre186, align 8, !tbaa !84
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %.pre186) #23, !inline_history !244
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit103

_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit103: ; preds = %.thread230, %bb.aw, %_ZNSt10unique_ptrIN4llvm6object7ArchiveESt14default_deleteIS2_EED2Ev.exit.sink.split.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6object7ArchiveESt14default_deleteIS3_EEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3orc12COFFPlatform15supportedTargetERKNS_6TripleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %cond = icmp eq i32 %i.b, 41
  ret i1 %cond
}

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4llvm6object7Archive6createENS_15MemoryBufferRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.91") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8) local_unnamed_addr #3

declare void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind writable sret(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator6CreateERNS0_11ObjectLayerESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EES4_INS_6object7ArchiveES6_ISA_EENS_15unique_functionIFNS_8ExpectedIbEERSA_NS_15MemoryBufferRefEmEEENSD_IFNSE_INS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionESH_EEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.105") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr nofree noundef align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform23standardPlatformAliasesERNS0_16ExecutionSessionE(ptr dead_on_unwind noalias nonnull writable sret(%"class.llvm::DenseMap") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call fastcc void @_ZN4llvm3orcL10addAliasesERNS0_16ExecutionSessionERNS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEENS_8ArrayRefISt4pairIPKcSG_EEE(ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull @_ZZN4llvm3orc12COFFPlatform29standardRuntimeUtilityAliasesEvE29StandardRuntimeUtilityAliases, i64 7)
  ret void
}

declare noundef nonnull align 8 dereferenceable(272) ptr @_ZN4llvm3orc16ExecutionSession18createBareJITDylibENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(392), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm3orc8JITDylib14addToLinkOrderERS1_NS0_19JITDylibLookupFlagsE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(272), i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform6CreateERNS0_18ObjectLinkingLayerERNS0_8JITDylibEPKcNS_15unique_functionIFNS_5ErrorES5_NS_9StringRefEEEEbS7_St8optionalINS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_SG_EEEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef %3, ptr nofree noundef align 8 dereferenceable(40) %4, i1 noundef zeroext %5, ptr noundef %6, ptr nofree noundef align 8 captures(none) dereferenceable(32) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.std::unique_ptr.10", align 8 ; 3 uses
  %13 = alloca %"class.llvm::unique_function", align 8 ; 6 uses
  %14 = alloca %"class.std::optional", align 16   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !48
  %i.c = load i8, ptr %3, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %3, ptr %9, align 8, !tbaa !39
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.a, %bb.b
  %storemerge.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge.i, ptr %i.a, align 8, !tbaa !45
  call void @_ZN4llvm12MemoryBuffer7getFileERKNS_5TwineEbbbSt8optionalINS_5AlignEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i16 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !48
  %i.i = load i8, ptr %3, align 1, !tbaa !39
  %.not.i5 = icmp eq i8 %i.i, 0
  br i1 %.not.i5, label %_ZN4llvm5TwineC2EPKc.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %3, ptr %11, align 8, !tbaa !39
  br label %_ZN4llvm5TwineC2EPKc.exit7

_ZN4llvm5TwineC2EPKc.exit7:                       ; preds = %bb.c, %bb.d
  %storemerge.i6 = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i6, ptr %i.g, align 8, !tbaa !45
  %.sroa.0.0.copyload.i = load i32, ptr %8, align 8, !tbaa !102
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !245
  call void @_ZN4llvm15createFileErrorERKNS_5TwineESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr noundef nonnull align 8 dereferenceable(34) %11, i32 %.sroa.0.0.copyload.i, ptr %.sroa.31.0.copyload.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.m = load ptr, ptr %10, align 8, !tbaa !133, !noalias !247
  store ptr %i.m, ptr %0, align 8, !tbaa !49, !alias.scope !247
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.n = load i64, ptr %8, align 8, !tbaa !54
  store i64 %i.n, ptr %12, align 8, !tbaa !54
  store ptr null, ptr %8, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !233  ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !101
  store <2 x ptr> %i.t, ptr %i.o, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %4) #23, !inline_history !235
  br label %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit

_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  store i8 0, ptr %i.v, align 8, !tbaa !97
  %i.w = load i8, ptr %i.u, align 8, !tbaa !97, !range !100, !noundef !15
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %_ZNSt8optionalIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEEEC2EOSB_.exit

bb.h:                                             ; preds = %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load <2 x ptr>, ptr %7, align 8, !tbaa !101
  store ptr null, ptr %7, align 8, !tbaa !118
  store <2 x ptr> %i.z, ptr %14, align 16, !tbaa !101
  store ptr null, ptr %i.y, align 8, !tbaa !211
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !102
  store i32 0, ptr %i.ab, align 8, !tbaa !102
  store <2 x i32> %i.ad, ptr %i.aa, align 16, !tbaa !102
  store i32 0, ptr %i.ac, align 4, !tbaa !102
  store i8 1, ptr %i.v, align 8, !tbaa !97
  br label %_ZNSt8optionalIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEEEC2EOSB_.exit

_ZNSt8optionalIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEEEC2EOSB_.exit: ; preds = %_ZN4llvm15unique_functionIFNS_5ErrorERNS_3orc8JITDylibENS_9StringRefEEEC2EOS7_.exit, %bb.h
  call void @_ZN4llvm3orc12COFFPlatform6CreateERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS7_EENS_15unique_functionIFNS_5ErrorES5_NS_9StringRefEEEEbPKcSt8optionalINS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoISK_vEENS_6detail12DenseMapPairISK_SL_EEEEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr nofree noundef nonnull align 8 dereferenceable(40) %13, i1 noundef zeroext %5, ptr noundef %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %14)
  %i.ae = load i8, ptr %i.v, align 8, !tbaa !97, !range !100, !noundef !15
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %_ZNSt14_Optional_baseIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt8optionalIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEEEC2EOSB_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !106 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.i
  %i.aj = load ptr, ptr %14, align 16, !tbaa !110 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 31               ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i.i.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.ar = shl i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.j

bb.j:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.as = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.at = or disjoint i32 %i.as, %i.ar
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ay, -1
  %i.az = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.az, label %bb.k, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i.i.i.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !112 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.bd, -1
  %i.be = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.be, label %bb.l, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i.i.i.i
  %i.bh = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.bi = and i32 %i.bh, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.j, !llvm.loop !115

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.ao
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !117

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bj = mul nuw nsw i64 %i.am, 24
  %i.bk = lshr i64 %i.an, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aj, i64 noundef %i.bm, i64 noundef 8) #23
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt8optionalIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEEEC2EOSB_.exit, %bb.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i.i.i
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !233 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bn, null
  br i1 %.not.i8, label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEELb0ELb0EED2Ev.exit
  call void %i.bn(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %13) #23, !inline_history !236
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4llvm8DenseMapINS0_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S4_EEEELb0ELb0EED2Ev.exit, %bb.m
  %i.bo = load ptr, ptr %12, align 8, !tbaa !54   ; 3 uses
  %.not.i9 = icmp eq ptr %i.bo, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #23, !inline_history !87
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i, %_ZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_3orc8JITDylibENS_9StringRefEEED2Ev.exit, %_ZN4llvm5TwineC2EPKc.exit7
  %i.bs = load i8, ptr %i.d, align 8
  %i.bt = trunc i8 %i.bs to i1
  br i1 %i.bt, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.bu = load ptr, ptr %8, align 8, !tbaa !54    ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i10, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bu) #23, !inline_history !250
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.n, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void
}

declare void @_ZN4llvm12MemoryBuffer7getFileERKNS_5TwineEbbbSt8optionalINS_5AlignEE(ptr dead_on_unwind writable sret(%"class.llvm::ErrorOr") align 8, ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i16) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15createFileErrorERKNS_5TwineESt10error_code(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, i32 %2, ptr %3) local_unnamed_addr #6 comdat {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %6 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %7 = alloca %class.anon.476, align 8            ; 4 uses
  %8 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 4 uses
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, i32 %2, ptr %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.a = load ptr, ptr %9, align 8, !tbaa !133, !noalias !251
  store ptr null, ptr %9, align 8, !tbaa !133, !noalias !251
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !257
  store ptr null, ptr %6, align 8, !tbaa !258, !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !257
  store ptr %6, ptr %7, align 8, !tbaa !260, !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !257
  store ptr %i.a, ptr %5, align 8, !tbaa !133, !noalias !257
  call void @_ZN4llvm12handleErrorsIJZNS_9FileError5buildERKNS_5TwineESt8optionalImENS_5ErrorEEUlSt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS9_EEE_EEES7_S7_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7), !noalias !257
  %i.b = load ptr, ptr %5, align 8, !tbaa !133, !noalias !257 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !84, !noalias !257
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !257
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #23, !noalias !257, !inline_history !262
  br label %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !257
  %i.g = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !257 ; 2 uses
  %i.h = load i64, ptr %6, align 8, !tbaa !49, !noalias !257
  store i64 %i.h, ptr %8, align 8, !tbaa !49, !noalias !257
  store ptr null, ptr %6, align 8, !tbaa !49, !noalias !257
  call void @_ZN4llvm9FileErrorC2ERKNS_5TwineESt8optionalImESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(34) %1, i64 undef, i8 0, ptr nofree noundef nonnull align 8 dereferenceable(8) %8), !noalias !257
  store ptr %i.g, ptr %0, align 8, !tbaa !133, !alias.scope !257
  %i.i = load ptr, ptr %8, align 8, !tbaa !49, !noalias !257 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i4.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84, !noalias !257
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !257
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #23, !noalias !257, !inline_history !263
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i, %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.m = load ptr, ptr %6, align 8, !tbaa !49, !noalias !257 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i7.i.i, label %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84, !noalias !257
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !257
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #23, !noalias !257, !inline_history !263
  br label %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit

_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !251
  %i.q = load ptr, ptr %9, align 8, !tbaa !133    ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #23, !inline_history !242
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform18getPerJDObjectFileEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.188") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Expected.191", align 8 ; 11 uses
  %4 = alloca %"class.llvm::Expected.217", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  call void @_ZNK4llvm6object7Archive7findSymENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.191") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr nonnull @.str.4, i64 27) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !49, !noalias !264
  %i.g = inttoptr i64 %i.f to ptr
  store ptr null, ptr %3, align 8, !tbaa !49, !noalias !264
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = or i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 8
  store ptr %i.g, ptr %0, align 8, !tbaa !49, !alias.scope !267
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !270, !range !100, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4llvm5ErrorD2Ev.exit1

_ZN4llvm5ErrorD2Ev.exit1:                         ; preds = %bb.b
  %i.n = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #23 ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.n, 0
  %i.p = extractvalue { i32, ptr } %i.n, 1
  %i.q = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !272
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !48, !noalias !272
  store ptr @.str.5, ptr %2, align 8, !tbaa !39, !noalias !272
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 3, ptr %i.s, align 8, !tbaa !45, !noalias !272
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 %i.o, ptr %i.p) #23, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !272
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 8
  store ptr %i.q, ptr %0, align 8, !tbaa !49, !alias.scope !277
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNK4llvm6object7Archive5Child11getAsBinaryEPNS_11LLVMContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.217") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef null) #23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i8, ptr %i.w, align 8
  %i.y = trunc i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.y, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.aa = load i64, ptr %4, align 8, !tbaa !49, !noalias !280
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i8, ptr %i.z, align 8
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.z, align 8
  store ptr %i.ab, ptr %0, align 8, !tbaa !49, !alias.scope !283
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object6BinaryESt14default_deleteIS3_EEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %4, align 8, !tbaa !286
  call void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ae) #23
  %i.af = load i8, ptr %i.z, align 8
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.z, align 8
  %.pre = load ptr, ptr %4, align 8, !tbaa !101   ; 3 uses
  %.not.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object6BinaryESt14default_deleteIS3_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm6object6BinaryESt14default_deleteIS2_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm6object6BinaryESt14default_deleteIS2_EED2Ev.exit.sink.split.i: ; preds = %bb.d
  %i.ah = load ptr, ptr %.pre, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %.pre) #23, !inline_history !288
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object6BinaryESt14default_deleteIS3_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_6object6BinaryESt14default_deleteIS3_EEED2Ev.exit: ; preds = %.thread, %bb.d, %_ZNSt10unique_ptrIN4llvm6object6BinaryESt14default_deleteIS2_EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_6object6BinaryESt14default_deleteIS3_EEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit1, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ak = load i8, ptr %i.c, align 8
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !270, !range !100, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  store i8 0, ptr %i.am, align 8, !tbaa !270
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.aq, null
  %or.cond.not.i = select i1 %i.ao, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i, label %_ZNSt14_Optional_baseIN4llvm6object7Archive5ChildELb0ELb0EED2Ev.exit.sink.split.i, label %_ZN4llvm8ExpectedISt8optionalINS_6object7Archive5ChildEEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt8optionalINS_6object7Archive5ChildEEED2Ev.exit, label %_ZNSt14_Optional_baseIN4llvm6object7Archive5ChildELb0ELb0EED2Ev.exit.sink.split.i

_ZNSt14_Optional_baseIN4llvm6object7Archive5ChildELb0ELb0EED2Ev.exit.sink.split.i: ; preds = %bb.g, %bb.f
  %.sink6.i = phi ptr [ %i.aq, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %.sink5.i = phi i64 [ 16, %bb.f ], [ 8, %bb.g ]
  %i.as = load ptr, ptr %.sink6.i, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink5.i
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %.sink6.i) #23, !inline_history !289
  br label %_ZN4llvm8ExpectedISt8optionalINS_6object7Archive5ChildEEED2Ev.exit

_ZN4llvm8ExpectedISt8optionalINS_6object7Archive5ChildEEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZNSt14_Optional_baseIN4llvm6object7Archive5ChildELb0ELb0EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare void @_ZNK4llvm6object7Archive7findSymENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.191") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr, i64) local_unnamed_addr #3

declare void @_ZNK4llvm6object7Archive5Child11getAsBinaryEPNS_11LLVMContextE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.217") align 8, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef) local_unnamed_addr #3

declare void @_ZNK4llvm6object6Binary18getMemoryBufferRefEv(ptr dead_on_unwind writable sret(%"class.llvm::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform13setupJITDylibERNS0_8JITDylibE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %4 = alloca %class.anon.734, align 8            ; 5 uses
  %5 = alloca %class.anon.638, align 8            ; 6 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.639", align 8 ; 7 uses
  %8 = alloca %"class.llvm::DenseMap.243", align 16 ; 11 uses
  %9 = alloca %"class.llvm::Expected.236", align 8 ; 6 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %10 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 3 uses
  %11 = alloca %"class.llvm::DenseMap", align 16  ; 11 uses
  %12 = alloca %"class.std::unique_ptr.142", align 8 ; 6 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %14 = alloca %"class.llvm::Expected.188", align 8 ; 7 uses
  %15 = alloca %"class.llvm::Expected.241", align 16 ; 18 uses
  %16 = alloca %"class.std::unique_ptr.10", align 8 ; 3 uses
  %17 = alloca %"struct.llvm::orc::MaterializationUnit::Interface", align 16 ; 5 uses
  %18 = alloca %"class.llvm::Expected.246", align 8 ; 12 uses
  %19 = alloca %"class.std::unique_ptr.254", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25, !noalias !290 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !293
  %i.d = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !293
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  store i16 4096, ptr %i.e, align 1, !noalias !293
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = load <2 x ptr>, ptr %8, align 16, !tbaa !101, !noalias !293
  store ptr null, ptr %8, align 16, !tbaa !296, !noalias !293
  store ptr null, ptr %i.f, align 8, !tbaa !211, !noalias !293
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %i.j = load <2 x i32>, ptr %i.h, align 16, !tbaa !102, !noalias !293
  %i.k = load i32, ptr %i.h, align 16, !tbaa !102, !noalias !293
  store i32 0, ptr %i.h, align 16, !tbaa !102, !noalias !293
  store i32 0, ptr %i.i, align 4, !tbaa !102, !noalias !293
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !112, !noalias !293 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %notsub.i.i.i.i.i.i = add i64 %i.m, -1
  %i.n = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.n, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i.i:     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 1 seq_cst, align 8, !noalias !293 ; 0 uses
  %.pre.i.i.i = load i32, ptr %i.i, align 4, !tbaa !297, !noalias !293 ; 2 uses
  %i.q = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.q, label %_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph7.preheader.i.i3.i.i.i

.lr.ph7.preheader.i.i3.i.i.i:                     ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i.i
  %i.r = load ptr, ptr %8, align 16, !tbaa !298, !noalias !293
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !299, !noalias !293
  %i.t = zext i32 %.pre.i.i.i to i64
  %i.u = add nuw nsw i64 %i.t, 31
  %i.v = lshr i64 %i.u, 5
  br label %.lr.ph7.i.i4.i.i.i

.lr.ph7.i.i4.i.i.i:                               ; preds = %._crit_edge.i.i13.i.i.i, %.lr.ph7.preheader.i.i3.i.i.i
  %indvars.iv.i.i5.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i3.i.i.i ], [ %indvars.iv.next.i.i14.i.i.i, %._crit_edge.i.i13.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i5.i.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !102, !noalias !293 ; 2 uses
  %.not11.i2.i.i6.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i2.i.i6.i.i.i, label %._crit_edge.i.i13.i.i.i, label %.lr.ph.i.i7.i.i.i

.lr.ph.i.i7.i.i.i:                                ; preds = %.lr.ph7.i.i4.i.i.i
  %indvars.iv.tr.i.i8.i.i.i = trunc i64 %indvars.iv.i.i5.i.i.i to i32
  %i.y = shl i32 %indvars.iv.tr.i.i8.i.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i11.i.i.i, %.lr.ph.i.i7.i.i.i
  %.0.i3.i.i9.i.i.i = phi i32 [ %i.x, %.lr.ph.i.i7.i.i.i ], [ %i.aj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i11.i.i.i ] ; 3 uses
  %i.z = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i9.i.i.i, i1 true)
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112, !noalias !293 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %notsub.i.i.i.i.i.i10.i.i.i = add i64 %i.ae, -1
  %i.af = icmp ult i64 %notsub.i.i.i.i.i.i10.i.i.i, -32
  br i1 %i.af, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i11.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 seq_cst, align 8, !noalias !293 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i11.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i11.i.i.i: ; preds = %bb.c, %bb.b
  %i.ai = add i32 %.0.i3.i.i9.i.i.i, -1
  %i.aj = and i32 %i.ai, %.0.i3.i.i9.i.i.i        ; 2 uses
  %.not11.i.i.i12.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not11.i.i.i12.i.i.i, label %._crit_edge.i.i13.i.i.i, label %bb.b, !llvm.loop !300

._crit_edge.i.i13.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i11.i.i.i, %.lr.ph7.i.i4.i.i.i
  %indvars.iv.next.i.i14.i.i.i = add nuw nsw i64 %indvars.iv.i.i5.i.i.i, 1 ; 2 uses
  %.not.i.i.i15.i.i.i = icmp eq i64 %indvars.iv.next.i.i14.i.i.i, %i.v
  br i1 %.not.i.i.i15.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i16.i.i.i, label %.lr.ph7.i.i4.i.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i16.i.i.i: ; preds = %._crit_edge.i.i13.i.i.i
  %.pr.i17.i.i.i = load i32, ptr %i.i, align 4, !tbaa !297, !noalias !293 ; 2 uses
  %i.ak = icmp eq i32 %.pr.i17.i.i.i, 0
  br i1 %i.ak, label %_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i16.i.i.i
  %i.al = load ptr, ptr %8, align 16, !tbaa !298, !noalias !293
  %i.am = zext i32 %.pr.i17.i.i.i to i64          ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = add nuw nsw i64 %i.am, 31
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 1073741820
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.al, i64 noundef %i.ar, i64 noundef 8) #23, !noalias !293
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i16.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !293
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.g, ptr %i.as, align 8, !tbaa !101, !noalias !290
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x i32> %i.j, ptr %i.at, align 8, !tbaa !102, !noalias !290
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.l, ptr %i.au, align 8, !tbaa !302, !noalias !290
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_129COFFHeaderMaterializationUnitE, i64 16), ptr %i.c, align 8, !tbaa !84, !noalias !290
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %1, ptr %i.av, align 8, !tbaa !303, !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.aw = icmp eq i32 %i.k, 0
  br i1 %i.aw, label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, label %bb.e

_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %0, align 8, !tbaa !133, !alias.scope !305
  br label %_ZNKSt14default_deleteIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEclEPS1_.exit.i

bb.e:                                             ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEJRN4llvm3orc12COFFPlatformERNS3_15SymbolStringPtrEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !135, !noalias !305, !nonnull !15, !align !16 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.az = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.ay) #23, !noalias !311 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_system_errori(i32 noundef %i.az) #24, !noalias !311
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i: ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !311
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !315, !noalias !316
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i, label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit

_ZN4llvm5ErrorD2Ev.exit.i.i.i:                    ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i
  call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !133, !alias.scope !316
  %.not17.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not17.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i, label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread130

_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread130: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !311
  %i.bd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.ay) #23 ; 0 uses
  br label %_ZNKSt14default_deleteIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEclEPS1_.exit.i

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(272) %2) #23
  %i.be = load ptr, ptr %6, align 8, !tbaa !124, !noalias !316 ; 5 uses
  store ptr null, ptr %6, align 8, !tbaa !124, !noalias !316
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !135, !noalias !305, !nonnull !15, !align !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !317 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23, !inline_history !319
  %i.bl = load ptr, ptr %0, align 8, !tbaa !133, !alias.scope !316
  %.not19.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not19.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread134

_ZN4llvm5ErrorD2Ev.exit13.i.i.i:                  ; preds = %bb.g, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i
  store ptr %i.c, ptr %7, align 8, !tbaa !320, !noalias !316
  call void @_ZN4llvm3orc8JITDylib26installMaterializationUnitESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS3_EERNS0_15ResourceTrackerE(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.be) #23
  %i.bm = load ptr, ptr %7, align 8, !tbaa !323, !noalias !316 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i2.i.i, label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread140, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit13.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %i.bm) #23, !inline_history !324
  br label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread140

_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread140: ; preds = %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !133, !alias.scope !316
  br label %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread134

_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i
  %i.bq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !325 ; 3 uses
  %i.br = atomicrmw add ptr %2, i32 1 monotonic, align 4, !noalias !325 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc15JITDylibDefunctE, i64 16), ptr %i.bq, align 8, !tbaa !84, !noalias !325
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %2, ptr %i.bs, align 8, !tbaa !330, !noalias !325
  store ptr %i.bq, ptr %0, align 8, !tbaa !133, !alias.scope !316
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !311
  %i.bt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.ay) #23 ; 0 uses
  br label %_ZNKSt14default_deleteIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEclEPS1_.exit.i

_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread134: ; preds = %bb.g, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread140
  %.sroa.0124.1139 = phi ptr [ null, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread140 ], [ %i.c, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !311
  %i.bu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.ay) #23 ; 0 uses
  %i.bv = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i.i.i.i49 = icmp eq i32 %i.bv, 1
  br i1 %.not.i.i.i.i49, label %bb.h, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread134
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.be) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.be, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread134, %bb.h
  %.not.i = icmp eq ptr %.sroa.0124.1139, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_129COFFHeaderMaterializationUnitESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEclEPS1_.exit.i: ; preds = %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread130, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %.sroa.0124.2129147 = phi ptr [ %.sroa.0124.1139, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit ], [ %i.c, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread ], [ %i.c, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit ], [ %i.c, %_ZN4llvm3orc8JITDylib6defineIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS7_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread130 ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0124.2129147, align 8, !tbaa !84
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0124.2129147) #23, !inline_history !332
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_129COFFHeaderMaterializationUnitESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_129COFFHeaderMaterializationUnitESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, %_ZNKSt14default_deleteIN12_GLOBAL__N_129COFFHeaderMaterializationUnitEEclEPS1_.exit.i
  %i.bz = load ptr, ptr %0, align 8, !tbaa !133
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.i, label %bb.ar

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_129COFFHeaderMaterializationUnitESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !333, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %2, ptr %i.a, align 8, !tbaa !371
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !112 ; 3 uses
  store ptr %i.cc, ptr %10, align 8, !tbaa !112
  %i.cd = ptrtoint ptr %i.cc to i64
  %notsub.i.i.i = add i64 %i.cd, -1
  %i.ce = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.ce, label %bb.j, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %bb.i, %bb.j
  call void @_ZN4llvm3orc16ExecutionSession6lookupENS_8ArrayRefIPNS0_8JITDylibEEENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.236") align 8 %9, ptr noundef nonnull align 8 dereferenceable(392) %i.cb, ptr nonnull %i.a, i64 1, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, i8 noundef zeroext 63) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !noalias !372
  %i.cj = trunc i8 %i.ci to i1
  br i1 %i.cj, label %bb.k, label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

bb.k:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %i.ck = load i64, ptr %9, align 8, !tbaa !49, !noalias !372
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr null, ptr %9, align 8, !tbaa !49, !noalias !372
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit, %bb.k
  %storemerge = phi ptr [ %i.cl, %bb.k ], [ null, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ] ; 2 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !133, !alias.scope !372
  %i.cm = load ptr, ptr %10, align 8, !tbaa !112  ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %notsub.i.i.i53 = add i64 %i.cn, -1
  %i.co = icmp ult i64 %notsub.i.i.i53, -32
  br i1 %i.co, label %bb.l, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.l:                                             ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit, %bb.l
  %i.cr = phi ptr [ %storemerge, %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.not149 = icmp eq ptr %i.cr, null
  br i1 %.not149, label %bb.m, label %bb.ar

bb.m:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !333, !nonnull !15, !align !16
  call fastcc void @_ZN4llvm3orcL10addAliasesERNS0_16ExecutionSessionERNS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEENS_8ArrayRefISt4pairIPKcSG_EEE(ptr noundef nonnull align 8 dereferenceable(392) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr nonnull @_ZZN4llvm3orc12COFFPlatform18requiredCXXAliasesEvE18RequiredCXXAliases, i64 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cy = load <2 x i32>, ptr %i.cu, align 16, !tbaa !102
  store i32 0, ptr %i.cu, align 16, !tbaa !102
  store i32 0, ptr %i.cv, align 4, !tbaa !102
  %i.cz = load <2 x ptr>, ptr %11, align 16, !tbaa !101
  store ptr null, ptr %11, align 16, !tbaa !118
  store ptr null, ptr %i.ct, align 8, !tbaa !211
  %i.da = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25, !noalias !375 ; 2 uses
  store <2 x ptr> %i.cz, ptr %3, align 16, !tbaa !101, !noalias !375
  store <2 x i32> %i.cy, ptr %i.cw, align 16, !tbaa !102, !noalias !375
  call void @_ZN4llvm3orc28ReExportsMaterializationUnitC1EPNS0_8JITDylibENS0_19JITDylibLookupFlagsENS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.da, ptr noundef null, i32 noundef 1, ptr nofree noundef nonnull align 8 dereferenceable(24) %3) #23, !noalias !375
  store ptr %i.da, ptr %12, align 8, !tbaa !122, !alias.scope !375
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !106, !noalias !375 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %3, align 16, !tbaa !110, !noalias !375
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !111, !noalias !375
  %i.dg = zext i32 %i.db to i64
  %i.dh = add nuw nsw i64 %i.dg, 31
  %i.di = lshr i64 %i.dh, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !102, !noalias !375 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.dl = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.n

bb.n:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.dk, %.lr.ph.i.i.i ], [ %i.ec, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.dm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.dn = or disjoint i32 %i.dm, %i.dl
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !112, !noalias !375 ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %notsub.i.i.i.i.i.i.i.i103 = add i64 %i.ds, -1
  %i.dt = icmp ult i64 %notsub.i.i.i.i.i.i.i.i103, -32
  br i1 %i.dt, label %bb.o, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = atomicrmw sub ptr %i.du, i64 1 seq_cst, align 8, !noalias !375 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !112, !noalias !375 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %notsub.i.i.i.i.i.i.i104 = add i64 %i.dx, -1
  %i.dy = icmp ult i64 %notsub.i.i.i.i.i.i.i104, -32
  br i1 %i.dy, label %bb.p, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.p:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = atomicrmw sub ptr %i.dz, i64 1 seq_cst, align 8, !noalias !375 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.p, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i
  %i.eb = add i32 %.0.i3.i.i.i, -1
  %i.ec = and i32 %i.eb, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.n, !llvm.loop !115

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i105 = icmp eq i64 %indvars.iv.next.i.i.i, %i.di
  br i1 %.not.i.i.i.i105, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !117

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.cx, align 4, !tbaa !106, !noalias !375 ; 2 uses
  %i.ed = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ed, label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.ee = load ptr, ptr %3, align 16, !tbaa !110, !noalias !375
  %i.ef = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.eg = mul nuw nsw i64 %i.ef, 24
  %i.eh = add nuw nsw i64 %i.ef, 31
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 1073741820
  %i.ek = add nuw nsw i64 %i.ej, %i.eg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ee, i64 noundef %i.ek, i64 noundef 8) #23, !noalias !375
  br label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.m, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr null, ptr %13, align 8, !tbaa !124
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.el = load ptr, ptr %12, align 8, !tbaa !122, !noalias !378
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !130, !noalias !378
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, label %bb.r

_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread: ; preds = %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %0, align 8, !tbaa !133, !alias.scope !378
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59

bb.r:                                             ; preds = %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJDnNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S6_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !135, !noalias !378, !nonnull !15, !align !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !378
  store ptr %2, ptr %5, align 8, !tbaa !164, !noalias !378
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %12, ptr %i.er, align 8, !tbaa !169, !noalias !378
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %13, ptr %i.es, align 8, !tbaa !170, !noalias !378
  %i.et = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.eq) #23, !noalias !381 ; 2 uses
  %.not.i.i.i.i55 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i.i.i55, label %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_system_errori(i32 noundef %i.et) #24, !noalias !381
  unreachable

_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit: ; preds = %bb.r
  call void @_ZZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.eu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.eq) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !378
  %.pre157 = load ptr, ptr %13, align 8, !tbaa !124 ; 4 uses
  %.not.i.i57 = icmp eq ptr %.pre157, null
  br i1 %.not.i.i57, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit
  %i.ev = atomicrmw sub ptr %.pre157, i32 1 acq_rel, align 4
  %.not.i.i.i.i58 = icmp eq i32 %i.ev, 1
  br i1 %.not.i.i.i.i58, label %bb.u, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pre157) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.pre157, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59: ; preds = %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit.thread, %_ZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEE.exit, %bb.t, %bb.u
  %i.ew = load ptr, ptr %12, align 8, !tbaa !122  ; 3 uses
  %.not.i60 = icmp eq ptr %i.ew, null
  br i1 %.not.i60, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc28ReExportsMaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc28ReExportsMaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !84
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(80) %i.ew) #23, !inline_history !174
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm3orc28ReExportsMaterializationUnitEEclEPS2_.exit.i, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.fa = load ptr, ptr %0, align 8, !tbaa !133
  %.not150 = icmp eq ptr %i.fa, null
  br i1 %.not150, label %_ZN4llvm5ErrorD2Ev.exit63, label %.critedge

_ZN4llvm5ErrorD2Ev.exit63:                        ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  call void @_ZN4llvm3orc12COFFPlatform18getPerJDObjectFileEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.188") align 8 %14, ptr noundef nonnull align 8 dereferenceable(320) %1)
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8             ; 2 uses
  %i.fd = trunc i8 %i.fc to i1
  br i1 %i.fd, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66, label %bb.v

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66: ; preds = %_ZN4llvm5ErrorD2Ev.exit63
  %i.fe = load i64, ptr %14, align 8
  %i.ff = inttoptr i64 %i.fe to ptr
  store ptr null, ptr %14, align 8
  store ptr %i.ff, ptr %0, align 8, !tbaa !133, !alias.scope !384
  br label %bb.al

bb.v:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.fg = load ptr, ptr %i.ca, align 8, !tbaa !333, !nonnull !15, !align !16
  call void @_ZN4llvm3orc22getObjectFileInterfaceERNS0_16ExecutionSessionENS_15MemoryBufferRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.241") align 8 %15, ptr noundef nonnull align 8 dereferenceable(392) %i.fg, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %14) #23
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 16
  %i.fj = trunc i8 %i.fi to i1
  br i1 %i.fj, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i69, label %bb.w

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i69: ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.fk = load i64, ptr %15, align 16, !tbaa !49, !noalias !387
  %i.fl = inttoptr i64 %i.fk to ptr
  store ptr null, ptr %15, align 16, !tbaa !49, !noalias !387
  store ptr %i.fl, ptr %0, align 8, !tbaa !133, !alias.scope !387
  br label %.critedge42

bb.w:                                             ; preds = %bb.v
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !390, !nonnull !15, !align !16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 176
  call void @_ZN4llvm12MemoryBuffer12getMemBufferENS_15MemoryBufferRefEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.10") align 8 %16, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %14, i1 noundef zeroext false) #23
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fq = load <2 x ptr>, ptr %15, align 16, !tbaa !101
  store ptr null, ptr %15, align 16, !tbaa !296
  store <2 x ptr> %i.fq, ptr %17, align 16, !tbaa !101
  store ptr null, ptr %i.fp, align 8, !tbaa !211
  %i.fr = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.fu = load <2 x i32>, ptr %i.fs, align 16, !tbaa !102
  store i32 0, ptr %i.fs, align 16, !tbaa !102
  store <2 x i32> %i.fu, ptr %i.fr, align 16, !tbaa !102
  store i32 0, ptr %i.ft, align 4, !tbaa !102
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !302
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !302
  store ptr null, ptr %i.fw, align 8, !tbaa !302
  call void @_ZN4llvm3orc11ObjectLayer3addERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EENS0_19MaterializationUnit9InterfaceE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr nofree noundef nonnull align 8 dereferenceable(32) %17)
  call void @_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %17) #23
  %i.fy = load ptr, ptr %16, align 8, !tbaa !54   ; 3 uses
  %.not.i70 = icmp eq ptr %i.fy, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.w
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !84
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(24) %i.fy) #23, !inline_history !87
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  %i.gc = load ptr, ptr %0, align 8, !tbaa !133
  %.not151 = icmp eq ptr %i.gc, null
  br i1 %.not151, label %_ZN4llvm5ErrorD2Ev.exit71, label %.critedge42

_ZN4llvm5ErrorD2Ev.exit71:                        ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ge = load atomic i8, ptr %i.gd seq_cst, align 8, !range !100, !noundef !15
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !391, !range !100, !noundef !15
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !392 ; 2 uses
  br i1 %i.gi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper19loadStaticVCRuntimeB5cxx11ERNS0_8JITDylibEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.246") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %i.gk, ptr noundef nonnull align 8 dereferenceable(272) %2, i1 noundef zeroext false) #23
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper20loadDynamicVCRuntimeB5cxx11ERNS0_8JITDylibEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.246") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %i.gk, ptr noundef nonnull align 8 dereferenceable(272) %2, i1 noundef zeroext false) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.gm = load i8, ptr %i.gl, align 8
  %i.gn = trunc i8 %i.gm to i1
  br i1 %i.gn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i74, label %bb.ab

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i74: ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.go = load i64, ptr %18, align 8, !tbaa !49, !noalias !393
  %i.gp = inttoptr i64 %i.go to ptr
  store ptr null, ptr %18, align 8, !tbaa !49, !noalias !393
  store ptr %i.gp, ptr %0, align 8, !tbaa !133, !alias.scope !393
  br label %.critedge47

bb.ab:                                            ; preds = %bb.aa
  %i.gq = load ptr, ptr %18, align 8, !tbaa !396  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !396 ; 2 uses
  %.not152155 = icmp eq ptr %i.gq, %i.gs
  br i1 %.not152155, label %.critedge45, label %_ZN4llvm5ErrorD2Ev.exit75.lr.ph

_ZN4llvm5ErrorD2Ev.exit75.lr.ph:                  ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZN4llvm5ErrorD2Ev.exit75

bb.ac:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit75
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0109.0156, i64 32 ; 2 uses
  %.not152 = icmp eq ptr %i.gv, %i.gs
  br i1 %.not152, label %.critedge45, label %_ZN4llvm5ErrorD2Ev.exit75

_ZN4llvm5ErrorD2Ev.exit75:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit75.lr.ph, %bb.ac
  %.sroa.0109.0156 = phi ptr [ %i.gq, %_ZN4llvm5ErrorD2Ev.exit75.lr.ph ], [ %i.gv, %bb.ac ] ; 3 uses
  %i.gw = load ptr, ptr %.sroa.0109.0156, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0109.0156, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !34
  %i.gz = load ptr, ptr %i.gu, align 8, !tbaa !398, !noalias !399
  call void %i.gz(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.gt, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr %i.gw, i64 %i.gy) #23, !inline_history !402
  %i.ha = load ptr, ptr %0, align 8, !tbaa !133
  %.not154 = icmp eq ptr %i.ha, null
  br i1 %.not154, label %bb.ac, label %.critedge47

.critedge45:                                      ; preds = %bb.ac, %bb.ab
  %i.hb = load i8, ptr %i.gg, align 8, !tbaa !391, !range !100, !noundef !15
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ad, label %.critedge48

bb.ad:                                            ; preds = %.critedge45
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !392
  call void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper25initializeStaticVCRuntimeERNS0_8JITDylibE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %i.he, ptr noundef nonnull align 8 dereferenceable(272) %2) #23
  %i.hf = load ptr, ptr %0, align 8, !tbaa !133
  %.not153 = icmp eq ptr %i.hf, null
  br i1 %.not153, label %.critedge48, label %.critedge47

.critedge48:                                      ; preds = %bb.ad, %.critedge45
  call void @_ZN4llvm8ExpectedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.ae

.critedge47:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit75, %bb.ad, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i74
  call void @_ZN4llvm8ExpectedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.critedge42

bb.ae:                                            ; preds = %.critedge48, %_ZN4llvm5ErrorD2Ev.exit71
  %i.hg = load ptr, ptr %i.ca, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.hh = load ptr, ptr %i.fm, align 8, !tbaa !390, !nonnull !15, !align !16
  call void @_ZN4llvm3orc28DLLImportDefinitionGenerator6CreateERNS0_16ExecutionSessionERNS0_18ObjectLinkingLayerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.254") align 8 %19, ptr noundef nonnull align 8 dereferenceable(392) %i.hg, ptr noundef nonnull align 8 dereferenceable(192) %i.hh) #23
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !135, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %2, ptr %4, align 8, !tbaa !403
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %19, ptr %i.hk, align 8, !tbaa !406
  call void @_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS6_St14default_deleteIS6_EEEUlvE_EEDcOS6_(ptr noundef nonnull align 8 dereferenceable(392) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.hl = load ptr, ptr %19, align 8, !tbaa !407  ; 3 uses
  %.not.i77 = icmp eq ptr %i.hl, null
  br i1 %.not.i77, label %_ZN4llvm5ErrorD2Ev.exit78, label %_ZNKSt14default_deleteIN4llvm3orc28DLLImportDefinitionGeneratorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc28DLLImportDefinitionGeneratorEEclEPS2_.exit.i: ; preds = %bb.ae
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !84
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(152) %i.hl) #23, !inline_history !409
  br label %_ZN4llvm5ErrorD2Ev.exit78

_ZN4llvm5ErrorD2Ev.exit78:                        ; preds = %_ZNKSt14default_deleteIN4llvm3orc28DLLImportDefinitionGeneratorEEclEPS2_.exit.i, %bb.ae
  store ptr null, ptr %0, align 8, !tbaa !133
  br label %.critedge42

.critedge42:                                      ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %.critedge47, %_ZN4llvm5ErrorD2Ev.exit78, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i69
  %i.hp = load i8, ptr %i.fh, align 16
  %i.hq = trunc i8 %i.hp to i1
  br i1 %i.hq, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %.critedge42
  %i.hr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !112 ; 2 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %notsub.i.i.i.i.i = add i64 %i.ht, -1
  %i.hu = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.hu, label %bb.ag, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hw = atomicrmw sub ptr %i.hv, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i:       ; preds = %bb.ag, %bb.af
  %i.hx = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !297 ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i
  %i.ia = load ptr, ptr %15, align 16, !tbaa !298
  %i.ib = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !299
  %i.id = zext i32 %i.hy to i64
  %i.ie = add nuw nsw i64 %i.id, 31
  %i.if = lshr i64 %i.ie, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i.i.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ii = shl i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.ah

bb.ah:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.ih, %.lr.ph.i.i.i.i ], [ %i.it, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.ij = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.ik = or disjoint i32 %i.ij, %i.ii
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !112 ; 2 uses
  %i.io = ptrtoint ptr %i.in to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.io, -1
  %i.ip = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.ip, label %bb.ai, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ir = atomicrmw sub ptr %i.iq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.is = add i32 %.0.i3.i.i.i.i, -1
  %i.it = and i32 %i.is, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.it, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ah, !llvm.loop !300

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i79 = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.if
  br i1 %.not.i.i.i.i.i79, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.hx, align 4, !tbaa !297 ; 2 uses
  %i.iu = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.iu, label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i
  %i.iv = load ptr, ptr %15, align 16, !tbaa !298
  %i.iw = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.ix = shl nuw nsw i64 %i.iw, 4
  %i.iy = add nuw nsw i64 %i.iw, 31
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = and i64 %i.iz, 1073741820
  %i.jb = add nuw nsw i64 %i.ja, %i.ix
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.iv, i64 noundef %i.jb, i64 noundef 8) #23
  br label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit

bb.ak:                                            ; preds = %.critedge42
  %i.jc = load ptr, ptr %15, align 16, !tbaa !49  ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i80, label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i81

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i81: ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !84
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %i.jc) #23, !inline_history !410
  br label %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit

_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i, %bb.aj, %bb.ak, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pre158 = load i8, ptr %i.fb, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66
  %i.jg = phi i8 [ %.pre158, %_ZN4llvm8ExpectedINS_3orc19MaterializationUnit9InterfaceEED2Ev.exit ], [ %i.fc, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i66 ]
  %i.jh = trunc i8 %i.jg to i1
  br i1 %i.jh, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.ji = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i83, label %.critedge, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i84

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i84: ; preds = %bb.am
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !84
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.ji) #23, !inline_history !411
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i84, %bb.am, %bb.al, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.jm = load i32, ptr %i.cv, align 4, !tbaa !106 ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit102, label %.lr.ph7.preheader.i.i85

.lr.ph7.preheader.i.i85:                          ; preds = %.critedge
  %i.jo = load ptr, ptr %11, align 16, !tbaa !110
  %i.jp = load ptr, ptr %i.ct, align 8, !tbaa !111
  %i.jq = zext i32 %i.jm to i64
  %i.jr = add nuw nsw i64 %i.jq, 31
  %i.js = lshr i64 %i.jr, 5
  br label %.lr.ph7.i.i86

.lr.ph7.i.i86:                                    ; preds = %._crit_edge.i.i97, %.lr.ph7.preheader.i.i85
  %indvars.iv.i.i87 = phi i64 [ 0, %.lr.ph7.preheader.i.i85 ], [ %indvars.iv.next.i.i98, %._crit_edge.i.i97 ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i.i87
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i88 = icmp eq i32 %i.ju, 0
  br i1 %.not11.i2.i.i88, label %._crit_edge.i.i97, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph7.i.i86
  %indvars.iv.tr.i.i90 = trunc i64 %indvars.iv.i.i87 to i32
  %i.jv = shl i32 %indvars.iv.tr.i.i90, 5
  br label %bb.an

bb.an:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i95, %.lr.ph.i.i89
  %.0.i3.i.i91 = phi i32 [ %i.ju, %.lr.ph.i.i89 ], [ %i.km, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i95 ] ; 3 uses
  %i.jw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i91, i1 true)
  %i.jx = or disjoint i32 %i.jw, %i.jv
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !112 ; 2 uses
  %i.kc = ptrtoint ptr %i.kb to i64
  %notsub.i.i.i.i.i.i.i92 = add i64 %i.kc, -1
  %i.kd = icmp ult i64 %notsub.i.i.i.i.i.i.i92, -32
  br i1 %i.kd, label %bb.ao, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i93

bb.ao:                                            ; preds = %bb.an
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kf = atomicrmw sub ptr %i.ke, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i93

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i93: ; preds = %bb.ao, %bb.an
  %i.kg = load ptr, ptr %i.jz, align 8, !tbaa !112 ; 2 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %notsub.i.i.i.i.i.i94 = add i64 %i.kh, -1
  %i.ki = icmp ult i64 %notsub.i.i.i.i.i.i94, -32
  br i1 %i.ki, label %bb.ap, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i95

bb.ap:                                            ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i93
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kk = atomicrmw sub ptr %i.kj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i95

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i95: ; preds = %bb.ap, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i93
  %i.kl = add i32 %.0.i3.i.i91, -1
  %i.km = and i32 %i.kl, %.0.i3.i.i91             ; 2 uses
  %.not11.i.i.i96 = icmp eq i32 %i.km, 0
  br i1 %.not11.i.i.i96, label %._crit_edge.i.i97, label %bb.an, !llvm.loop !115

._crit_edge.i.i97:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i95, %.lr.ph7.i.i86
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i87, 1 ; 2 uses
  %.not.i.i.i99 = icmp eq i64 %indvars.iv.next.i.i98, %i.js
  br i1 %.not.i.i.i99, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i100, label %.lr.ph7.i.i86, !llvm.loop !117

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i100: ; preds = %._crit_edge.i.i97
  %.pr.i101 = load i32, ptr %i.cv, align 4, !tbaa !106 ; 2 uses
  %i.kn = icmp eq i32 %.pr.i101, 0
  br i1 %i.kn, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit102, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i100
  %i.ko = load ptr, ptr %11, align 16, !tbaa !110
  %i.kp = zext i32 %.pr.i101 to i64               ; 2 uses
  %i.kq = mul nuw nsw i64 %i.kp, 24
  %i.kr = add nuw nsw i64 %i.kp, 31
  %i.ks = lshr i64 %i.kr, 3
  %i.kt = and i64 %i.ks, 1073741820
  %i.ku = add nuw nsw i64 %i.kt, %i.kq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ko, i64 noundef %i.ku, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit102

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit102: ; preds = %.critedge, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i100, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %_ZNSt10unique_ptrIN12_GLOBAL__N_129COFFHeaderMaterializationUnitESt14default_deleteIS1_EED2Ev.exit, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit102
  ret void
}

declare void @_ZN4llvm3orc16ExecutionSession6lookupENS_8ArrayRefIPNS0_8JITDylibEEENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.236") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr, i64, ptr nofree noundef align 8 dereferenceable(8), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm3orcL10addAliasesERNS0_16ExecutionSessionERNS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEENS_8ArrayRefISt4pairIPKcSG_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree readonly captures(address) %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %5 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 4 uses
  %.idx = shl nuw nsw i64 %3, 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not25 = icmp eq i64 %3, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit16, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit16
  %.026 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit16 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = load ptr, ptr %.026, align 8, !tbaa !412 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ]
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !17, !noalias !414
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182, !noalias !417
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr %i.c, i64 %.sroa.0.0.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !420  ; 3 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %_ZN4llvm9StringRefC2EPKc.exit13, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #23
  br label %_ZN4llvm9StringRefC2EPKc.exit13

_ZN4llvm9StringRefC2EPKc.exit13:                  ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.d
  %.sroa.0.0.i12 = phi i64 [ %i.j, %bb.d ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit ]
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17, !noalias !421
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !182, !noalias !424
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr %i.i, i64 %.sroa.0.0.i12)
  %i.n = load ptr, ptr %5, align 8, !tbaa !302
  store ptr null, ptr %5, align 8, !tbaa !302
  %i.o = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.o, 0 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %notsub.i.i.i.i = add i64 %i.r, -1
  %i.s = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.s, label %bb.e, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit13
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit:       ; preds = %bb.e, %_ZN4llvm9StringRefC2EPKc.exit13
  store ptr %i.n, ptr %i.p, align 8, !tbaa !302
  %i.v = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i16 4096, ptr %i.v, align 8
  %i.w = load ptr, ptr %5, align 8, !tbaa !112    ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %notsub.i.i.i = add i64 %i.x, -1
  %i.y = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.y, label %bb.f, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit, %bb.f
  %i.ab = load ptr, ptr %4, align 8, !tbaa !112   ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %notsub.i.i.i15 = add i64 %i.ac, -1
  %i.ad = icmp ult i64 %notsub.i.i.i15, -32
  br i1 %i.ad, label %bb.g, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit16

bb.g:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit16

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit16:         ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %.026, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm3orc12COFFPlatform18requiredCXXAliasesEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @_ZZN4llvm3orc12COFFPlatform18requiredCXXAliasesEvE18RequiredCXXAliases, i64 3 }
}

declare void @_ZN4llvm3orc22getObjectFileInterfaceERNS0_16ExecutionSessionENS_15MemoryBufferRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.241") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc11ObjectLayer3addERNS0_8JITDylibESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EENS0_19MaterializationUnit9InterfaceE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef align 8 dereferenceable(8) %3, ptr nofree noundef align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.10", align 8 ; 3 uses
  %7 = alloca %"struct.llvm::orc::MaterializationUnit::Interface", align 16 ; 8 uses
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(272) %2) #23
  %i.a = load i64, ptr %3, align 8, !tbaa !54
  store i64 %i.a, ptr %6, align 8, !tbaa !54
  store ptr null, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !101
  store ptr null, ptr %4, align 8, !tbaa !296
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !101
  store ptr null, ptr %i.c, align 8, !tbaa !211
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = load <2 x i32>, ptr %i.f, align 8, !tbaa !102
  store i32 0, ptr %i.f, align 8, !tbaa !102
  store <2 x i32> %i.i, ptr %i.e, align 16, !tbaa !102
  store i32 0, ptr %i.h, align 4, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !302
  store ptr %i.l, ptr %i.j, align 8, !tbaa !302
  store ptr null, ptr %i.k, align 8, !tbaa !302
  %i.m = load ptr, ptr %1, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #23
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !112  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %notsub.i.i.i.i = add i64 %i.q, -1
  %i.r = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.r, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.b, %bb.a
  %i.u = load i32, ptr %i.g, align 4, !tbaa !297  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.w = load ptr, ptr %7, align 16, !tbaa !298
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !299
  %i.y = zext i32 %i.u to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.ad = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ae = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.aj, -1
  %i.ak = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ak, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = atomicrmw sub ptr %i.al, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.an = add i32 %.0.i3.i.i.i, -1
  %i.ao = and i32 %i.an, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !300

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.g, align 4, !tbaa !297 ; 2 uses
  %i.ap = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ap, label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.aq = load ptr, ptr %7, align 16, !tbaa !298
  %i.ar = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #23
  br label %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit

_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  %i.ax = load ptr, ptr %6, align 8, !tbaa !54    ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #23, !inline_history !87
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev.exit, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !124   ; 4 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %.not.i.i.i.i2 = icmp eq i32 %i.bc, 1
  br i1 %.not.i.i.i.i2, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bb) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.bb, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.f, %bb.g
  ret void
}

declare void @_ZN4llvm12MemoryBuffer12getMemBufferENS_15MemoryBufferRefEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.10") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc19MaterializationUnit9InterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %notsub.i.i.i = add i64 %i.c, -1
  %i.d = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.d, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !297  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !298
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !299
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !102  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.r = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %notsub.i.i.i.i.i.i = add i64 %i.x, -1
  %i.y = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.y, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ab = add i32 %.0.i3.i.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !300

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.o
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.g, align 4, !tbaa !297 ; 2 uses
  %i.ad = icmp eq i32 %.pr.i, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.ae = load ptr, ptr %0, align 8, !tbaa !298
  %i.af = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  ret void
}

declare void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper19loadStaticVCRuntimeB5cxx11ERNS0_8JITDylibEb(ptr dead_on_unwind writable sret(%"class.llvm::Expected.246") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(272), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper20loadDynamicVCRuntimeB5cxx11ERNS0_8JITDylibEb(ptr dead_on_unwind writable sret(%"class.llvm::Expected.246") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(272), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper25initializeStaticVCRuntimeERNS0_8JITDylibE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8ExpectedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !101    ; 6 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !427  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !39
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !429

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !430
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %bb.b
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !431
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i: ; preds = %bb.d
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23, !inline_history !432
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i, %bb.d, %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  ret void
}

declare void @_ZN4llvm3orc28DLLImportDefinitionGenerator6CreateERNS0_16ExecutionSessionERNS0_18ObjectLinkingLayerE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.254") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform16teardownJITDylibERNS0_8JITDylibE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.748, align 1            ; 3 uses
  %4 = alloca %class.anon.746, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #24
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !433, !noalias !434 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !443, !noalias !434 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.h = load i32, ptr %i.g, align 4, !tbaa !444, !noalias !434 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !102, !noalias !445
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !446

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.ad, %bb.d ], [ %i.q, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !371, !noalias !445
  %i.aa = icmp eq ptr %2, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw i32 %.017.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102, !noalias !445
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !448

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ak = zext i32 %i.h to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ak
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit ], [ %i.al, %.loopexit.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.am
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.e
end_hunk_1
begin_hunk_2_@_ZN4llvm3orc12COFFPlatform32associateRuntimeSupportFunctionsERNS0_8JITDylibE:bb.a
  %5 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %6 = alloca %"class.llvm::unique_function.351", align 8 ; 11 uses
  %7 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %8 = alloca %"class.llvm::DenseMap.349", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %1, ptr %4, align 8, !alias.scope !513
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 ptrtoint (ptr @_ZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefE to i64), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !513
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !513
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !516
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEESF_NS4_11SPSSequenceIcEEEZNSC_16wrapAsyncWithSPSISJ_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedINS3_12ExecutorAddrEEEEEESN_NS_9StringRefEEEENS2_IFvS7_S9_mEEEPT0_MSU_FvDpT1_EEUlOSQ_OSN_OSR_E_EEST_OSU_EUlS7_S9_mE_S15_EET_NSA_8CalledAsISU_EEENUlPKSA_RS7_S9_mE_8__invokeES1A_S1B_S9_m, ptr %i.a, align 8, !tbaa !519, !alias.scope !516
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17, !noalias !521
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !182, !noalias !524
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr nonnull @.str.30, i64 31)
  %i.i = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.i, 0 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 4 uses
  %i.k = icmp eq ptr %i.j, %4
  br i1 %i.k, label %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !527  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.thread, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.thread: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 32
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEESF_NS4_11SPSSequenceIcEEEZNSC_16wrapAsyncWithSPSISJ_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedINS3_12ExecutorAddrEEEEEESN_NS_9StringRefEEEENS2_IFvS7_S9_mEEEPT0_MSU_FvDpT1_EEUlOSQ_OSN_OSR_E_EEST_OSU_EUlS7_S9_mE_S15_EET_NSA_8CalledAsISU_EEENUlPKSA_RS7_S9_mE_8__invokeES1A_S1B_S9_m, ptr %i.n, align 8, !tbaa !519
  br label %bb.d

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i: ; preds = %bb.b
  call void %i.m(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.j) #23, !inline_history !528
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 32
  %.pre37 = load ptr, ptr %i.b, align 8, !tbaa !527 ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.a, align 8, !tbaa !101
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !101
  %.not.i5.i.i = icmp eq ptr %.pre37, null
  br i1 %.not.i5.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i
  call void %.pre37(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %4) #23, !inline_history !529
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i

bb.d:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.thread, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 24, i1 false)
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit

_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit: ; preds = %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i
  %i.q = load ptr, ptr %5, align 8, !tbaa !112    ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %notsub.i.i.i = add i64 %i.r, -1
  %i.s = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.s, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.thread

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.thread:    ; preds = %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 seq_cst, align 8 ; 0 uses
  %.pre38 = load ptr, ptr %i.b, align 8, !tbaa !527 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i = icmp eq ptr %.pre38, null
  br i1 %.not.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  call void %.pre38(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %4) #23, !inline_history !530
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.thread, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %1, ptr %6, align 8, !alias.scope !531
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 ptrtoint (ptr @_ZN4llvm3orc12COFFPlatform19rt_pushInitializersENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEES6_ to i64), ptr %.sroa.4.0..sroa_idx.i4, align 8, !alias.scope !531
  %.sroa.5.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i5, align 8, !alias.scope !531
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 0, ptr %i.w, align 8, !alias.scope !534
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_11SPSSequenceINS4_8SPSTupleIJNS4_15SPSExecutorAddrENSF_ISH_EEEEEEEEESH_EZNSC_16wrapAsyncWithSPSISM_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedISt6vectorISt4pairINS3_12ExecutorAddrESQ_ISS_SaISS_EEESaISV_EEEEEEESS_EEENS2_IFvS7_S9_mEEEPT0_MS13_FvDpT1_EEUlOS10_OSS_E_EES12_OS13_EUlS7_S9_mE_S1D_EET_NSA_8CalledAsIS13_EEENUlPKSA_RS7_S9_mE_8__invokeES1I_S1J_S9_m, ptr %i.v, align 8, !tbaa !519, !alias.scope !534
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17, !noalias !537
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182, !noalias !540
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr nonnull @.str.31, i64 35)
  %i.ac = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i6 = extractvalue { ptr, i8 } %i.ac, 0 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i6, i64 8 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, %6
  br i1 %i.ae, label %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit11, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i6, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i7, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i8, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.ag(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #23, !inline_history !528
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i8

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i8: ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i6, i64 32
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !527 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.v, align 8, !tbaa !101
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !101
  %.not.i5.i.i9 = icmp eq ptr %i.ai, null
  br i1 %.not.i5.i.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %6) #23, !inline_history !529
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i10

bb.i:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 24, i1 false)
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i10

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i10: ; preds = %bb.i, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit11

_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit11: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC2EOSA_.exit.i.i10
  %i.ak = load ptr, ptr %7, align 8, !tbaa !112   ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %notsub.i.i.i12 = add i64 %i.al, -1
  %i.am = icmp ult i64 %notsub.i.i.i12, -32
  br i1 %i.am, label %bb.j, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit13

bb.j:                                             ; preds = %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit13

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit13:         ; preds = %_ZN4llvm15unique_functionIFvNS0_IFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEaSEOS9_.exit11, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !527 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ap, null
  br i1 %.not.i14, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit13
  call void %i.ap(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %6) #23, !inline_history !530
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.as = load <2 x ptr>, ptr %3, align 16, !tbaa !101
  store ptr null, ptr %3, align 16, !tbaa !543
  store <2 x ptr> %i.as, ptr %8, align 16, !tbaa !101
  store ptr null, ptr %i.ar, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.ax = load <2 x i32>, ptr %i.au, align 16, !tbaa !102
  store i32 0, ptr %i.au, align 16, !tbaa !102
  store <2 x i32> %i.ax, ptr %i.at, align 16, !tbaa !102
  store i32 0, ptr %i.aw, align 4, !tbaa !102
  call void @_ZN4llvm3orc16ExecutionSession27registerJITDispatchHandlersERNS0_8JITDylibENS_8DenseMapINS0_15SymbolStringPtrENS_15unique_functionIFvNS6_IFvNS0_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %i.aq, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %8) #23
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !545 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bb = load ptr, ptr %8, align 16, !tbaa !547
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !548
  %i.bd = zext i32 %i.ay to i64
  %i.be = add nuw nsw i64 %i.bd, 31
  %i.bf = lshr i64 %i.be, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.bi = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.bh, %.lr.ph.i.i ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void %i.bo(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.bp) #23, !inline_history !549
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !112 ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %notsub.i.i.i.i.i.i = add i64 %i.br, -1
  %i.bs = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.bs, label %bb.n, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.n:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.n, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i
  %i.bv = add i32 %.0.i3.i.i, -1
  %i.bw = and i32 %i.bv, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !550

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i16 = icmp eq i64 %indvars.iv.next.i.i, %i.bf
  br i1 %.not.i.i.i16, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !551

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.av, align 4, !tbaa !545 ; 2 uses
  %i.bx = icmp eq i32 %.pr.i, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i
  %i.by = load ptr, ptr %8, align 16, !tbaa !547
  %i.bz = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 48
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i, %bb.o
  %i.cf = load i32, ptr %i.aw, align 4, !tbaa !545 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34, label %.lr.ph7.preheader.i.i17

.lr.ph7.preheader.i.i17:                          ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit
  %i.ch = load ptr, ptr %3, align 16, !tbaa !547
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !548
  %i.cj = zext i32 %i.cf to i64
  %i.ck = add nuw nsw i64 %i.cj, 31
  %i.cl = lshr i64 %i.ck, 5
  br label %.lr.ph7.i.i18

.lr.ph7.i.i18:                                    ; preds = %._crit_edge.i.i29, %.lr.ph7.preheader.i.i17
  %indvars.iv.i.i19 = phi i64 [ 0, %.lr.ph7.preheader.i.i17 ], [ %indvars.iv.next.i.i30, %._crit_edge.i.i29 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i19
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i20 = icmp eq i32 %i.cn, 0
  br i1 %.not11.i2.i.i20, label %._crit_edge.i.i29, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph7.i.i18
  %indvars.iv.tr.i.i22 = trunc i64 %indvars.iv.i.i19 to i32
  %i.co = shl i32 %indvars.iv.tr.i.i22, 5
  br label %bb.p

bb.p:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27, %.lr.ph.i.i21
  %.0.i3.i.i23 = phi i32 [ %i.cn, %.lr.ph.i.i21 ], [ %i.dc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27 ] ; 3 uses
  %i.cp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i23, i1 true)
  %i.cq = or disjoint i32 %i.cp, %i.co
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i24, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void %i.cu(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.cv) #23, !inline_history !549
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25: ; preds = %bb.q, %bb.p
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !112 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %notsub.i.i.i.i.i.i26 = add i64 %i.cx, -1
  %i.cy = icmp ult i64 %notsub.i.i.i.i.i.i26, -32
  br i1 %i.cy, label %bb.r, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27

bb.r:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = atomicrmw sub ptr %i.cz, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27: ; preds = %bb.r, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25
  %i.db = add i32 %.0.i3.i.i23, -1
  %i.dc = and i32 %i.db, %.0.i3.i.i23             ; 2 uses
  %.not11.i.i.i28 = icmp eq i32 %i.dc, 0
  br i1 %.not11.i.i.i28, label %._crit_edge.i.i29, label %bb.p, !llvm.loop !550

._crit_edge.i.i29:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27, %.lr.ph7.i.i18
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %.not.i.i.i31 = icmp eq i64 %indvars.iv.next.i.i30, %i.cl
  br i1 %.not.i.i.i31, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32, label %.lr.ph7.i.i18, !llvm.loop !551

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32: ; preds = %._crit_edge.i.i29
  %.pr.i33 = load i32, ptr %i.aw, align 4, !tbaa !545 ; 2 uses
  %i.dd = icmp eq i32 %.pr.i33, 0
  br i1 %i.dd, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32
  %i.de = load ptr, ptr %3, align 16, !tbaa !547
  %i.df = zext i32 %.pr.i33 to i64                ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 48
  %i.dh = add nuw nsw i64 %i.df, 31
  %i.di = lshr i64 %i.dh, 3
  %i.dj = and i64 %i.di, 1073741820
  %i.dk = add nuw nsw i64 %i.dj, %i.dg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.de, i64 noundef %i.dk, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform20bootstrapCOFFRuntimeERNS0_8JITDylibE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) local_unnamed_addr #0 align 2 {
_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i:
  %3 = alloca %"class.llvm::orc::shared::SPSEmpty", align 1 ; 3 uses
  %4 = alloca %class.anon.872, align 8            ; 5 uses
  %5 = alloca %"class.llvm::orc::shared::SPSEmpty", align 1 ; 3 uses
  %6 = alloca %class.anon.871, align 8            ; 5 uses
  %7 = alloca %"class.llvm::orc::shared::SPSEmpty", align 1 ; 3 uses
  %8 = alloca %class.anon.832, align 8            ; 5 uses
  %9 = alloca %"class.std::vector.133", align 8   ; 7 uses
  %10 = alloca %"class.std::vector.366", align 8  ; 7 uses
  %11 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %12 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %13 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %14 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %15 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %16 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %17 = alloca %"struct.std::pair.374", align 8   ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.std::pair.374", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !552 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %2, ptr %i.e, align 8, !noalias !552
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !552
  store ptr %i.g, ptr %i.f, align 8, !tbaa !555, !alias.scope !552
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !333
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !552
  store ptr %i.e, ptr %9, align 8, !alias.scope !552
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17, !noalias !556
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182, !noalias !559
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr nonnull @.str.37, i64 32)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.m = load ptr, ptr %11, align 8, !tbaa !302   ; 4 uses
  store ptr null, ptr %11, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17, !noalias !562
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182, !noalias !565
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr nonnull @.str.38, i64 31)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.t = load ptr, ptr %12, align 8, !tbaa !302   ; 4 uses
  store ptr null, ptr %12, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17, !noalias !568
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !182, !noalias !571
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr nonnull @.str.39, i64 31)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.aa = load ptr, ptr %13, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %13, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17, !noalias !574
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !182, !noalias !577
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr nonnull @.str.40, i64 33)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ah = load ptr, ptr %14, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %14, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !580
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !182, !noalias !583
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr nonnull @.str.41, i64 38)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ao = load ptr, ptr %15, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %15, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17, !noalias !586
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !182, !noalias !589
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr nonnull @.str.42, i64 40)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.av = load ptr, ptr %16, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %16, align 8, !tbaa !302
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.aw, align 8
  %i.ax = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25 ; 15 uses
  store ptr %i.ax, ptr %10, align 8, !tbaa !592
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !595
  store ptr %i.m, ptr %i.ax, align 8, !tbaa !112
  %i.ba = ptrtoint ptr %i.m to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ba, -1
  %i.bb = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32 ; 2 uses
  br i1 %i.bb, label %bb.a, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bd = atomicrmw add ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.l, ptr %i.be, align 8, !tbaa !596
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.t, ptr %i.bf, align 8, !tbaa !112
  %i.bg = ptrtoint ptr %i.t to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.1 = add i64 %i.bg, -1
  %i.bh = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.1, -32 ; 2 uses
  br i1 %i.bh, label %bb.b, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.b:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bj = atomicrmw add ptr %i.bi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.b, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.s, ptr %i.bk, align 8, !tbaa !596
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.aa, ptr %i.bl, align 8, !tbaa !112
  %i.bm = ptrtoint ptr %i.aa to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.2 = add i64 %i.bm, -1
  %i.bn = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.2, -32 ; 2 uses
  br i1 %i.bn, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

bb.c:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
end_hunk_2
begin_hunk_3_@_ZN4llvm3orc12COFFPlatform13buildJDDepMapERNS0_8JITDylibE:bb.a
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !661, !noalias !659
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp ugt i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE7reserveEm.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 24
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull %i.ak, i64 noundef %i.af, i64 noundef 8) #23, !noalias !659
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !663, !noalias !659
  %.pre21.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !663, !noalias !659
  br label %_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE7reserveEm.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE7reserveEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i.i
  %i.al = phi ptr [ %i.aa, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i.i ], [ %.pre21.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %i.ab, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not19.i.i.i.i.i.i, label %"_ZN4llvm3orc8JITDylib15withLinkOrderDoIZZNS0_12COFFPlatform13buildJDDepMapERS1_ENK3$_0clEvEUlRKSt6vectorISt4pairIPS1_NS0_19JITDylibLookupFlagsEESaISA_EEE_EEDTclfp_clL_ZSt7declvalISE_EDTcl9__declvalIT_ELi0EEEvEEEEOSH_.exit.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE7reserveEm.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.014.020.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.cs, %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i ] ; 6 uses
  %i.ao = load ptr, ptr %.sroa.014.020.i.i.i.i.i.i, align 8, !tbaa !664, !noalias !659
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !371, !noalias !659
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #23, !noalias !659 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #24, !noalias !659
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.as = load ptr, ptr %.sroa.014.020.i.i.i.i.i.i, align 8, !tbaa !664, !noalias !659 ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !433, !noalias !667
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !443, !noalias !667 ; 2 uses
  %i.av = load i32, ptr %i.k, align 4, !tbaa !444, !noalias !667 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countEPKS3_.exit.thread.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i.i.i
  %i.ax = add i32 %i.av, -1                       ; 2 uses
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = mul i64 %i.ay, -4658895280553007687     ; 2 uses
  %i.ba = lshr i64 %i.az, 31
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.ax, %i.bc                    ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102, !noalias !659
  %i.bi = and i32 %i.bd, 31
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countEPKS3_.exit.thread.i.i.i.i.i.i, !prof !446

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %bb.j
  %i.bl = phi i64 [ %i.br, %bb.j ], [ %i.be, %bb.i ]
  %.017.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.j ], [ %i.bd, %bb.i ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !371, !noalias !659
  %i.bo = icmp eq ptr %i.as, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.j, !prof !447

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bp = add nuw i32 %.017.i.i.i.i.i.i.i.i.i, 1
  %i.bq = and i32 %i.bp, %i.ax                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !102, !noalias !659
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countEPKS3_.exit.thread.i.i.i.i.i.i, !prof !448

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countEPKS3_.exit.thread.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.i.i.i
  %i.by = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #23, !noalias !659 ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #23, !noalias !659 ; 0 uses
  %i.ca = load ptr, ptr %.sroa.014.020.i.i.i.i.i.i, align 8, !tbaa !664, !noalias !659 ; 2 uses
  %i.cb = load i32, ptr %i.an, align 8, !tbaa !662, !noalias !659 ; 2 uses
  %i.cc = load i32, ptr %i.ag, align 4, !tbaa !661, !noalias !659
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.cb, %i.cc
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.l, !prof !447

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.ca), !noalias !659
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cd = zext i32 %i.cb to i64
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !660, !noalias !659
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  store ptr %i.ca, ptr %i.cf, align 1, !noalias !659
  %i.cg = load i32, ptr %i.an, align 8, !tbaa !662, !noalias !659
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.an, align 8, !tbaa !662, !noalias !659
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.ci = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.020.i.i.i.i.i.i), !noalias !672
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.ci, 1
  %i.cj = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i.i.i to i1
  br i1 %i.cj, label %bb.n, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit.i.i.i.i.i.i
  %i.ck = load ptr, ptr %.sroa.014.020.i.i.i.i.i.i, align 8, !tbaa !664, !noalias !659 ; 2 uses
  %i.cl = load i32, ptr %i.f, align 8, !tbaa !662, !noalias !659 ; 2 uses
  %i.cm = load i32, ptr %i.g, align 4, !tbaa !661, !noalias !659
  %.not.i10.i.i.i.i.i.i = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i10.i.i.i.i.i.i, label %bb.p, label %bb.o, !prof !447

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ck), !noalias !659
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %4, align 8, !tbaa !660, !noalias !659
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  store ptr %i.ck, ptr %i.cp, align 1, !noalias !659
  %i.cq = load i32, ptr %i.f, align 8, !tbaa !662, !noalias !659
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.f, align 8, !tbaa !662, !noalias !659
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit.i.i.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5countEPKS3_.exit.thread.i.i.i.i.i.i, %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.cs, %i.al
  br i1 %.not.i.i3.i.i.i.i, label %"_ZN4llvm3orc8JITDylib15withLinkOrderDoIZZNS0_12COFFPlatform13buildJDDepMapERS1_ENK3$_0clEvEUlRKSt6vectorISt4pairIPS1_NS0_19JITDylibLookupFlagsEESaISA_EEE_EEDTclfp_clL_ZSt7declvalISE_EDTcl9__declvalIT_ELi0EEEvEEEEOSH_.exit.i.i", label %bb.f

"_ZN4llvm3orc8JITDylib15withLinkOrderDoIZZNS0_12COFFPlatform13buildJDDepMapERS1_ENK3$_0clEvEUlRKSt6vectorISt4pairIPS1_NS0_19JITDylibLookupFlagsEESaISA_EEE_EEDTclfp_clL_ZSt7declvalISE_EDTcl9__declvalIT_ELi0EEEvEEEEOSH_.exit.i.i": ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE9push_backES3_.exit11.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE7reserveEm.exit.i.i.i.i.i.i
  %i.ct = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.w) #23, !noalias !659 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !659
  %.pr.i.i = load i32, ptr %i.f, align 8, !tbaa !662, !noalias !659 ; 2 uses
  %.not.i.i3.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not.i.i3.i, label %bb.q, label %bb.c, !llvm.loop !677

bb.q:                                             ; preds = %"_ZN4llvm3orc8JITDylib15withLinkOrderDoIZZNS0_12COFFPlatform13buildJDDepMapERS1_ENK3$_0clEvEUlRKSt6vectorISt4pairIPS1_NS0_19JITDylibLookupFlagsEESaISA_EEE_EEDTclfp_clL_ZSt7declvalISE_EDTcl9__declvalIT_ELi0EEEvEEEEOSH_.exit.i.i"
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !alias.scope !659
  %i.cw = and i8 %i.cv, -2
  store i8 %i.cw, ptr %i.cu, align 8, !alias.scope !659
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cy = load <2 x ptr>, ptr %3, align 16, !tbaa !101, !noalias !659
  store ptr null, ptr %3, align 16, !tbaa !678, !noalias !659
  store <2 x ptr> %i.cy, ptr %0, align 8, !tbaa !101, !alias.scope !659
  store ptr null, ptr %i.cx, align 8, !tbaa !211, !noalias !659
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.dc = load <2 x i32>, ptr %i.da, align 16, !tbaa !102, !noalias !659
  store i32 0, ptr %i.da, align 16, !tbaa !102, !noalias !659
  store <2 x i32> %i.dc, ptr %i.cz, align 8, !tbaa !102, !alias.scope !659
  store i32 0, ptr %i.db, align 4, !tbaa !102, !noalias !659
  %i.dd = load ptr, ptr %4, align 8, !tbaa !660, !noalias !659 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.e
  br i1 %i.de, label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.thread.i.i, label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.thread.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !659
  br label %"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform13buildJDDepMapERNS0_8JITDylibEE3$_0EEDcOT_.exit"

_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.i.i: ; preds = %bb.q
  call void @free(ptr noundef %i.dd) #23, !noalias !659
  %.pr3.i.i = load i32, ptr %i.db, align 4, !tbaa !680, !noalias !659 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !659
  %i.df = icmp eq i32 %.pr3.i.i, 0
  br i1 %i.df, label %"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform13buildJDDepMapERNS0_8JITDylibEE3$_0EEDcOT_.exit", label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.i.i
  %i.dg = load ptr, ptr %3, align 16, !tbaa !682, !noalias !659
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !683, !noalias !659
  %i.di = zext i32 %.pr3.i.i to i64
  %i.dj = add nuw nsw i64 %i.di, 31
  %i.dk = lshr i64 %i.dj, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !102, !noalias !659 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.dn = shl i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.r

bb.r:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.do = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.dp = or disjoint i32 %i.do, %i.dn
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.dg, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !660, !noalias !659 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.dt) #23, !noalias !659
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.dw = add i32 %.0.i3.i.i.i.i, -1
  %i.dx = and i32 %i.dw, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.r, !llvm.loop !684

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.dk
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !685

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.db, align 4, !tbaa !680, !noalias !659 ; 2 uses
  %i.dy = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.dy, label %"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform13buildJDDepMapERNS0_8JITDylibEE3$_0EEDcOT_.exit", label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i
  %i.dz = load ptr, ptr %3, align 16, !tbaa !682, !noalias !659
  %i.ea = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.eb = mul nuw nsw i64 %i.ea, 72
  %i.ec = add nuw nsw i64 %i.ea, 31
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = and i64 %i.ed, 1073741820
  %i.ef = add nuw nsw i64 %i.ee, %i.eb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dz, i64 noundef %i.ef, i64 noundef 8) #23, !noalias !659
  br label %"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform13buildJDDepMapERNS0_8JITDylibEE3$_0EEDcOT_.exit"

"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform13buildJDDepMapERNS0_8JITDylibEE3$_0EEDcOT_.exit": ; preds = %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.thread.i.i, %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !659
  %i.eg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.c) #23, !noalias !653 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef align 8 dereferenceable(40) %1, ptr nofree noundef align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEEC2Ej.exit.thread.i:
  %4 = alloca %class.anon.326, align 8            ; 11 uses
  %5 = alloca %class.anon.562, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %7 = alloca %"class.llvm::DenseSet", align 8    ; 11 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %"class.llvm::DenseMap.179", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.305", align 8   ; 13 uses
  %10 = alloca %"struct.std::pair.321", align 8   ; 7 uses
  %11 = alloca %"class.llvm::Expected.323", align 8 ; 7 uses
  %12 = alloca %"class.llvm::unique_function.47", align 8 ; 5 uses
  %13 = alloca %class.anon.326, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = load ptr, ptr %2, align 8, !tbaa !330    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !660
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 16, ptr %i.f, align 4, !tbaa !661
  store ptr %i.c, ptr %i.d, align 8
  store i32 1, ptr %i.e, align 8, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.c, ptr %i.b, align 8, !tbaa !371
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  store i32 4, ptr %i.g, align 4, !tbaa !686
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 36, i64 noundef 8) #23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !689
  store ptr %i.k, ptr %i.i, align 8, !tbaa !690
  store i32 0, ptr %i.h, align 8, !tbaa !691
  store i32 0, ptr %i.k, align 4
  %i.l = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !692 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !333, !nonnull !15, !align !16 ; 2 uses
  %i.o = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.n) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEEC2Ej.exit.thread.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #24
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEEC2Ej.exit.thread.i
  %i.p = load i32, ptr %i.e, align 8, !tbaa !662  ; 2 uses
  %.not.i36.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i36.i.i, label %"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES6_IS8_SaIS8_EEESaISB_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSI_NS_11SmallVectorISL_Lj6EEENS_12DenseMapInfoISL_vEENS_6detail12DenseMapPairISL_SN_EEEEE3$_0EEDcOT_.exit", label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 276
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph38.i.i
  %i.t = phi i32 [ %i.p, %.lr.ph38.i.i ], [ %i.cj, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = load ptr, ptr %6, align 8, !tbaa !660
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !371  ; 3 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !371
  %i.z = add i32 %i.t, -1
  store i32 %i.z, ptr %i.e, align 8, !tbaa !662
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !699, !noalias !700 ; 3 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !709, !noalias !700 ; 2 uses
  %i.ac = load i32, ptr %i.s, align 4, !tbaa !710, !noalias !700 ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.ae, %i.aj                    ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102, !noalias !711
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !446

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !371, !noalias !711
  %i.av = icmp eq ptr %i.y, %i.au
  br i1 %i.av, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit.i.i, label %bb.d, !prof !447

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.ae                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !102, !noalias !711
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !448

.loopexit.i.i.i.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.bf = zext i32 %i.ac to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.bf
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.ac to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit.i.i ], [ %i.bf, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.loopexit.i.i ], [ %i.bg, %.loopexit.i.i.i.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.pre-phi.i.i
  %.not31.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.bh
  br i1 %.not31.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findEPKS3_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8 ; 2 uses
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bj, 0 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !712 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !464 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !467
  %i.bq = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !713
  store <2 x ptr> %i.bq, ptr %i.bk, align 8, !tbaa !713
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !467
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !467
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
end_hunk_3
begin_hunk_4_@_ZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEE:_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEEC2Ej.exit.thread.i
  br i1 %cmp.n, label %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader256

.lr.ph.i.i.i.i.i.preheader256:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.po, %.lr.ph.i.i.i.i.i.preheader ], [ %i.py, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.059.0106, %.lr.ph.i.i.i.i.i.preheader ], [ %i.pz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader256, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader256 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.qf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader256 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.qe = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !178, !alias.scope !782, !noalias !779
  store i64 %i.qe, ptr %.012.i.i.i.i.i, align 8, !tbaa !178, !alias.scope !779, !noalias !782
  %i.qf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.qf, %.sroa.18.0108
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !787

_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.po, %_ZNKSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.py, %middle.block ], [ %i.qg, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.059.0106, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0106, i64 noundef %i.pg) #26
  br label %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pm
  br label %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.af, %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.059.2 = phi ptr [ %i.po, %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.059.0106, %bb.af ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0107, %bb.af ]
  %.sroa.18.2 = phi ptr [ %i.qh, %_ZNSt6vectorIN4llvm3orc12ExecutorAddrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.18.0108, %bb.af ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0109, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.qi, %i.ki
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %"_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES6_IS8_SaIS8_EEESaISB_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSI_NS_11SmallVectorISL_Lj6EEENS_12DenseMapInfoISL_vEENS_6detail12DenseMapPairISL_SN_EEEEE3$_0EEDcOT_.exit"
  store ptr %0, ptr %13, align 8, !tbaa !788
  %i.qj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !757 ; 2 uses
  store ptr %i.qn, ptr %i.qk, align 8, !tbaa !757
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !792 ; 3 uses
  store ptr %i.qp, ptr %i.ql, align 8, !tbaa !792
  %.not.i.i45 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i45, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(40) %i.qj, ptr noundef nonnull align 8 dereferenceable(40) %1) #23, !inline_history !793
  %.pre = load ptr, ptr %13, align 8, !tbaa !788
  %.pre132 = load ptr, ptr %i.qk, align 8, !tbaa !757
  %.pre133 = load ptr, ptr %i.ql, align 8, !tbaa !792
  br label %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qj, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit

_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit: ; preds = %bb.ak, %bb.al
  %i.qq = phi ptr [ %.pre133, %bb.ak ], [ null, %bb.al ] ; 3 uses
  %i.qr = phi ptr [ %.pre132, %bb.ak ], [ %i.qn, %bb.al ]
  %i.qs = phi ptr [ %.pre, %bb.ak ], [ %0, %bb.al ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, i8 0, i64 16, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store ptr %2, ptr %i.qt, align 8, !tbaa !794
  %i.qu = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.qv = load ptr, ptr %3, align 8, !tbaa !678   ; 2 uses
  store ptr %i.qv, ptr %i.qu, align 8, !tbaa !678
  store ptr null, ptr %3, align 8, !tbaa !678
  %i.qw = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !211 ; 2 uses
  store ptr %i.qy, ptr %i.qw, align 8, !tbaa !211
  store ptr null, ptr %i.qx, align 8, !tbaa !211
  %i.qz = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !102 ; 2 uses
  store i32 %i.rb, ptr %i.qz, align 8, !tbaa !102
  store i32 0, ptr %i.ra, align 8, !tbaa !102
  %i.rc = getelementptr inbounds nuw i8, ptr %13, i64 76 ; 5 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !102 ; 2 uses
  store i32 %i.re, ptr %i.rc, align 4, !tbaa !102
  store i32 0, ptr %i.rd, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.qs, ptr %4, align 8, !tbaa !788
  %i.rf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr %i.qr, ptr %i.rg, align 8, !tbaa !757
  store ptr %i.qq, ptr %i.rh, align 8, !tbaa !792
  %.not.i.i.i.i46 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i.i46, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(40) %i.rf, ptr noundef nonnull align 8 dereferenceable(40) %i.qj) #23, !inline_history !795
  %i.ri = load <2 x ptr>, ptr %i.qt, align 8, !tbaa !101
  %.pre136 = load ptr, ptr %i.qw, align 8, !tbaa !211
  %.pre137 = load i32, ptr %i.qz, align 8, !tbaa !102
  %.pre138 = load i32, ptr %i.rc, align 4, !tbaa !102
  br label %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1C2EOST_.exit.i"

bb.an:                                            ; preds = %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.rf, ptr noundef nonnull align 8 dereferenceable(40) %i.qj, i64 24, i1 false)
  %i.rj = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.rk = insertelement <2 x ptr> %i.rj, ptr %i.qv, i64 1
  br label %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1C2EOST_.exit.i"

"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1C2EOST_.exit.i": ; preds = %bb.an, %bb.am
  %i.rl = phi i32 [ %i.re, %bb.an ], [ %.pre138, %bb.am ]
  %i.rm = phi i32 [ %i.rb, %bb.an ], [ %.pre137, %bb.am ]
  %i.rn = phi ptr [ %i.qy, %bb.an ], [ %.pre136, %bb.am ]
  %i.ro = phi <2 x ptr> [ %i.rk, %bb.an ], [ %i.ri, %bb.am ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false)
  %i.rp = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store <2 x ptr> %i.ro, ptr %i.rp, align 8, !tbaa !101
  store ptr null, ptr %i.qu, align 8, !tbaa !678
  %i.rq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.rn, ptr %i.rq, align 8, !tbaa !211
  store ptr null, ptr %i.qw, align 8, !tbaa !211
  %i.rr = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i32 %i.rm, ptr %i.rr, align 8, !tbaa !102
  store i32 0, ptr %i.qz, align 8, !tbaa !102
  %i.rs = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %i.rl, ptr %i.rs, align 4, !tbaa !102
  store i32 0, ptr %i.rc, align 4, !tbaa !102
  %i.rt = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ru = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 80, i64 noundef 8) #23, !inline_history !796 ; 7 uses
  store ptr %i.ru, ptr %12, align 8, !tbaa !39
  %i.rv = load ptr, ptr %4, align 8, !tbaa !788
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !788
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.ry = load ptr, ptr %i.rh, align 8, !tbaa !792 ; 2 uses
  %i.rz = load <2 x ptr>, ptr %i.rg, align 8, !tbaa !101
  store <2 x ptr> %i.rz, ptr %i.rx, align 8, !tbaa !101
  %.not.i.i.i.i.i47 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i.i.i47, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1C2EOST_.exit.i"
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(40) %i.rw, ptr noundef nonnull align 8 dereferenceable(40) %i.rf) #23, !inline_history !797
  br label %"_ZN4llvm15unique_functionIFvNS_5ErrorEEEC2IZNS_3orc12COFFPlatform20pushInitializersLoopENS0_IFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES8_ISA_SaISA_EEESaISD_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSK_NS_11SmallVectorISN_Lj6EEENS_12DenseMapInfoISN_vEENS_6detail12DenseMapPairISN_SP_EEEEE3$_1EET_PNSt9enable_ifIXntsr3std7is_sameINS_12remove_cvrefISY_E4typeES3_EE5valueEvE4typeEPNSZ_IXsr3std11disjunctionISt7is_voidIvESt7is_sameIDTclclsr3stdE7declvalISY_EEclL_ZSt7declvalIS1_EDTcl9__declvalISY_ELi0EEEvEEEEvES18_IKS1B_vESt14is_convertibleIS1B_vEEE5valueEvE4typeE.exit"

bb.ap:                                            ; preds = %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1C2EOST_.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.rw, ptr noundef nonnull align 8 dereferenceable(40) %i.rf, i64 24, i1 false)
  br label %"_ZN4llvm15unique_functionIFvNS_5ErrorEEEC2IZNS_3orc12COFFPlatform20pushInitializersLoopENS0_IFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES8_ISA_SaISA_EEESaISD_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSK_NS_11SmallVectorISN_Lj6EEENS_12DenseMapInfoISN_vEENS_6detail12DenseMapPairISN_SP_EEEEE3$_1EET_PNSt9enable_ifIXntsr3std7is_sameINS_12remove_cvrefISY_E4typeES3_EE5valueEvE4typeEPNSZ_IXsr3std11disjunctionISt7is_voidIvESt7is_sameIDTclclsr3stdE7declvalISY_EEclL_ZSt7declvalIS1_EDTcl9__declvalISY_ELi0EEEvEEEEvES18_IKS1B_vESt14is_convertibleIS1B_vEEE5valueEvE4typeE.exit"

"_ZN4llvm15unique_functionIFvNS_5ErrorEEEC2IZNS_3orc12COFFPlatform20pushInitializersLoopENS0_IFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES8_ISA_SaISA_EEESaISD_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSK_NS_11SmallVectorISN_Lj6EEENS_12DenseMapInfoISN_vEENS_6detail12DenseMapPairISN_SP_EEEEE3$_1EET_PNSt9enable_ifIXntsr3std7is_sameINS_12remove_cvrefISY_E4typeES3_EE5valueEvE4typeEPNSZ_IXsr3std11disjunctionISt7is_voidIvESt7is_sameIDTclclsr3stdE7declvalISY_EEclL_ZSt7declvalIS1_EDTcl9__declvalISY_ELi0EEEvEEEEvES18_IKS1B_vESt14is_convertibleIS1B_vEEE5valueEvE4typeE.exit": ; preds = %bb.ao, %bb.ap
  %i.sa = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 48
  %i.sc = load <2 x ptr>, ptr %i.rp, align 8, !tbaa !101
  store <2 x ptr> %i.sc, ptr %i.sb, align 8, !tbaa !101
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.se = load ptr, ptr %i.rq, align 8, !tbaa !211
  store ptr %i.se, ptr %i.sd, align 8, !tbaa !211
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 72
  %i.sg = load <2 x i32>, ptr %i.rr, align 8, !tbaa !102
  store <2 x i32> %i.sg, ptr %i.sf, align 8, !tbaa !102
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENUlPKS3_RS2_E_8__invokeES13_S14_", ptr %i.rt, align 8, !tbaa !798
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENUlPS3_S12_E_8__invokeES12_S12_", ptr %i.sa, align 8, !tbaa !800
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.sh = load ptr, ptr %i.m, align 8, !tbaa !333, !nonnull !15, !align !16
  call void @_ZN4llvm3orc8Platform22lookupInitSymbolsAsyncENS_15unique_functionIFvNS_5ErrorEEEERNS0_16ExecutionSessionERKNS_8DenseMapIPNS0_8JITDylibENS0_15SymbolLookupSetENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEE(ptr nofree noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(392) %i.sh, ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  %i.si = load ptr, ptr %i.sa, align 8, !tbaa !800 ; 2 uses
  %.not.i48 = icmp eq ptr %i.si, null
  br i1 %.not.i48, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %"_ZN4llvm15unique_functionIFvNS_5ErrorEEEC2IZNS_3orc12COFFPlatform20pushInitializersLoopENS0_IFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES8_ISA_SaISA_EEESaISD_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSK_NS_11SmallVectorISN_Lj6EEENS_12DenseMapInfoISN_vEENS_6detail12DenseMapPairISN_SP_EEEEE3$_1EET_PNSt9enable_ifIXntsr3std7is_sameINS_12remove_cvrefISY_E4typeES3_EE5valueEvE4typeEPNSZ_IXsr3std11disjunctionISt7is_voidIvESt7is_sameIDTclclsr3stdE7declvalISY_EEclL_ZSt7declvalIS1_EDTcl9__declvalISY_ELi0EEEvEEEEvES18_IKS1B_vESt14is_convertibleIS1B_vEEE5valueEvE4typeE.exit"
  call void %i.si(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %12) #23, !inline_history !801
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEED2Ev.exit: ; preds = %"_ZN4llvm15unique_functionIFvNS_5ErrorEEEC2IZNS_3orc12COFFPlatform20pushInitializersLoopENS0_IFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES8_ISA_SaISA_EEESaISD_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSK_NS_11SmallVectorISN_Lj6EEENS_12DenseMapInfoISN_vEENS_6detail12DenseMapPairISN_SP_EEEEE3$_1EET_PNSt9enable_ifIXntsr3std7is_sameINS_12remove_cvrefISY_E4typeES3_EE5valueEvE4typeEPNSZ_IXsr3std11disjunctionISt7is_voidIvESt7is_sameIDTclclsr3stdE7declvalISY_EEclL_ZSt7declvalIS1_EDTcl9__declvalISY_ELi0EEEvEEEEvES18_IKS1B_vESt14is_convertibleIS1B_vEEE5valueEvE4typeE.exit", %bb.aq
  %i.sj = load i32, ptr %i.rc, align 4, !tbaa !680 ; 2 uses
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEED2Ev.exit
  %i.sl = load ptr, ptr %i.qu, align 8, !tbaa !682
  %i.sm = load ptr, ptr %i.qw, align 8, !tbaa !683
  %i.sn = zext i32 %i.sj to i64
  %i.so = add nuw nsw i64 %i.sn, 31
  %i.sp = lshr i64 %i.so, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i50, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i50 ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.i.i.i
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.sr, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i50, label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.ss = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.ar

bb.ar:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i49
  %.0.i3.i.i.i = phi i32 [ %i.sr, %.lr.ph.i.i.i49 ], [ %i.tc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.st = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.su = or disjoint i32 %i.st, %i.ss
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [72 x i8], ptr %i.sl, i64 %i.sv ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !660 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef %i.sy) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %i.tb = add i32 %.0.i3.i.i.i, -1
  %i.tc = and i32 %i.tb, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.tc, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i50, label %bb.ar, !llvm.loop !684

._crit_edge.i.i.i50:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i51 = icmp eq i64 %indvars.iv.next.i.i.i, %i.sp
  br i1 %.not.i.i.i.i51, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !685

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i50
  %.pr.i.i52 = load i32, ptr %i.rc, align 4, !tbaa !680 ; 2 uses
  %i.td = icmp eq i32 %.pr.i.i52, 0
  br i1 %i.td, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i
  %i.te = load ptr, ptr %i.qu, align 8, !tbaa !682
  %i.tf = zext i32 %.pr.i.i52 to i64              ; 2 uses
  %i.tg = mul nuw nsw i64 %i.tf, 72
  %i.th = add nuw nsw i64 %i.tf, 31
  %i.ti = lshr i64 %i.th, 3
  %i.tj = and i64 %i.ti, 1073741820
  %i.tk = add nuw nsw i64 %i.tj, %i.tg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.te, i64 noundef %i.tk, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i: ; preds = %bb.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEED2Ev.exit
  %i.tl = load ptr, ptr %i.ql, align 8, !tbaa !792 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i53, label %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit", label %bb.au

bb.au:                                            ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i
  call void %i.tl(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.qj) #23, !inline_history !802
  br label %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit"

"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit": ; preds = %bb.au, %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i, %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EED2Ev.exit
  call void @_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.tm = load i32, ptr %i.g, align 4, !tbaa !686 ; 2 uses
  %i.tn = icmp eq i32 %i.tm, 0
  br i1 %i.tn, label %_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit"
  %i.to = load ptr, ptr %7, align 8, !tbaa !689
  %i.tp = zext i32 %i.tm to i64                   ; 2 uses
  %i.tq = shl nuw nsw i64 %i.tp, 3
  %i.tr = add nuw nsw i64 %i.tp, 31
  %i.ts = lshr i64 %i.tr, 3
  %i.tt = and i64 %i.ts, 1073741820
  %i.tu = add nuw nsw i64 %i.tt, %i.tq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.to, i64 noundef %i.tu, i64 noundef 8) #23
  br label %_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit", %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.tv = load ptr, ptr %6, align 8, !tbaa !660   ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.d
  br i1 %i.tw, label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  call void @free(ptr noundef %i.tv) #23
  br label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj16EED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_3orc8JITDylibENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

declare void @_ZN4llvm3orc8Platform22lookupInitSymbolsAsyncENS_15unique_functionIFvNS_5ErrorEEEERNS0_16ExecutionSessionERKNS_8DenseMapIPNS0_8JITDylibENS0_15SymbolLookupSetENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEE(ptr nofree noundef align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !710  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !699
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !709
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !102  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ah, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !712  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !464  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.v, -1
  %i.w = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.w, label %bb.c, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !714

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !712
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !467
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i.i.i
  %i.ag = add i32 %.0.i3.i, -1
  %i.ah = and i32 %i.ag, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !803

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !804

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !710  ; 2 uses
  %i.ai = icmp eq i32 %.pr, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !699
  %i.ak = zext i32 %.pr to i64                    ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 5
  %i.am = add nuw nsw i64 %i.ak, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  %i.ap = add nuw nsw i64 %i.ao, %i.al
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aj, i64 noundef %i.ap, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform19rt_pushInitializersENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEES6_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef align 8 dereferenceable(40) %1, i64 %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 2 uses
  %4 = alloca %"class.llvm::Expected.323", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %7 = alloca %"class.llvm::Expected.294", align 8 ; 12 uses
  %8 = alloca %"class.llvm::Expected.323", align 8 ; 7 uses
  %9 = alloca %"class.llvm::unique_function.299", align 8 ; 6 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr.301", align 8 ; 3 uses
  store i64 %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #24
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !449, !noalias !805 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455, !noalias !805 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.h = load i32, ptr %i.g, align 4, !tbaa !456, !noalias !805 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = mul i64 %2, -4658895280553007687         ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.j, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102, !noalias !814
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !446

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.o, %bb.c ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !457, !noalias !814
  %i.z = icmp eq i64 %2, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.j                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102, !noalias !814
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !448

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aj = zext i32 %i.h to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.aj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.x, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.al
  br i1 %.not, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !815 ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.j

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit
  %i.ao = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ap = ptrtoint ptr %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr @.str.28, ptr %6, align 8, !tbaa !817, !alias.scope !818
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !178, !alias.scope !818
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !823, !alias.scope !818
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !178, !alias.scope !818
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.as, align 8, !tbaa !825, !alias.scope !818
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !745, !alias.scope !818
  %i.au = ptrtoint ptr %i.at to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_3orc12ExecutorAddrEEEEEvlS2_S3_, ptr %i.aq, align 8, !alias.scope !818
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !39, !alias.scope !818
  store ptr @.str.27, ptr %5, align 8, !alias.scope !829
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.av, align 8, !alias.scope !829
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.aw, align 8, !tbaa !45, !alias.scope !829
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 7, ptr %i.ax, align 1, !tbaa !48, !alias.scope !829
  %i.ay = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #23 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4llvm3orc12COFFPlatform19rt_pushInitializersENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEES6_:bb.a
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #26
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i3
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.br, %i.bj
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i3, !llvm.loop !761

_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !736
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i, %bb.f
  %i.bs = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i ], [ %i.bh, %bb.f ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !749
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #26
  br label %.thread

bb.i:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %.not.i.i5 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i5, label %.thread, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.i
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #23, !inline_history !762
  br label %.thread

.thread:                                          ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i, %bb.h, %bb.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit31

bb.j:                                             ; preds = %bb.e
  %i.cb = atomicrmw add ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  %i.cc = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN4llvm3orc12COFFPlatform13buildJDDepMapERNS0_8JITDylibE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.294") align 8 %7, ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.an)
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8
  %i.cf = trunc i8 %i.ce to i1
  br i1 %i.cf, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.o

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.j
  %i.cg = load i64, ptr %7, align 8, !tbaa !49, !noalias !842
  %i.ch = inttoptr i64 %i.cg to ptr
  store ptr null, ptr %7, align 8, !tbaa !49, !noalias !842
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i8 -1, ptr %i.ci, align 8
  store ptr %i.ch, ptr %8, align 8, !tbaa !49, !alias.scope !845
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !757
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %8) #23, !inline_history !759
  %i.cl = load i8, ptr %i.ci, align 8
  %i.cm = trunc i8 %i.cl to i1
  %i.cn = load ptr, ptr %8, align 8, !tbaa !101   ; 6 uses
  br i1 %i.cm, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !739 ; 2 uses
  %.not4.i.i.i.i6 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not4.i.i.i.i6, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i14, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.k, %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i10
  %.05.i.i.i.i8 = phi ptr [ %i.cx, %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i10 ], [ %i.cn, %bb.k ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !760 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i9, label %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i10, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i7
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !746
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #26
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i10

_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i10: ; preds = %bb.l, %.lr.ph.i.i.i.i7
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 32 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.cx, %i.cp
  br i1 %.not.i.i.i.i11, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i12, label %.lr.ph.i.i.i.i7, !llvm.loop !761

_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i12: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i10
  %.pr.i.i13 = load ptr, ptr %8, align 8, !tbaa !736
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i14

_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i14: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i12, %bb.k
  %i.cy = phi ptr [ %.pr.i.i13, %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i12 ], [ %i.cn, %bb.k ] ; 3 uses
  %.not.i.i1.i.i15 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i1.i.i15, label %_ZN4llvm5ErrorD2Ev.exit19, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i14
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !749
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #26
  br label %_ZN4llvm5ErrorD2Ev.exit19

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %.not.i.i16 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i16, label %_ZN4llvm5ErrorD2Ev.exit19, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i17

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i17: ; preds = %bb.n
  %i.de = load ptr, ptr %i.cn, align 8, !tbaa !84
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #23, !inline_history !762
  br label %_ZN4llvm5ErrorD2Ev.exit19

bb.o:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !792 ; 2 uses
  %i.dm = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !101
  store <2 x ptr> %i.dm, ptr %i.dh, align 8, !tbaa !101
  %.not.i.i20 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %1) #23, !inline_history !793
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false)
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store ptr %i.an, ptr %10, align 8, !tbaa !330
  %i.dn = atomicrmw add ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  call void @_ZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef nonnull align 8 dereferenceable(40) %9, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %7)
  %i.do = load ptr, ptr %10, align 8, !tbaa !330  ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.do, null
  br i1 %.not.i.i22, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit24, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit
  %i.dp = atomicrmw sub ptr %i.do, i32 1 acq_rel, align 4
  %.not.i.i.i.i23 = icmp eq i32 %i.dp, 1
  br i1 %.not.i.i.i.i23, label %bb.s, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit24

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm3orc8JITDylibD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.do) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.do, i64 noundef 272) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit24

_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit24: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit, %bb.r, %bb.s
  %i.dq = load ptr, ptr %i.di, align 8, !tbaa !792 ; 2 uses
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit19, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit24
  call void %i.dq(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %9) #23, !inline_history !848
  br label %_ZN4llvm5ErrorD2Ev.exit19

_ZN4llvm5ErrorD2Ev.exit19:                        ; preds = %bb.t, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit24, %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i14, %bb.m, %bb.n, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i17
  %i.dr = load i8, ptr %i.cd, align 8
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit19
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !680 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.z, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.u
  %i.dw = load ptr, ptr %7, align 8, !tbaa !682
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !683
  %i.dz = zext i32 %i.du to i64
  %i.ea = add nuw nsw i64 %i.dz, 31
  %i.eb = lshr i64 %i.ea, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.ee = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.v

bb.v:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ed, %.lr.ph.i.i.i ], [ %i.eo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ef = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.eg = or disjoint i32 %i.ef, %i.ee
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [72 x i8], ptr %i.dw, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !660 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.ek) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.w, %bb.v
  %i.en = add i32 %.0.i3.i.i.i, -1
  %i.eo = and i32 %i.en, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.v, !llvm.loop !684

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i25 = icmp eq i64 %indvars.iv.next.i.i.i, %i.eb
  br i1 %.not.i.i.i.i25, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !685

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i26 = load i32, ptr %i.dt, align 4, !tbaa !680 ; 2 uses
  %i.ep = icmp eq i32 %.pr.i.i26, 0
  br i1 %i.ep, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i
  %i.eq = load ptr, ptr %7, align 8, !tbaa !682
  %i.er = zext i32 %.pr.i.i26 to i64              ; 2 uses
  %i.es = mul nuw nsw i64 %i.er, 72
  %i.et = add nuw nsw i64 %i.er, 31
  %i.eu = lshr i64 %i.et, 3
  %i.ev = and i64 %i.eu, 1073741820
  %i.ew = add nuw nsw i64 %i.ev, %i.es
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.eq, i64 noundef %i.ew, i64 noundef 8) #23
  br label %bb.z

bb.y:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit19
  %i.ex = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i27, label %bb.z, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i28

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i28: ; preds = %bb.y
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !84
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ex) #23, !inline_history !849
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i28, %bb.y, %bb.x, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.fb = atomicrmw sub ptr %i.an, i32 1 acq_rel, align 4
  %.not.i.i.i.i30 = icmp eq i32 %i.fb, 1
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit31

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm3orc8JITDylibD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.an) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.an, i64 noundef 272) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit31

_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit31: ; preds = %.thread, %bb.z, %bb.aa
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef align 8 dereferenceable(40) %1, i64 %2, ptr %3, i64 %4) #0 align 2 {
bb.a:
  %5 = alloca %class.RtLookupNotifyComplete, align 8 ; 11 uses
  %6 = alloca %"struct.std::pair.519", align 8    ; 6 uses
  %7 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 2 uses
  %8 = alloca %"class.llvm::Expected.337", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %11 = alloca %"class.std::vector.133", align 8  ; 7 uses
  %12 = alloca %"class.llvm::orc::SymbolLookupSet", align 8 ; 7 uses
  %13 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 4 uses
  %14 = alloca %"class.llvm::unique_function.340", align 8 ; 5 uses
  %15 = alloca %class.RtLookupNotifyComplete, align 8 ; 7 uses
  %16 = alloca %"class.std::function.342", align 8 ; 7 uses
  store i64 %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #24
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !449, !noalias !850 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455, !noalias !850 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.h = load i32, ptr %i.g, align 4, !tbaa !456, !noalias !850 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = mul i64 %2, -4658895280553007687         ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.j, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102, !noalias !859
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !446

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.o, %bb.c ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !457, !noalias !859
  %i.z = icmp eq i64 %2, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.j                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102, !noalias !859
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !448

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aj = zext i32 %i.h to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.aj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.h to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.x, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi
  %.not29 = icmp eq ptr %.lcssa.sink.i.i, %i.al
  br i1 %.not29, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findERKS3_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !815 ; 2 uses
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.g

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.e, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.aq = ptrtoint ptr %7 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr @.str.28, ptr %10, align 8, !tbaa !817, !alias.scope !860
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !178, !alias.scope !860
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !823, !alias.scope !860
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !178, !alias.scope !860
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 1, ptr %i.at, align 8, !tbaa !825, !alias.scope !860
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !745, !alias.scope !860
  %i.av = ptrtoint ptr %i.au to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_3orc12ExecutorAddrEEEEEvlS2_S3_, ptr %i.ar, align 8, !alias.scope !860
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 %i.av, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !39, !alias.scope !860
  store ptr @.str.29, ptr %9, align 8, !alias.scope !865
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.aw, align 8, !alias.scope !865
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.ax, align 8, !tbaa !45, !alias.scope !865
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 7, ptr %i.ay, align 1, !tbaa !48, !alias.scope !865
  %i.az = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #23 ; 2 uses
  %i.ba = extractvalue { i32, ptr } %i.az, 0
  %i.bb = extractvalue { i32, ptr } %i.az, 1
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !112
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1426

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1427
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !118
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !111
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !110
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1427
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !112
  %i.bh = load ptr, ptr %1, align 8, !tbaa !302
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !302
  store ptr null, ptr %1, align 8, !tbaa !302
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !110, !noalias !1428 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111, !noalias !1428 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106, !noalias !1428 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1426

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !118
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !110
  store ptr %i.y, ptr %i.q, align 8, !tbaa !111
  store i32 0, ptr %i.p, align 16, !tbaa !1427
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr %i.z, ptr %2, align 16, !tbaa !118
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !102
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !102
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !112 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.av, -1
  %i.aw = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.aw, label %bb.c, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !112 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %notsub.i.i.i.i.i.i = add i64 %i.ba, -1
  %i.bb = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.bb, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !115

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !117

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !106 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !110
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 24
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !106
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1433

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store ptr null, ptr %i.as, align 8, !tbaa !112
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !302
  store ptr %i.at, ptr %i.as, align 8, !tbaa !302
  store ptr null, ptr %i.u, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !302
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !302
  store ptr null, ptr %i.av, align 8, !tbaa !302
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.az = load i16, ptr %i.ay, align 8
  store i16 %i.az, ptr %i.ax, align 8
  %i.ba = shl nuw i32 1, %.lcssa.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !102
  %i.bd = or i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !102
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !112 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %notsub.i.i.i.i.i = add i64 %i.bf, -1
  %i.bg = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.bg, label %bb.c, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i:     ; preds = %bb.c, %._crit_edge.i
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !112 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %notsub.i.i.i.i = add i64 %i.bk, -1
  %i.bl = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bl, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.d:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i, %bb.d
  %i.bo = add i32 %.0.i17, -1
  %i.bp = and i32 %i.bo, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1434

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1435

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !106
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1427
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !1427
  %i.bu = icmp eq i32 %i.bq, 0
  br i1 %i.bu, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bv = load ptr, ptr %1, align 8, !tbaa !110
  %i.bw = zext i32 %i.bq to i64                   ; 2 uses
  %i.bx = mul nuw nsw i64 %i.bw, 24
  %i.by = add nuw nsw i64 %i.bw, 31
  %i.bz = lshr i64 %i.by, 3
  %i.ca = and i64 %i.bz, 1073741820
  %i.cb = add nuw nsw i64 %i.ca, %i.bx
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bv, i64 noundef %i.cb, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !464  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !712    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #24
  unreachable

_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !302
  store ptr %i.r, ptr %i.q, align 8, !tbaa !302
  store ptr null, ptr %2, align 8, !tbaa !302
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !461
  store i32 %i.u, ptr %i.s, align 8, !tbaa !461
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.v = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !112 ; 3 uses
  store ptr %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !112
  %i.w = ptrtoint ptr %i.v to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.w, -1
  %i.x = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.x, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !461
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !461
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1436

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1455

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !678
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !735
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !678
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !683
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !682
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 72                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !735
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !371
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !371
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !660
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !662
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 6, ptr %i.bl, align 4, !tbaa !661
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !682, !noalias !1456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683, !noalias !1456 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !680, !noalias !1456 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !371
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1455

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !678
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.296", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !680
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 72                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !682
  store ptr %i.y, ptr %i.q, align 8, !tbaa !683
  store i32 0, ptr %i.p, align 16, !tbaa !735
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !678    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr %i.z, ptr %2, align 16, !tbaa !678
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !102
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !102
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !660 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !684

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !685

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !680 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !682
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 72
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !682
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !680  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !683  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !682
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !680
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !371  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1461

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !371
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !660
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !662
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 6, ptr %i.aw, align 4, !tbaa !661
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !662 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !660 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE12assignRemoteEOS4_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !660
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !662
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !661
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !661
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !660
  store i32 0, ptr %i.be, align 4, !tbaa !661
  br label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = zext i32 %i.ay to i64                   ; 2 uses
  %i.bh = icmp ugt i32 %i.ay, 6
  br i1 %i.bh, label %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i, label %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 8) #23
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !662 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i.thread

_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i ], [ %i.bg, %bb.e ]
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !660
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !660
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 8 %i.bi, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i.thread, %_ZSt4moveIPPN4llvm3orc8JITDylibES4_ET0_T_S6_S5_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !662
  br label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i.sink.split

_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_3orc8JITDylibEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !662
  br label %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i

_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !102
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !102
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !660 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i
  tail call void @free(ptr noundef %i.bp) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_3orc8JITDylibELj6EEC2EOS4_.exit.i, %bb.f
  %i.bs = add i32 %.0.i16, -1
  %i.bt = and i32 %i.bs, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1462

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1463

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !680
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bu = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !735
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !735
  %i.by = icmp eq i32 %i.bu, 0
  br i1 %i.by, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bz = load ptr, ptr %1, align 8, !tbaa !682
  %i.ca = zext i32 %i.bu to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 72
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS7_Lj6EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_3orc8JITDylibELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !662
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !660
  %i.g = load i32, ptr %i.a, align 8, !tbaa !662
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !662
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !662
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !689, !noalias !1464 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !691
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1469
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !690
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !689
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !691
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !371
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !371
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !689, !noalias !1470 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !690, !noalias !1470 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !686, !noalias !1470 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !371
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !728

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1469
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.302", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !686
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !689
  store ptr %i.y, ptr %i.q, align 8, !tbaa !690
  store i32 0, ptr %i.p, align 16, !tbaa !691
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1469
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !102
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !102
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !102
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !689    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !690
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !686  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !690  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !689
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !686
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !371  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1475

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !371
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !102
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1476

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1477

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !686
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !691
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !691
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !686
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !699, !noalias !1478 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !709, !noalias !1478 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !710, !noalias !1478 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !102
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !446

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !371
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1483

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1484
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !734
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1484
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !709
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !699
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !734
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !371
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !371
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !699, !noalias !1485 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !709, !noalias !1485 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !710, !noalias !1485 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !371
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1483

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1484
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.179", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !710
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !699
  store ptr %i.y, ptr %i.q, align 8, !tbaa !709
  store i32 0, ptr %i.p, align 16, !tbaa !734
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !102
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !102
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !102
  call void @_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !699
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !709
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !710  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !709  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !699
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !710
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.i
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %._crit_edge.i ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !371  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1490

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !371
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !713
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !713
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !467
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !467
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !102
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !102
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1491

._crit_edge:                                      ; preds = %._crit_edge.i, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1492

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !710
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !734
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !734
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !699
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !710
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_15SymbolLookupSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_15SymbolLookupSetENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_15SymbolLookupSetENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !464  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.f, -1
  %i.g = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !714

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !712
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !467
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #26
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !734
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !734
  %i.t = load ptr, ptr %0, align 8, !tbaa !699    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !709  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !710
  %i.y = add i32 %i.x, -1                         ; 4 uses
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 5
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %i.ae = add i32 %i.ad, 1
  %i.af = and i32 %i.ae, %i.y                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102
  %i.ak = and i32 %i.af, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44
  %.pn = phi i64 [ %i.bk, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ], [ %i.ag, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ]
  %i.an = phi i32 [ %i.bj, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ], [ %i.af, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ] ; 3 uses
  %.03349 = phi i32 [ %.2, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44 ], [ %i.ad, %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.pn ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !371 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = mul i64 %i.aq, -4658895280553007687     ; 2 uses
  %i.as = lshr i64 %i.ar, 31
  %i.at = xor i64 %i.as, %i.ar
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = sub i32 %.03349, %i.au
  %i.aw = and i32 %i.av, %i.y
  %i.ax = sub i32 %i.an, %i.au
  %i.ay = and i32 %i.ax, %i.y
  %i.az = icmp ult i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.d, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit44

bb.d:                                             ; preds = %.lr.ph
  %i.ba = zext i32 %.03349 to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.ba ; 3 uses
  store ptr %i.ap, ptr %i.bb, align 8, !tbaa !371
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !713
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !713
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !467
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !467
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1000
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1537
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !999
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !973
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1000
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !965
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !965
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !973, !noalias !1538 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !999, !noalias !1538 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !985, !noalias !1538 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !965    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !965
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1241

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1537
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.419", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !985
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !973
  store ptr %i.y, ptr %i.q, align 8, !tbaa !999
  store i32 0, ptr %i.p, align 16, !tbaa !1000
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1537
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !102
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !102
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !102
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !973    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !999
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !985  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !999  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !973
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !985
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !965  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1543

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !965
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !102
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1544

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1545

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !985
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1000
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1000
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !985
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm3orc8PlatformD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4llvm3orc8JITDylibESt4pairIKS3_NS1_12COFFPlatform16JDBootstrapStateEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1315
  tail call void @_ZNSt8_Rb_treeIPN4llvm3orc8JITDylibESt4pairIKS3_NS1_12COFFPlatform16JDBootstrapStateEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1316 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  tail call void @_ZN4llvm3orc12COFFPlatform16JDBootstrapStateD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.e) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 168) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1546

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(34), i32, ptr) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm3orc8JITDylibD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEEC1INS_3orc21COFFImportFileScannerESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S6_RS7_mE_8__invokeESH_S6_SI_m(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.634") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #6 comdat align 2 {
bb.a:
  tail call void @_ZNK4llvm3orc21COFFImportFileScannerclERNS_6object7ArchiveENS_15MemoryBufferRefEm(ptr dead_on_unwind writable sret(%"class.llvm::Expected.634") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %3, i64 noundef %4) #23
  ret void
}

declare void @_ZNK4llvm3orc21COFFImportFileScannerclERNS_6object7ArchiveENS_15MemoryBufferRefEm(ptr dead_on_unwind writable sret(%"class.llvm::Expected.634") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm3orc8JITDylib6defineINS0_28ReExportsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.639", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !164    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !315
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit

_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1547 ; 3 uses
  %i.e = atomicrmw add ptr %i.a, i32 1 monotonic, align 4, !noalias !1547 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc15JITDylibDefunctE, i64 16), ptr %i.d, align 8, !tbaa !84, !noalias !1547
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !330, !noalias !1547
  br label %.critedge.sink.split

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1552, !nonnull !15, !align !16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  tail call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.i) #23
  %i.j = load ptr, ptr %0, align 8, !tbaa !133
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1553, !nonnull !15, !align !16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(272) %i.a) #23
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1553, !nonnull !15, !align !16 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !124
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !124
  store ptr %i.p, ptr %2, align 8, !tbaa !124
  store ptr %i.o, ptr %i.n, align 8, !tbaa !124
  %i.q = load ptr, ptr %2, align 8, !tbaa !124    ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %.not.i.i.i.i11 = icmp eq i32 %i.r, 1
  br i1 %.not.i.i.i.i11, label %bb.e, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.q, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !135, !nonnull !15, !align !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !317  ; 3 uses
  %.not10 = icmp eq ptr %i.v, null
  %.pre19 = load ptr, ptr %i.k, align 8, !tbaa !1553 ; 2 uses
  br i1 %.not10, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1560

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !201
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !210
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !200
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !199
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !201
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !112   ; 3 uses
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !112
  %i.bi = ptrtoint ptr %i.bh to i64
  %notsub.i.i.i = add i64 %i.bi, -1
  %i.bj = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.bj, label %bb.e, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1561
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !199, !noalias !1564 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200, !noalias !1564 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !196, !noalias !1564 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1560

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !210
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.158", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !196
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !199
  store ptr %i.y, ptr %i.q, align 8, !tbaa !200
  store i32 0, ptr %i.p, align 16, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !210    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr %i.z, ptr %2, align 16, !tbaa !210
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !102
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !102
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !112 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !214

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !215

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !196 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !199
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !196  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !196
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1569

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr null, ptr %i.as, align 8, !tbaa !112
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !302
  store ptr %i.at, ptr %i.as, align 8, !tbaa !302
  store ptr null, ptr %i.u, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !1561
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !102
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !102
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !112 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %notsub.i.i.i.i = add i64 %i.bb, -1
  %i.bc = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bc, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1570

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1571

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !196
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !201
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !201
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !199
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm3orc8JITDylib6defineINS0_34AbsoluteSymbolsMaterializationUnitEEENS_5ErrorEOSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.639", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !219    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !315
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit

_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !1572 ; 3 uses
  %i.e = atomicrmw add ptr %i.a, i32 1 monotonic, align 4, !noalias !1572 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc15JITDylibDefunctE, i64 16), ptr %i.d, align 8, !tbaa !84, !noalias !1572
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !330, !noalias !1572
  br label %.critedge.sink.split

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1577, !nonnull !15, !align !16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212
  tail call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.i) #23
  %i.j = load ptr, ptr %0, align 8, !tbaa !133
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1578, !nonnull !15, !align !16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(272) %i.a) #23
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1578, !nonnull !15, !align !16 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !124
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !124
  store ptr %i.p, ptr %2, align 8, !tbaa !124
  store ptr %i.o, ptr %i.n, align 8, !tbaa !124
  %i.q = load ptr, ptr %2, align 8, !tbaa !124    ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %.not.i.i.i.i11 = icmp eq i32 %i.r, 1
  br i1 %.not.i.i.i.i11, label %bb.e, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #23
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.q, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !135, !nonnull !15, !align !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !317  ; 3 uses
  %.not10 = icmp eq ptr %i.v, null
  %.pre19 = load ptr, ptr %i.k, align 8, !tbaa !1578 ; 2 uses
  br i1 %.not10, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.w = load ptr, ptr %.pre19, align 8, !tbaa !124
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1577, !nonnull !15, !align !16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.y) #23
  %i.ac = load ptr, ptr %0, align 8, !tbaa !133
  %.not18 = icmp eq ptr %i.ac, null
  br i1 %.not18, label %._ZN4llvm5ErrorD2Ev.exit12_crit_edge, label %.critedge

._ZN4llvm5ErrorD2Ev.exit12_crit_edge:             ; preds = %bb.f
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !1578
  br label %_ZN4llvm5ErrorD2Ev.exit12

_ZN4llvm5ErrorD2Ev.exit12:                        ; preds = %._ZN4llvm5ErrorD2Ev.exit12_crit_edge, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.ad = phi ptr [ %.pre, %._ZN4llvm5ErrorD2Ev.exit12_crit_edge ], [ %.pre19, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit ]
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !1577, !nonnull !15, !align !16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !212
  store ptr null, ptr %i.ae, align 8, !tbaa !212
  store ptr %i.af, ptr %3, align 8, !tbaa !320
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !124
  call void @_ZN4llvm3orc8JITDylib26installMaterializationUnitESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS3_EERNS0_15ResourceTrackerE(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23
  %i.ah = load ptr, ptr %3, align 8, !tbaa !323   ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %.critedge.sink.split, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit12
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #23, !inline_history !1554
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN4llvm5ErrorD2Ev.exit12, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit
  %.sink = phi ptr [ %i.d, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit ], [ null, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit12 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !133
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.f, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc19MaterializationUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3orc19MaterializationUnitE, i64 16), ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %notsub.i.i.i = add i64 %i.c, -1
  %i.d = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.d, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !297  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !299
  %i.n = zext i32 %i.i to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !102  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.s = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.ad, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %notsub.i.i.i.i.i.i = add i64 %i.y, -1
  %i.z = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.z, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ac = add i32 %.0.i3.i.i, -1
  %i.ad = and i32 %i.ac, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !300

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.p
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.h, align 4, !tbaa !297 ; 2 uses
  %i.ae = icmp eq i32 %.pr.i, 0
  br i1 %i.ae, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.ag = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_129COFFHeaderMaterializationUnitD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3orc19MaterializationUnitE, i64 16), ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %notsub.i.i.i.i = add i64 %i.c, -1
  %i.d = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.d, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !297  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm3orc19MaterializationUnitD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !299
  %i.n = zext i32 %i.i to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !102  ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.s = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.r, %.lr.ph.i.i.i ], [ %i.ad, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.y, -1
  %i.z = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.z, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ac = add i32 %.0.i3.i.i.i, -1
  %i.ad = and i32 %i.ac, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !300

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.h, align 4, !tbaa !297 ; 2 uses
  %i.ae = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ae, label %_ZN4llvm3orc19MaterializationUnitD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.ag = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #23
  br label %_ZN4llvm3orc19MaterializationUnitD2Ev.exit

_ZN4llvm3orc19MaterializationUnitD2Ev.exit:       ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_129COFFHeaderMaterializationUnit7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.58, i64 12 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_129COFFHeaderMaterializationUnit11materializeESt10unique_ptrIN4llvm3orc29MaterializationResponsibilityESt14default_deleteIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.588", align 8    ; 6 uses
  %4 = alloca %"class.std::unique_ptr.691", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %6 = alloca %"class.llvm::SubtargetFeatures", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.679", align 8 ; 3 uses
  %8 = alloca %"class.std::unique_ptr.691", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1579, !nonnull !15, !align !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333, !nonnull !15, !align !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17, !noalias !1582 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !486, !noalias !1588 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !101, !noalias !1588
  store <2 x ptr> %i.m, ptr %5, align 16, !tbaa !101, !alias.scope !1588
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1588
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.n, align 4, !tbaa !102, !noalias !1588
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !102, !noalias !1588
  br label %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit

bb.d:                                             ; preds = %bb.b
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !1588 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1579
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !333
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %.pre15, i64 48
  %.pre17 = load ptr, ptr %.phi.trans.insert16, align 8, !tbaa !17
  br label %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit

_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.s = phi ptr [ %i.h, %bb.a ], [ %i.h, %bb.c ], [ %.pre17, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN4llvm17SubtargetFeaturesC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull @.str.60, i64 0) #23
  call void @_ZSt11make_uniqueIN4llvm7jitlink9LinkGraphEJRA15_KcSt10shared_ptrINS0_3orc16SymbolStringPoolEERKNS0_6TripleENS0_17SubtargetFeaturesERFPS3_hEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.691") align 8 %4, ptr noundef nonnull align 1 dereferenceable(15) @.str.59, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull @_ZN4llvm7jitlink22getGenericEdgeKindNameEh)
  %i.u = load ptr, ptr %6, align 8, !tbaa !430    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.u, %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !39
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !429

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !430
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit
  %i.ad = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.u, %_ZN4llvm3orc16ExecutionSession19getSymbolStringPoolEv.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm17SubtargetFeaturesD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !431
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #26
  br label %_ZN4llvm17SubtargetFeaturesD2Ev.exit

_ZN4llvm17SubtargetFeaturesD2Ev.exit:             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !486 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm17SubtargetFeaturesD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ak, align 8, !tbaa !490
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !492
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !inline_history !1589
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !inline_history !1589
  br label %_ZNSt12__shared_ptrIN4llvm3orc16SymbolStringPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.an, %bb.i ], [ %i.ax, %bb.j ]
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1634

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !296
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !130
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !296
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !299
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !298
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !130
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !112   ; 3 uses
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !112
  %i.bi = ptrtoint ptr %i.bh to i64
  %notsub.i.i.i = add i64 %i.bi, -1
  %i.bj = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.bj, label %bb.e, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i16 0, ptr %i.bm, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !298, !noalias !1635 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !299, !noalias !1635 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !297, !noalias !1635 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1634

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !296
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.243", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !297
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !298
  store ptr %i.y, ptr %i.q, align 8, !tbaa !299
  store i32 0, ptr %i.p, align 16, !tbaa !130
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !296    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr %i.z, ptr %2, align 16, !tbaa !296
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !102
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !102
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !112 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !300

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !297 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !298
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !298
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !299
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !297  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !299  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !298
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !297
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1640

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr null, ptr %i.as, align 8, !tbaa !112
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !302
  store ptr %i.at, ptr %i.as, align 8, !tbaa !302
  store ptr null, ptr %i.u, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i16, ptr %i.av, align 8
  store i16 %i.aw, ptr %i.au, align 8
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !102
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !102
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !112 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %notsub.i.i.i.i = add i64 %i.bc, -1
  %i.bd = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bd, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = atomicrmw sub ptr %i.be, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bg = add i32 %.0.i17, -1
  %i.bh = and i32 %i.bg, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1641

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1642

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !297
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bi = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !130
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !130
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !298
  %i.bo = zext i32 %i.bi to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !297
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_uniqueIN4llvm7jitlink9LinkGraphEJRA15_KcSt10shared_ptrINS0_3orc16SymbolStringPoolEERKNS0_6TripleENS0_17SubtargetFeaturesERFPS3_hEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.691") align 8 %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %5) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Triple", align 8      ; 8 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #25 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !35
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.e, ptr %i.b, align 8, !tbaa !178
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !33
  %i.h = load i64, ptr %i.b, align 8, !tbaa !178
  store i64 %i.h, ptr %i.d, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.j, ptr %i.i, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !178  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = load ptr, ptr %6, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.o = load <2 x ptr>, ptr %2, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %7, align 8, !tbaa !35
  %i.q = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.s, ptr %i.a, align 8, !tbaa !178
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !33
  %i.v = load i64, ptr %i.a, align 8, !tbaa !178
  store i64 %i.v, ptr %i.p, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4llvm6TripleC2ERKS0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !39
  store i8 %i.x, ptr %i.w, align 1, !tbaa !39
  br label %_ZN4llvm6TripleC2ERKS0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZN4llvm6TripleC2ERKS0_.exit

_ZN4llvm6TripleC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.y = load i64, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %7, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIS2_JS8_EEESt4pairIPSD_bEOT_DpOT0_:bb.a
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1655
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1038
  %i.q = load ptr, ptr %0, align 8, !tbaa !1030
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24                  ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = lshr i64 %i.u, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !102
  %i.ab = or i32 %i.x, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !102
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !1040
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1656
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load i64, ptr %2, align 8, !tbaa !971
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !971
  store ptr null, ptr %2, align 8, !tbaa !971
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E22findBucketForInsertionIS2_EEPSD_RKT_SH_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E15LookupBucketForIS2_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1030, !noalias !1657 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1038, !noalias !1657 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1039, !noalias !1657 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !817
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !178
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #23
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !817
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !178
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !178
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !1662

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !102
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !448, !llvm.loop !1663

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !178
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !1662

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !817
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !1664

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !448, !llvm.loop !1663

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !1655
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.413", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1039
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1030
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1038
  store i32 0, ptr %i.p, align 16, !tbaa !1040
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1655   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr %i.z, ptr %2, align 16, !tbaa !1655
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !102
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !102
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !971 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.au) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 80) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1665

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1666

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1039 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !1030
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 24
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1030
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1038
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1039 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1038 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1030
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1039
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !817
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !178
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !102
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1667

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.w ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1656
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !971
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !971
  store ptr null, ptr %i.ah, align 8, !tbaa !971
  %i.aj = shl nuw i32 1, %i.aa
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !102
  %i.am = add i32 %.0.i21, -1
  %i.an = and i32 %i.am, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1668

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1669

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1039
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1040
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !1040
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !1030
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1039
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1120, !noalias !1670 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1130, !noalias !1670 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1131, !noalias !1670 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1146   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !102
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !446

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1146
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1675

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1676
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1132
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1676
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1130
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1120
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1132
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1146
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1146
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1120, !noalias !1677 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1130, !noalias !1677 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1131, !noalias !1677 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1146   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1146
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1675

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1676
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.441", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1131
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1120
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1130
  store i32 0, ptr %i.p, align 16, !tbaa !1132
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1676
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !102
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !102
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !102
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1120   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1130
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1131 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1130 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1131
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1146 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1682

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1146
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !102
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1683

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1684

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1131
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1132
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1132
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1131
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm7jitlink9LinkGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc29MaterializationResponsibilityD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !951, !nonnull !15, !align !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135, !nonnull !15, !align !16
  tail call void @_ZN4llvm3orc16ExecutionSession39OL_destroyMaterializationResponsibilityERNS0_29MaterializationResponsibilityE(ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %notsub.i.i.i = add i64 %i.f, -1
  %i.g = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.g, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !297  ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !298
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !299
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !102  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.v = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %notsub.i.i.i.i.i.i = add i64 %i.ab, -1
  %i.ac = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.ac, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.af = add i32 %.0.i3.i.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !300

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !301

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !297 ; 2 uses
  %i.ah = icmp eq i32 %.pr.i, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !298
  %i.aj = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !124 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aq) #23
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.aq, i64 noundef 16) #26
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %bb.f, %bb.g
  ret void
}

declare void @_ZN4llvm3orc16ExecutionSession39OL_destroyMaterializationResponsibilityERNS0_29MaterializationResponsibilityE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS6_St14default_deleteIS6_EEEUlvE_EEDcOS6_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.735", align 16 ; 8 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #24
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !403    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1685, !nonnull !15, !align !16
  call void @_ZNSt12__shared_ptrIN4llvm3orc19DefinitionGeneratorELN9__gnu_cxx12_Lock_policyE2EEC2INS1_28DLLImportDefinitionGeneratorESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1686 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1687
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !486
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr null, ptr %i.j, align 8, !tbaa !486
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !101
  store ptr null, ptr %2, align 16, !tbaa !1688
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.e, align 8, !tbaa !1686
  br label %_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE9push_backEOS4_.exit.i

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  call void @_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE9push_backEOS4_.exit.i

_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE9push_backEOS4_.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !486  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZZN4llvm3orc8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS4_St14default_deleteIS4_EEENKUlvE_clEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE9push_backEOS4_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 8, !tbaa !490
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !492
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !1691
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !1691
  br label %_ZZN4llvm3orc8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS4_St14default_deleteIS4_EEENKUlvE_clEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.j, label %_ZZN4llvm3orc8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS4_St14default_deleteIS4_EEENKUlvE_clEv.exit, !prof !494

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23
  br label %_ZZN4llvm3orc8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS4_St14default_deleteIS4_EEENKUlvE_clEv.exit

_ZZN4llvm3orc8JITDylib12addGeneratorINS0_28DLLImportDefinitionGeneratorEEERT_St10unique_ptrIS4_St14default_deleteIS4_EEENKUlvE_clEv.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE9push_backEOS4_.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1686 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1692   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4llvm3orc19DefinitionGeneratorEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !101
  store ptr null, ptr %i.r, align 8, !tbaa !486
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !101
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1735
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !443
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !433
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !773
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !371
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !371
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !457
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !433, !noalias !1736 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !443, !noalias !1736 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !444, !noalias !1736 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !371    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !371
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !772

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1735
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.175", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !444
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !433
  store ptr %i.y, ptr %i.q, align 8, !tbaa !443
  store i32 0, ptr %i.p, align 16, !tbaa !773
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1735
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !102
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !102
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !102
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_12ExecutorAddrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_12ExecutorAddrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_12ExecutorAddrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !433    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !443
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !444  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !443  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !433
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !444
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !371  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1741

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !371
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !178
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !178
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !102
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1742

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS2_12ExecutorAddrENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1743

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !444
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !773
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !773
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_12ExecutorAddrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_12ExecutorAddrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS1_12ExecutorAddrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS5_12ExecutorAddrENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !739  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !736    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #24
  unreachable

_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !178
  store i64 %i.r, ptr %i.q, align 8, !tbaa !178
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !745
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !745
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !746
  store ptr %i.x, ptr %i.v, align 8, !tbaa !746
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.y = load i64, ptr %.0911.i.i.i, align 8, !tbaa !178, !alias.scope !1747, !noalias !1744
  store i64 %i.y, ptr %.012.i.i.i, align 8, !tbaa !178, !alias.scope !1744, !noalias !1747
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !745, !alias.scope !1747, !noalias !1744
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !745, !alias.scope !1744, !noalias !1747
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !746, !alias.scope !1747, !noalias !1744
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !746, !alias.scope !1744, !noalias !1747
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !1747, !noalias !1744
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !748

_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.aq, %.lr.ph.i.i.i17 ], [ %i.ah, %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ap, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.ai = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !178, !alias.scope !1752, !noalias !1749
  store i64 %i.ai, ptr %.012.i.i.i18, align 8, !tbaa !178, !alias.scope !1749, !noalias !1752
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !745, !alias.scope !1752, !noalias !1749
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !745, !alias.scope !1749, !noalias !1752
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !746, !alias.scope !1752, !noalias !1749
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !746, !alias.scope !1749, !noalias !1752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !1752, !noalias !1749
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !748

_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.aq, %.lr.ph.i.i.i17 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !749
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #26
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !736
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !739
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
end_hunk_13
begin_hunk_14_@_ZNSt6vectorISt4pairIN4llvm3orc12ExecutorAddrES_IS3_SaIS3_EEESaIS6_EEC2ERKS8_:bb.a

_ZSt10_ConstructISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4llvm3orc12ExecutorAddrESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt12_Vector_baseIN4llvm3orc12ExecutorAddrESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i.i.i ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !766
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS5_SaIS5_EEES6_IS9_SaIS9_EEEEPS9_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1757

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS5_SaIS5_EEES6_IS9_SaIS9_EEEEPS9_S9_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEESaIS7_EEC2EmRKS8_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEESaIS7_EEC2EmRKS8_.exit ], [ %i.ay, %_ZSt10_ConstructISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !739
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENUlPKS3_RS2_E_8__invokeES13_S14_"(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) #6 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Expected.323", align 8 ; 9 uses
  %3 = alloca %"class.llvm::unique_function.299", align 8 ; 8 uses
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr.301", align 8 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !133    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = load ptr, ptr %.val, align 8, !tbaa !788
  %.not.i.i = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i8 -1, ptr %i.d, align 8
  store ptr %i.a, ptr %2, align 8, !tbaa !49, !alias.scope !1758
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !757
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2) #23, !inline_history !1761
  %i.g = load i8, ptr %i.d, align 8
  %i.h = trunc i8 %i.g to i1
  %i.i = load ptr, ptr %2, align 8, !tbaa !101    ; 6 uses
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !739  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !760  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !746
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26, !inline_history !1762
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !761

_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !736
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i.i.i, %bb.c
  %i.t = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exitthread-pre-split.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit", label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !749
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26, !inline_history !1762
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit"

bb.f:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit", label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #23, !inline_history !1763
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit"

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !792 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !101
  store <2 x ptr> %i.ah, ptr %i.ac, align 8, !tbaa !101
  %.not.i.i1.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23, !inline_history !1764
  br label %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit.i.i

_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1765, !nonnull !15, !align !16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !330 ; 3 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !330
  %.not.i.i2.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i2.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit.i.i
  %i.al = atomicrmw add ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit.i.i: ; preds = %bb.j, %_ZN4llvm15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS_3orc12ExecutorAddrES2_IS5_SaIS5_EEESaIS8_EEEEEEC2EOSD_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 56
  call void @_ZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEE(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.am), !inline_history !1762
  %i.an = load ptr, ptr %4, align 8, !tbaa !330   ; 4 uses
  %.not.i.i3.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i3.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit.i.i
  %i.ao = atomicrmw sub ptr %i.an, i32 1 acq_rel, align 4
  %.not.i.i.i.i4.i.i = icmp eq i32 %i.ao, 1
  br i1 %.not.i.i.i.i4.i.i, label %bb.l, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm3orc8JITDylibD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.an) #23, !inline_history !1762
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.an, i64 noundef 272) #26, !inline_history !1762
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit.i.i: ; preds = %bb.l, %bb.k, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEEC2ERKS3_.exit.i.i
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !792 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit", label %bb.m

bb.m:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit.i.i
  call void %i.ap(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %3) #23, !inline_history !1766
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit"

"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPKS3_RS2_E_clES13_S14_.exit": ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc12ExecutorAddrESt6vectorIS3_SaIS3_EEEEvT_S9_.exit.i.i.i.i, %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc8JITDylibEED2Ev.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENUlPS3_S12_E_8__invokeES12_S12_"(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #6 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  %i.a = load ptr, ptr %1, align 8, !tbaa !39     ; 7 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPS3_S12_E_clES12_S12_.exit"

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !680  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !682
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !683
  %i.i = zext i32 %i.d to i64
  %i.j = add nuw nsw i64 %i.i, 31
  %i.k = lshr i64 %i.j, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102  ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.n = shl i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !660  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.t) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.w = add i32 %.0.i3.i.i.i.i, -1
  %i.x = and i32 %i.w, %.0.i3.i.i.i.i             ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.d, !llvm.loop !684

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !685

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.c, align 4, !tbaa !680 ; 2 uses
  %i.y = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.y, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !682
  %i.aa = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.ab = mul nuw nsw i64 %i.aa, 72
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS4_Lj6EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit.i.i.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !792 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit.i", label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void %i.ah(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #23, !inline_history !1767
  br label %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit.i"

"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit.i": ; preds = %bb.g, %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef 8) #23
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPS3_S12_E_clES12_S12_.exit"

"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_5ErrorEEEC1IZNS_3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS5_12ExecutorAddrES9_ISB_SaISB_EEESaISE_EEEEEEENS_18IntrusiveRefCntPtrINS5_8JITDylibEEERNS_8DenseMapIPSL_NS_11SmallVectorISO_Lj6EEENS_12DenseMapInfoISO_vEENS0_12DenseMapPairISO_SQ_EEEEE3$_1SX_EET_NS3_8CalledAsIT0_EEENKUlPS3_S12_E_clES12_S12_.exit": ; preds = %bb.b, %"_ZZN4llvm3orc12COFFPlatform20pushInitializersLoopENS_15unique_functionIFvNS_8ExpectedISt6vectorISt4pairINS0_12ExecutorAddrES4_IS6_SaIS6_EEESaIS9_EEEEEEENS_18IntrusiveRefCntPtrINS0_8JITDylibEEERNS_8DenseMapIPSG_NS_11SmallVectorISJ_Lj6EEENS_12DenseMapInfoISJ_vEENS_6detail12DenseMapPairISJ_SL_EEEEEN3$_1D2Ev.exit.i"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENUlPKSD_RSC_E_8__invokeESS_ST_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) #6 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Expected.337", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Expected.337", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  br i1 %i.c, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !210    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211  ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102
  store i32 0, ptr %i.g, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !102  ; 4 uses
  store i32 0, ptr %i.i, align 4, !tbaa !102
  %i.k = icmp eq i32 %i.h, 0
  store ptr null, ptr %1, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.l ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.j, 0
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw nsw i64 %i.l, 31
  %i.o = lshr i64 %i.n, 5                         ; 2 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !102, !noalias !1768 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.r = icmp eq i64 %i.o, 1
  br i1 %i.r, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.o
  br i1 %i.t, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i, label %.lr.ph, !llvm.loop !1773

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.u = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !102, !noalias !1768 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !1773

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph
  %i.y = mul i64 %i.u, 768
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.loopexit.i.i.i.i, %bb.c
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.y, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.p, %bb.c ], [ %i.w, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.z = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.d, i64 %.012.lcssa.i.i.i.i.i
  %i.ac = getelementptr [24 x i8], ptr %i.ab, i64 %i.aa
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i, %bb.b
  %.sroa.06.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.ac, %._crit_edge.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 0, ptr %i.ae, align 8
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !178
  store i64 %i.af, ptr %2, align 8, !tbaa !178
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !878
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %.val, ptr noundef nonnull align 8 dereferenceable(16) %2) #23, !inline_history !1774
  %i.ai = load i8, ptr %i.ae, align 8
  %i.aj = trunc i8 %i.ai to i1
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ak, null
  %or.cond21.not.i.i = select i1 %i.aj, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond21.not.i.i, label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i, label %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteclENS3_INS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SC_EEEEEE.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.al = load i64, ptr %1, align 8, !tbaa !49
  %i.am = inttoptr i64 %i.al to ptr
  store ptr null, ptr %1, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 -1, ptr %i.an, align 8
  store ptr %i.am, ptr %3, align 8, !tbaa !49, !alias.scope !1775
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !878
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %.val, ptr noundef nonnull align 8 dereferenceable(16) %3) #23, !inline_history !1774
  %i.aq = load i8, ptr %i.an, align 8
  %i.ar = trunc i8 %i.aq to i1
  %i.as = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i2.i.i = icmp ne ptr %i.as, null
  %or.cond23.not.i.i = select i1 %i.ar, i1 %.not.i.i2.i.i, i1 false
  br i1 %or.cond23.not.i.i, label %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i, label %.thread.i

.thread.i:                                        ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESS_ST_.exit

_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i
  %.sroa.13.033.i = phi i32 [ undef, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ %i.j, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ]
  %.sroa.8.030.i = phi ptr [ undef, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ]
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ %i.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ]
  %.sink20.i.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i ], [ %i.ak, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ] ; 2 uses
  %i.at = load ptr, ptr %.sink20.i.i, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %.sink20.i.i) #23, !inline_history !1778
  br label %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteclENS3_INS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SC_EEEEEE.exit.i

_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteclENS3_INS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SC_EEEEEE.exit.i: ; preds = %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i
  %.sroa.13.032.i = phi i32 [ %.sroa.13.033.i, %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i ], [ %i.j, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ] ; 2 uses
  %.sroa.8.029.i = phi ptr [ %.sroa.8.030.i, %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i ], [ %i.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_ZN4llvm8ExpectedINS_3orc12ExecutorAddrEED2Ev.exit.sink.split.i.i ], [ %i.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteclENS3_INS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SC_EEEEEE.exit.i
  %i.aw = icmp eq i32 %.sroa.13.032.i, 0
  br i1 %i.aw, label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESS_ST_.exit, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %bb.d
  %i.ax = zext i32 %.sroa.13.032.i to i64         ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 31               ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.029.i, i64 %indvars.iv.i.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.bc = shl i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.bn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.bd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.1.i, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.bi, -1
  %i.bj = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.bj, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.bm = add i32 %.0.i3.i.i.i.i, -1
  %i.bn = and i32 %i.bm, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.e, !llvm.loop !214

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.az
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !215

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.bo = mul nuw nsw i64 %i.ax, 24
  %i.bp = lshr i64 %i.ay, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.sroa.0.1.i, i64 noundef %i.br, i64 noundef 8) #23
  br label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESS_ST_.exit

bb.g:                                             ; preds = %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteclENS3_INS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SC_EEEEEE.exit.i
  %.not.i.i.i = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i.i.i, label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESS_ST_.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.g
  %i.bs = load ptr, ptr %.sroa.0.1.i, align 8, !tbaa !84
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i) #23, !inline_history !1779
  br label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESS_ST_.exit

_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESS_ST_.exit: ; preds = %.thread.i, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i, %bb.g, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENUlPSD_SR_E_8__invokeESR_SR_(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #6 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  %i.a = load ptr, ptr %1, align 8, !tbaa !39     ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPSD_SR_E_clESR_SR_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !891  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.c(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23, !inline_history !1780
  br label %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteD2Ev.exit.i

_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteD2Ev.exit.i: ; preds = %bb.d, %bb.c
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #23
  br label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPSD_SR_E_clESR_SR_.exit

_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZNS4_12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS2_INS4_12ExecutorAddrEEEEEESH_NS_9StringRefEE22RtLookupNotifyCompleteSM_EET_NSD_8CalledAsIT0_EEENKUlPSD_SR_E_clESR_SR_.exit: ; preds = %bb.b, %_ZZN4llvm3orc12COFFPlatform15rt_lookupSymbolENS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEES4_NS_9StringRefEEN22RtLookupNotifyCompleteD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !547, !noalias !1781 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !548, !noalias !1781 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !545, !noalias !1781 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !102
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !446

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !112
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E15LookupBucketForIS3_EEbRKT_RPSH_.exit, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !448, !llvm.loop !1786

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !543
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1787
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E15LookupBucketForIS3_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !543
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !548
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !547
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 48                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1787
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !112
  %i.bh = load ptr, ptr %1, align 8, !tbaa !302
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !302
  store ptr null, ptr %1, align 8, !tbaa !302
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i8 0, i64 40, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E15LookupBucketForIS3_EEbRKT_RPSH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E15LookupBucketForIS3_EEbRKT_RPSH_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E22findBucketForInsertionIS3_EEPSH_RKT_SL_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E15LookupBucketForIS3_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !547, !noalias !1788 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !548, !noalias !1788 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !545, !noalias !1788 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !1786

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !543
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.349", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !545
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !547
  store ptr %i.y, ptr %i.q, align 8, !tbaa !548
  store i32 0, ptr %i.p, align 16, !tbaa !1787
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !543    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store ptr %i.z, ptr %2, align 16, !tbaa !543
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !102
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !102
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void %i.au(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.av) #23, !inline_history !549
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !112 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %notsub.i.i.i.i.i.i = add i64 %i.ax, -1
  %i.ay = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.ay, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = atomicrmw sub ptr %i.az, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i
  %i.bb = add i32 %.0.i3.i.i, -1
  %i.bc = and i32 %i.bb, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !550

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !551

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !545 ; 2 uses
  %i.bd = icmp eq i32 %.pr.i, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i
  %i.be = load ptr, ptr %2, align 16, !tbaa !547
  %i.bf = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bg = mul nuw nsw i64 %i.bf, 48
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.be, i64 noundef %i.bk, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !547
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !548
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !545  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !548  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !547
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !545
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bl, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !102
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1793

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store ptr null, ptr %i.as, align 8, !tbaa !112
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !302
  store ptr %i.at, ptr %i.as, align 8, !tbaa !302
  store ptr null, ptr %i.u, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !527 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !101
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.av) #23, !inline_history !1794
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 24, i1 false)
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i: ; preds = %bb.c, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !112 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %notsub.i.i.i.i = add i64 %i.bg, -1
  %i.bh = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bh, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit

bb.e:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i, %bb.e
  %i.bk = add i32 %.0.i17, -1
  %i.bl = and i32 %i.bk, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1795

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1796

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !545
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bm = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1787
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !1787
  %i.bq = icmp eq i32 %i.bm, 0
  br i1 %i.bq, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit
  %i.br = load ptr, ptr %1, align 8, !tbaa !547
  %i.bs = zext i32 %i.bm to i64                   ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 48
  %i.bu = add nuw nsw i64 %i.bs, 31
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741820
  %i.bx = add nuw nsw i64 %i.bw, %i.bt
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.br, i64 noundef %i.bx, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !545
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS7_IFvNS5_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SF_EEEES6_SF_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEESF_NS4_11SPSSequenceIcEEEZNSC_16wrapAsyncWithSPSISJ_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedINS3_12ExecutorAddrEEEEEESN_NS_9StringRefEEEENS2_IFvS7_S9_mEEEPT0_MSU_FvDpT1_EEUlOSQ_OSN_OSR_E_EEST_OSU_EUlS7_S9_mE_S15_EET_NSA_8CalledAsISU_EEENUlPKSA_RS7_S9_mE_8__invokeES1A_S1B_S9_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3) #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::unique_function.805", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1797 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !101
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !101
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1) #23, !inline_history !1799
  br label %_ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEC2EOS5_.exit.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false)
  br label %_ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEC2EOS5_.exit.i

_ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEC2EOS5_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @_ZN4llvm3orc6shared6detail33WrapperFunctionAsyncHandlerHelperIFvONS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEOS6_ONS_9StringRefEENS1_15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEESH_NS1_11SPSSequenceIcEEEE16ResultSerializerEJSH_SK_EE10applyAsyncIRZNS0_16ExecutionSession16wrapAsyncWithSPSISL_NS0_12COFFPlatformEJS9_S6_SC_EEENS4_IFvNS4_IFvNS1_21WrapperFunctionBufferEEEEPKcmEEEPT0_MS10_FvDpT1_EEUlSA_SB_SD_E_SV_EEvOT_OS10_SX_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, i64 noundef %3)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !1797 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEESF_NS4_11SPSSequenceIcEEEZNSC_16wrapAsyncWithSPSISJ_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedINS3_12ExecutorAddrEEEEEESN_NS_9StringRefEEEENS2_IFvS7_S9_mEEEPT0_MSU_FvDpT1_EEUlOSQ_OSN_OSR_E_EEST_OSU_EUlS7_S9_mE_S15_EET_NSA_8CalledAsISU_EEENKUlPKSA_RS7_S9_mE_clES1A_S1B_S9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEC2EOS5_.exit.i
  call void %i.g(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %4) #23, !inline_history !1800
  br label %_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEESF_NS4_11SPSSequenceIcEEEZNSC_16wrapAsyncWithSPSISJ_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedINS3_12ExecutorAddrEEEEEESN_NS_9StringRefEEEENS2_IFvS7_S9_mEEEPT0_MSU_FvDpT1_EEUlOSQ_OSN_OSR_E_EEST_OSU_EUlS7_S9_mE_S15_EET_NSA_8CalledAsISU_EEENKUlPKSA_RS7_S9_mE_clES1A_S1B_S9_m.exit

_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEEC1IZNS3_16ExecutionSession16wrapAsyncWithSPSIFNS4_11SPSExpectedINS4_15SPSExecutorAddrEEESF_NS4_11SPSSequenceIcEEEZNSC_16wrapAsyncWithSPSISJ_NS3_12COFFPlatformEJNS2_IFvNS_8ExpectedINS3_12ExecutorAddrEEEEEESN_NS_9StringRefEEEENS2_IFvS7_S9_mEEEPT0_MSU_FvDpT1_EEUlOSQ_OSN_OSR_E_EEST_OSU_EUlS7_S9_mE_S15_EET_NSA_8CalledAsISU_EEENKUlPKSA_RS7_S9_mE_clES1A_S1B_S9_m.exit: ; preds = %_ZN4llvm15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEC2EOS5_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc6shared6detail33WrapperFunctionAsyncHandlerHelperIFvONS_15unique_functionIFvNS_8ExpectedINS0_12ExecutorAddrEEEEEEOS6_ONS_9StringRefEENS1_15WrapperFunctionIFNS1_11SPSExpectedINS1_15SPSExecutorAddrEEESH_NS1_11SPSSequenceIcEEEE16ResultSerializerEJSH_SK_EE10applyAsyncIRZNS0_16ExecutionSession16wrapAsyncWithSPSISL_NS0_12COFFPlatformEJS9_S6_SC_EEENS4_IFvNS4_IFvNS1_21WrapperFunctionBufferEEEEPKcmEEEPT0_MS10_FvDpT1_EEUlSA_SB_SD_E_SV_EEvOT_OS10_SX_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::orc::shared::WrapperFunctionBuffer", align 8 ; 4 uses
  %5 = alloca %class.anon.813, align 8            ; 8 uses
  %6 = alloca %"class.std::tuple.807", align 8    ; 4 uses
  %i.a = icmp ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i = load i64, ptr %2, align 1
  %i.b = icmp ult i64 %3, 16
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.c, align 1 ; 3 uses
  %i.d = add i64 %3, -16
  %.not10.i.i.i.i = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, %i.d
  br i1 %.not10.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !alias.scope !1801
  %i.f = tail call noalias dereferenceable_or_null(58) ptr @malloc(i64 noundef 58) #28, !noalias !1801 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.f, ptr noundef nonnull align 1 dereferenceable(58) @.str.63, i64 58, i1 false) #23
  store ptr %i.f, ptr %4, align 8, !tbaa !39, !alias.scope !1801
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1804
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #23, !inline_history !1805
  %i.i = load i64, ptr %i.e, align 8, !tbaa !1806 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 8
  %.pre.i = load ptr, ptr %4, align 8             ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.e

end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !447

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2099
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !455
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !449
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !102
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !102
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1711
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !178
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !371
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !449, !noalias !2100 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !455, !noalias !2100 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !456, !noalias !2100 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !102
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !446

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !457
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !447

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !448, !llvm.loop !2098

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2099
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.177", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !456
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !449
  store ptr %i.y, ptr %i.q, align 8, !tbaa !455
  store i32 0, ptr %i.p, align 16, !tbaa !1711
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !101
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2099
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !101
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !101
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !102
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !102
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !102
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !102
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_3orc12ExecutorAddrEPNS1_8JITDylibENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc12ExecutorAddrEPNS1_8JITDylibENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc12ExecutorAddrEPNS1_8JITDylibENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !449    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !455
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !456  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !455  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !449
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !456
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !457  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2105

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !371
  store ptr %i.av, ptr %i.at, align 8, !tbaa !371
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !102
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2106

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS2_8JITDylibENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2107

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !456
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1711
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1711
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapINS_3orc12ExecutorAddrEPNS1_8JITDylibENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc12ExecutorAddrEPNS1_8JITDylibENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc12ExecutorAddrEPNS1_8JITDylibENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc12ExecutorAddrEPNS5_8JITDylibENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !1011   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !1011   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #23
  %.pre = load ptr, ptr %1, align 8, !tbaa !1011
  br label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !1011
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !178
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !178
  store ptr %i.c, ptr %1, align 8, !tbaa !1011
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1013 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1013 ; 7 uses
  %.not = icmp ult i64 %i.o, %i.m
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !1011   ; 2 uses
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i64 %i.m, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !447

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.b, i64 %i.m, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = icmp eq i64 %i.m, 1
  br i1 %i.r, label %bb.j, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.b, align 1, !tbaa !39
  store i8 %i.s, ptr %i.p, align 1, !tbaa !39
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.m, ptr %i.n, align 8, !tbaa !1013
  store i64 0, ptr %i.l, align 8, !tbaa !1013
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1014
  %i.v = icmp ult i64 %i.u, %i.m
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.n, align 8, !tbaa !1013
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.w, i64 noundef %i.m, i64 noundef 1) #23
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.m:                                             ; preds = %bb.k
  %.not32 = icmp eq i64 %i.o, 0
  br i1 %.not32, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %0, align 8, !tbaa !1011   ; 2 uses
  %i.y = icmp sgt i64 %i.o, 1
  br i1 %i.y, label %bb.o, label %bb.p, !prof !447

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.b, i64 %i.o, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.p:                                             ; preds = %bb.n
  %i.z = icmp eq i64 %i.o, 1
  br i1 %i.z, label %bb.q, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.q:                                             ; preds = %bb.p
  %i.aa = load i8, ptr %i.b, align 1, !tbaa !39
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !39
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  %.026 = phi i64 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.o, %bb.o ], [ %i.o, %bb.p ], [ 1, %bb.q ] ; 4 uses
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !1013 ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit, label %bb.r
end_hunk_15
