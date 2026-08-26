Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFNixPlatform?download=true
inline.NumInlined: 6870
inline.NumDeleted: 3278
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm3orc14ELFNixPlatformC2ERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS0_19DefinitionGeneratorESt14default_deleteIS7_EERNS_5ErrorE:_ZN4llvm3orc15SymbolStringPtrD2Ev.exit40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !139, !noalias !393
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr nonnull @.str.32, i64 38)
  %i.cc = load ptr, ptr %19, align 8, !tbaa !226
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !226
  store ptr null, ptr %19, align 8, !tbaa !226
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.cd, align 8, !tbaa !308
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !15, !align !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !17, !noalias !396
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !139, !noalias !399
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr nonnull @.str.33, i64 40)
  %i.ck = load ptr, ptr %20, align 8, !tbaa !226
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !226
  store ptr null, ptr %20, align 8, !tbaa !226
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.cl, align 8, !tbaa !308
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !15, !align !16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17, !noalias !402
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !139, !noalias !405
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr nonnull @.str.34, i64 34)
  %i.cs = load ptr, ptr %21, align 8, !tbaa !226
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !226
  store ptr null, ptr %21, align 8, !tbaa !226
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ct, i8 0, i64 168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.cu = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !408 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginE, i64 16), ptr %i.cu, align 8, !tbaa !130, !noalias !408
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i8 0, i64 40, i1 false), !noalias !408
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store ptr %0, ptr %i.cw, align 8, !tbaa !227, !noalias !408
  store ptr %i.cu, ptr %23, align 8, !tbaa !411, !alias.scope !408
  call void @_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EEC2INS1_14ELFNixPlatform20ELFNixPlatformPluginESt14default_deleteIS9_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.cy = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.cx) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit40
  call void @_ZSt20__throw_system_errori(i32 noundef %i.cy) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit40
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !413 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !416
  %.not.i.i1.i = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i1.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !417
  %i.de = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.df = load <2 x ptr>, ptr %22, align 16, !tbaa !58
  store ptr null, ptr %i.de, align 8, !tbaa !417
  store <2 x ptr> %i.df, ptr %i.da, align 8, !tbaa !58
  store ptr null, ptr %22, align 16, !tbaa !418
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !413
  br label %_ZN4llvm3orc21LinkGraphLinkingLayer9addPluginESt10shared_ptrINS1_6PluginEE.exit

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @_ZNSt6vectorISt10shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr %i.da, ptr noundef nonnull align 8 dereferenceable(16) %22)
  br label %_ZN4llvm3orc21LinkGraphLinkingLayer9addPluginESt10shared_ptrINS1_6PluginEE.exit

_ZN4llvm3orc21LinkGraphLinkingLayer9addPluginESt10shared_ptrINS1_6PluginEE.exit: ; preds = %bb.b, %bb.c
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cx) #22 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !417 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3orc21LinkGraphLinkingLayer9addPluginESt10shared_ptrINS1_6PluginEE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.dl, align 8, !tbaa !421
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !423
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !130
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #22, !inline_history !424
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !130
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #22, !inline_history !424
  br label %_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i41 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.do, %bb.g ], [ %i.dy, %bb.h ]
  %i.dz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dz, label %bb.i, label %_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !425

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #22
  br label %_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm3orc21LinkGraphLinkingLayer9addPluginESt10shared_ptrINS1_6PluginEE.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ea = load ptr, ptr %23, align 8, !tbaa !411  ; 3 uses
  %.not.i = icmp eq ptr %i.ea, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginEEclEPS3_.exit.i: ; preds = %_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !130
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(56) %i.ea) #22, !inline_history !426
  br label %_ZNSt10unique_ptrIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4llvm3orc21LinkGraphLinkingLayer6PluginELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.ee = load i64, ptr %3, align 8, !tbaa !188
  store i64 %i.ee, ptr %24, align 8, !tbaa !188
  store ptr null, ptr %3, align 8, !tbaa !188
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !91, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %2, ptr %10, align 8, !tbaa !427
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %24, ptr %i.eh, align 8, !tbaa !430
  call void @_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_8JITDylib12addGeneratorINS0_19DefinitionGeneratorEEERT_St10unique_ptrIS6_St14default_deleteIS6_EEEUlvE_EEDcOS6_(ptr noundef nonnull align 8 dereferenceable(392) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ei = load ptr, ptr %24, align 8, !tbaa !188  ; 3 uses
  %.not.i42 = icmp eq ptr %i.ei, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN4llvm3orc19DefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc19DefinitionGeneratorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc19DefinitionGeneratorEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginESt14default_deleteIS3_EED2Ev.exit
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !130
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(136) %i.ei) #22, !inline_history !190
  br label %_ZNSt10unique_ptrIN4llvm3orc19DefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc19DefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3orc14ELFNixPlatform20ELFNixPlatformPluginESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm3orc19DefinitionGeneratorEEclEPS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %25, i8 0, i64 40, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.em) #22
  %i.en = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i8 0, i64 40, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store atomic ptr %25, ptr %i.eo seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.ep = load ptr, ptr %0, align 8, !tbaa !130
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %26, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(272) %2) #22
  %i.es = load ptr, ptr %26, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.es, null
  br i1 %.not, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt10unique_ptrIN4llvm3orc19DefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.es, ptr %4, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.bp

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm3orc19DefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.eu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ev = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !431 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  store ptr %2, ptr %i.ev, align 8, !noalias !431
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !431
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !434, !alias.scope !431
  store ptr %i.ex, ptr %i.eu, align 8, !alias.scope !431
  store ptr %i.ev, ptr %28, align 8, !alias.scope !431
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %39 = load ptr, ptr %i.k, align 8, !tbaa !69    ; 4 uses
  store ptr %39, ptr %30, align 8, !tbaa !69
  %i.ey = ptrtoint ptr %39 to i64
  %notsub.i.i.i46 = add i64 %i.ey, -1
  %i.ez = icmp ult i64 %notsub.i.i.i46, -32       ; 2 uses
  br i1 %i.ez, label %bb.j, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.fb = atomicrmw add ptr %i.fa, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i, %bb.j
  %i.fc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !69  ; 4 uses
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !69
  %i.fe = ptrtoint ptr %i.fd to i64
  %notsub.i.i.i47 = add i64 %i.fe, -1
  %i.ff = icmp ult i64 %notsub.i.i.i47, -32       ; 2 uses
  br i1 %i.ff, label %bb.k, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit48

bb.k:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fh = atomicrmw add ptr %i.fg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit48

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit48:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit, %bb.k
  %i.fi = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.fj = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 4 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !69
  %i.fk = ptrtoint ptr %i.fj to i64
  %notsub.i.i.i49 = add i64 %i.fk, -1
  %i.fl = icmp ult i64 %notsub.i.i.i49, -32       ; 2 uses
  br i1 %i.fl, label %bb.l, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit50

bb.l:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = atomicrmw add ptr %i.fm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit50

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit50:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit48, %bb.l
  %i.fo = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.fp = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 4 uses
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !69
  %i.fq = ptrtoint ptr %i.fp to i64
  %notsub.i.i.i51 = add i64 %i.fq, -1
  %i.fr = icmp ult i64 %notsub.i.i.i51, -32       ; 2 uses
  br i1 %i.fr, label %bb.m, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit52

bb.m:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit50
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = atomicrmw add ptr %i.fs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit52

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit52:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit50, %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.fv = load ptr, ptr %i.bg, align 8, !tbaa !69 ; 4 uses
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !69
  %i.fw = ptrtoint ptr %i.fv to i64
  %notsub.i.i.i53 = add i64 %i.fw, -1
  %i.fx = icmp ult i64 %notsub.i.i.i53, -32       ; 2 uses
  br i1 %i.fx, label %bb.n, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit54

bb.n:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit52
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fz = atomicrmw add ptr %i.fy, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit54

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit54:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit52, %bb.n
  %i.ga = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.gb = load ptr, ptr %i.bo, align 8, !tbaa !69 ; 4 uses
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !69
  %i.gc = ptrtoint ptr %i.gb to i64
  %notsub.i.i.i55 = add i64 %i.gc, -1
  %i.gd = icmp ult i64 %notsub.i.i.i55, -32       ; 2 uses
  br i1 %i.gd, label %bb.o, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit56

bb.o:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit54
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = atomicrmw add ptr %i.ge, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit56

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit56:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit54, %bb.o
  %i.gg = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.gh = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 4 uses
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !69
  %i.gi = ptrtoint ptr %i.gh to i64
  %notsub.i.i.i57 = add i64 %i.gi, -1
  %i.gj = icmp ult i64 %notsub.i.i.i57, -32       ; 2 uses
  br i1 %i.gj, label %bb.p, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit58

bb.p:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit56
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = atomicrmw add ptr %i.gk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit58

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit58:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit56, %bb.p
  %i.gm = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.gn = load ptr, ptr %i.ce, align 8, !tbaa !69 ; 4 uses
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !69
  %i.go = ptrtoint ptr %i.gn to i64
  %notsub.i.i.i59 = add i64 %i.go, -1
  %i.gp = icmp ult i64 %notsub.i.i.i59, -32       ; 2 uses
  br i1 %i.gp, label %bb.q, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit60

bb.q:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit58
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gr = atomicrmw add ptr %i.gq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit60

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit60:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit58, %bb.q
  %i.gs = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.gt = load ptr, ptr %i.aq, align 8, !tbaa !69 ; 4 uses
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !69
  %i.gu = ptrtoint ptr %i.gt to i64
  %notsub.i.i.i61 = add i64 %i.gu, -1
  %i.gv = icmp ult i64 %notsub.i.i.i61, -32       ; 2 uses
  br i1 %i.gv, label %bb.r, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit62

bb.r:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit60
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gx = atomicrmw add ptr %i.gw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit62

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit62:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit60, %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %30, i64 72
  %i.gz = load ptr, ptr %i.ay, align 8, !tbaa !69 ; 4 uses
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !69
  %i.ha = ptrtoint ptr %i.gz to i64
  %notsub.i.i.i63 = add i64 %i.ha, -1
  %i.hb = icmp ult i64 %notsub.i.i.i63, -32       ; 2 uses
  br i1 %i.hb, label %bb.s, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit64

bb.s:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit62
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = atomicrmw add ptr %i.hc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit64

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit64:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit62, %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %30, i64 80
  %i.hf = load ptr, ptr %i.cm, align 8, !tbaa !69 ; 4 uses
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !69
  %i.hg = ptrtoint ptr %i.hf to i64
  %notsub.i.i.i65 = add i64 %i.hg, -1
  %i.hh = icmp ult i64 %notsub.i.i.i65, -32       ; 2 uses
  br i1 %i.hh, label %bb.t, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66

bb.t:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hj = atomicrmw add ptr %i.hi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66:     ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit64, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  %i.hm = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24 ; 3 uses
  %i.hn = load ptr, ptr %29, align 8, !tbaa !435  ; 3 uses
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !315 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hn, %i.ho
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hu, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i ], [ %i.hn, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66 ] ; 2 uses
  %i.hp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.hq, -1
  %i.hr = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.hr, label %bb.u, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i122
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ht = atomicrmw sub ptr %i.hs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i122
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.hu, %i.ho
  br i1 %.not.i.i7.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i122, !llvm.loop !436

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %29, align 8, !tbaa !435
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66
  %i.hv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i ], [ %i.hn, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit66 ] ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i123, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i
  %i.hw = load ptr, ptr %i.hk, align 8, !tbaa !318
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #25
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.v, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i
  store ptr %i.hm, ptr %29, align 8, !tbaa !435
  store ptr %i.hm, ptr %i.hl, align 8, !tbaa !315
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 176
  store ptr %i.ia, ptr %i.hk, align 8, !tbaa !318
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %.014.i.idx = phi i64 [ 0, %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %.014.i.add, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i ] ; 2 uses
  %.014.i.ptr = getelementptr inbounds nuw i8, ptr %30, i64 %.014.i.idx
  %i.ic = load ptr, ptr %.014.i.ptr, align 8, !tbaa !69 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm3orc14ELFNixPlatformC2ERNS0_18ObjectLinkingLayerERNS0_8JITDylibESt10unique_ptrINS0_19DefinitionGeneratorESt14default_deleteIS7_EERNS_5ErrorE:_ZN4llvm3orc15SymbolStringPtrD2Ev.exit40
.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i.i.i
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !59 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ji = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.ad

bb.ad:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.jh, %.lr.ph.i.i.i ], [ %i.jt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.jj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.jk = or disjoint i32 %i.jj, %i.ji
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !69 ; 2 uses
  %i.jo = ptrtoint ptr %i.jn to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.jo, -1
  %i.jp = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.jp, label %bb.ae, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jr = atomicrmw sub ptr %i.jq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.js = add i32 %.0.i3.i.i.i, -1
  %i.jt = and i32 %i.js, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.jt, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.ad, !llvm.loop !172

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i69 = icmp eq i64 %indvars.iv.next.i.i.i, %i.jf
  br i1 %.not.i.i.i.i69, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !173

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ix, align 4, !tbaa !154 ; 2 uses
  %i.ju = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ju, label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.jv = load ptr, ptr %27, align 8, !tbaa !157
  %i.jw = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.jx = mul nuw nsw i64 %i.jw, 24
  %i.jy = add nuw nsw i64 %i.jw, 31
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = and i64 %i.jz, 1073741820
  %i.kb = add nuw nsw i64 %i.ka, %i.jx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jv, i64 noundef %i.kb, i64 noundef 8) #22
  br label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit

bb.ag:                                            ; preds = %_ZNSt8functionIFvRKN4llvm8DenseMapIPNS0_3orc8JITDylibENS0_8DenseSetINS2_15SymbolStringPtrENS0_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS0_6detail12DenseMapPairIS4_S9_EEEEEEC2ERKSI_.exit
  %i.kc = load i64, ptr %27, align 8, !tbaa !49, !noalias !443 ; 2 uses
  %i.kd = inttoptr i64 %i.kc to ptr
  store ptr null, ptr %27, align 8, !tbaa !49, !noalias !443
  store ptr %i.kd, ptr %4, align 8, !tbaa !89
  %.not174253 = icmp eq i64 %i.kc, 0
  br label %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit: ; preds = %bb.ag, %bb.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.af
  %.not174254 = phi i1 [ true, %bb.ac ], [ true, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i ], [ true, %bb.af ], [ %.not174253, %bb.ag ]
  %i.ke = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !440 ; 2 uses
  %.not.i71 = icmp eq ptr %i.kf, null
  br i1 %.not.i71, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit
  %i.kg = call noundef zeroext i1 %i.kf(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 3) #22, !inline_history !446 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEEED2Ev.exit, %bb.ah
  %i.kh = load ptr, ptr %29, align 8, !tbaa !435  ; 3 uses
  %i.ki = load ptr, ptr %i.hl, align 8, !tbaa !315 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kh, %i.ki
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ko, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i ], [ %i.kh, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.kj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.kk = ptrtoint ptr %i.kj to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.kk, -1
  %i.kl = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.kl, label %bb.ai, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kn = atomicrmw sub ptr %i.km, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.ko, %i.ki
  br i1 %.not.i.i.i.i72, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !436

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i.i.i
  %.pr.i.i73 = load ptr, ptr %29, align 8, !tbaa !435
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.kp = phi ptr [ %.pr.i.i73, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.kh, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i
  %i.kq = load ptr, ptr %i.hk, align 8, !tbaa !318
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.kt) #25
  br label %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit

_ZN4llvm3orc15SymbolLookupSetD2Ev.exit:           ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit.i.i, %bb.aj
  br i1 %i.hh, label %bb.ak, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75

bb.ak:                                            ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.kv = atomicrmw sub ptr %i.ku, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75:         ; preds = %_ZN4llvm3orc15SymbolLookupSetD2Ev.exit, %bb.ak
  br i1 %i.hb, label %bb.al, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.1

bb.al:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.kx = atomicrmw sub ptr %i.kw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.1

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.1:       ; preds = %bb.al, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75
  br i1 %i.gv, label %bb.am, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.2

bb.am:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.kz = atomicrmw sub ptr %i.ky, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.2

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.2:       ; preds = %bb.am, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.1
  br i1 %i.gp, label %bb.an, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.3

bb.an:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.2
  %i.la = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.lb = atomicrmw sub ptr %i.la, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.3

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.3:       ; preds = %bb.an, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.2
  br i1 %i.gj, label %bb.ao, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.4

bb.ao:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.4

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.4:       ; preds = %bb.ao, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.3
  br i1 %i.gd, label %bb.ap, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.5

bb.ap:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.4
  %i.le = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.lf = atomicrmw sub ptr %i.le, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.5

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.5:       ; preds = %bb.ap, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.4
  br i1 %i.fx, label %bb.aq, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.6

bb.aq:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.5
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.lh = atomicrmw sub ptr %i.lg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.6

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.6:       ; preds = %bb.aq, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.5
  br i1 %i.fr, label %bb.ar, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.7

bb.ar:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.6
  %i.li = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.lj = atomicrmw sub ptr %i.li, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.7

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.7:       ; preds = %bb.ar, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.6
  br i1 %i.fl, label %bb.as, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.8

bb.as:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.7
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.ll = atomicrmw sub ptr %i.lk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.8

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.8:       ; preds = %bb.as, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.7
  br i1 %i.ff, label %bb.at, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.9

bb.at:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ln = atomicrmw sub ptr %i.lm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.9

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.9:       ; preds = %bb.at, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.8
  br i1 %i.ez, label %bb.au, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.10

bb.au:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.9
  %i.lo = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.lp = atomicrmw sub ptr %i.lo, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.10

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.10:      ; preds = %bb.au, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.9
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.lq = load ptr, ptr %28, align 8, !tbaa !447  ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.10
  %i.lr = load ptr, ptr %i.eu, align 8, !tbaa !448
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lu) #25
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.10, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br i1 %.not174254, label %bb.aw, label %bb.bp

bb.aw:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store ptr %25, ptr %32, align 8, !tbaa !449
  %i.lv = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  store i8 0, ptr %i.lv, align 8, !tbaa !452
  %i.lw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %25) #22 ; 2 uses
  %.not.i.i.i77 = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i.i77, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_system_errori(i32 noundef %i.lw) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.aw
  store i8 1, ptr %i.lv, align 8, !tbaa !452
  %.val.val2.i = load i64, ptr %i.en, align 8, !tbaa !453
  %i.lx = icmp eq i64 %.val.val2.i, 0
  br i1 %i.lx, label %"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.lr.ph.i

"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread": ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store atomic ptr null, ptr %i.eo seq_cst, align 8
  br label %bb.ay

.lr.ph.i:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.lr.ph.i
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.em, ptr noundef nonnull align 8 dereferenceable(9) %32) #22
  %.val.val.i = load i64, ptr %i.en, align 8, !tbaa !453
  %i.ly = icmp eq i64 %.val.val.i, 0
  br i1 %i.ly, label %"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", label %.lr.ph.i, !llvm.loop !459

"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit": ; preds = %.lr.ph.i
  %.pre205 = load i8, ptr %i.lv, align 8, !tbaa !452, !range !57
  %i.lz = trunc nuw i8 %.pre205 to i1
  store atomic ptr null, ptr %i.eo seq_cst, align 8
  br i1 %i.lz, label %bb.ay, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ay:                                            ; preds = %"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", %"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit"
  %i.ma = load ptr, ptr %32, align 8, !tbaa !449  ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i78, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ma) #22 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZNSt18condition_variable4waitIZN4llvm3orc14ELFNixPlatformC1ERNS2_18ObjectLinkingLayerERNS2_8JITDylibESt10unique_ptrINS2_19DefinitionGeneratorESt14default_deleteIS9_EERNS1_5ErrorEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.mc = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !15, !align !16
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !17, !noalias !460
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !139, !noalias !463
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %33, ptr noundef nonnull align 8 dereferenceable(64) %i.mg, ptr nonnull @.str.35, i64 34)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.mk = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #24, !noalias !466 ; 23 uses
  %i.ml = load ptr, ptr %i.mh, align 8, !tbaa !33, !noalias !466
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !34, !noalias !466
  %i.mo = load ptr, ptr %33, align 8, !tbaa !69, !noalias !466 ; 5 uses
  %i.mp = ptrtoint ptr %i.mo to i64
  %notsub.i.i.i.i79 = add i64 %i.mp, -1
  %i.mq = icmp ult i64 %notsub.i.i.i.i79, -32     ; 2 uses
  br i1 %i.mq, label %bb.ba, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i80

bb.ba:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.ms = atomicrmw add ptr %i.mr, i64 1 seq_cst, align 8, !noalias !466 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i80

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i80:   ; preds = %bb.ba, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.mu = load <2 x ptr>, ptr %i.mi, align 8, !tbaa !58, !noalias !466
  store ptr null, ptr %i.mi, align 8, !tbaa !469, !noalias !466
  store ptr null, ptr %i.mt, align 8, !tbaa !169, !noalias !466
  %i.mv = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %25, i64 124
  %i.mx = load <2 x i32>, ptr %i.mv, align 8, !tbaa !59, !noalias !466
  store i32 0, ptr %i.mv, align 8, !tbaa !59, !noalias !466
  store i32 0, ptr %i.mw, align 4, !tbaa !59, !noalias !466
  %.sroa.04.0.copyload.i = load i64, ptr %i.mj, align 8, !tbaa !147, !noalias !466
  %.sroa.03.0.copyload.i = load i64, ptr %i.r, align 8, !tbaa !147, !noalias !466
  %.sroa.02.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !147, !noalias !466
  %.sroa.01.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !147, !noalias !466
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !tbaa !147, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !466
  store ptr %i.mo, ptr %8, align 8, !tbaa !69, !noalias !466
  br i1 %i.mq, label %bb.bb, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i

bb.bb:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i80
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mz = atomicrmw add ptr %i.my, i64 1 seq_cst, align 8, !noalias !466 ; 0 uses
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i: ; preds = %bb.bb, %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit.i80
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 0, ptr %i.na, align 8, !tbaa !470, !noalias !466
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 0, ptr %i.nb, align 1, !tbaa !473, !noalias !466
  %i.nc = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  store i32 4, ptr %i.nc, align 4, !tbaa !221, !noalias !466
  %i.nd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.nf = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 68, i64 noundef 8) #22, !noalias !466 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 64 ; 2 uses
  store ptr %i.nf, ptr %7, align 16, !tbaa !222, !noalias !466
  store ptr %i.ng, ptr %i.ne, align 8, !tbaa !223, !noalias !466
  store i32 0, ptr %i.nd, align 16, !tbaa !86, !noalias !466
  store i32 0, ptr %i.ng, align 4, !noalias !466
  %i.nh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(10) %8, ptr noundef nonnull align 1 dereferenceable(2) %i.na), !noalias !474 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3orc19MaterializationUnitE, i64 16), ptr %i.mk, align 8, !tbaa !130, !noalias !466
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.nj = load <2 x ptr>, ptr %7, align 16, !tbaa !58, !noalias !466
  store ptr null, ptr %7, align 16, !tbaa !220, !noalias !466
  store ptr null, ptr %i.ne, align 8, !tbaa !169, !noalias !466
  store <2 x ptr> %i.nj, ptr %i.ni, align 8, !tbaa !58, !noalias !466
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mk, i64 24 ; 2 uses
  %i.nl = load <2 x i32>, ptr %i.nd, align 16, !tbaa !59, !noalias !466
  %i.nm = load i32, ptr %i.nd, align 16, !tbaa !59, !noalias !466
  store i32 0, ptr %i.nd, align 16, !tbaa !59, !noalias !466
  store i32 0, ptr %i.nc, align 4, !tbaa !59, !noalias !466
  store <2 x i32> %i.nl, ptr %i.nk, align 8, !tbaa !59, !noalias !466
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  store ptr null, ptr %i.nn, align 8, !tbaa !226, !noalias !466
  %i.no = load ptr, ptr %8, align 8, !tbaa !69, !noalias !466 ; 2 uses
  %i.np = ptrtoint ptr %i.no to i64
  %notsub.i.i.i.i11.i.i = add i64 %i.np, -1
  %i.nq = icmp ult i64 %notsub.i.i.i.i11.i.i, -32
  br i1 %i.nq, label %bb.bc, label %_ZSt11make_uniqueIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc14ELFNixPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_8DenseMapISt4pairIPNS3_15RuntimeFunctionESJ_ENS2_11SmallVectorISH_INSL_IcLj24EEESM_ELj1EEENS2_12DenseMapInfoISK_vEENS2_6detail12DenseMapPairISK_SO_EEEERNS3_12ExecutorAddrESW_SW_SW_SW_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.bc:                                            ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.ns = atomicrmw sub ptr %i.nr, i64 1 seq_cst, align 8, !noalias !466 ; 0 uses
  %.pre206 = load i32, ptr %i.nk, align 8, !tbaa !86, !noalias !479
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc14ELFNixPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_8DenseMapISt4pairIPNS3_15RuntimeFunctionESJ_ENS2_11SmallVectorISH_INSL_IcLj24EEESM_ELj1EEENS2_12DenseMapInfoISK_vEENS2_6detail12DenseMapPairISK_SO_EEEERNS3_12ExecutorAddrESW_SW_SW_SW_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc14ELFNixPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_8DenseMapISt4pairIPNS3_15RuntimeFunctionESJ_ENS2_11SmallVectorISH_INSL_IcLj24EEESM_ELj1EEENS2_12DenseMapInfoISK_vEENS2_6detail12DenseMapPairISK_SO_EEEERNS3_12ExecutorAddrESW_SW_SW_SW_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i, %bb.bc
  %i.nt = phi i32 [ %i.nm, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i.i ], [ %.pre206, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !466
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitE, i64 16), ptr %i.mk, align 8, !tbaa !130, !noalias !466
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  store ptr %0, ptr %i.nu, align 8, !tbaa !227, !noalias !466
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  store ptr %i.ml, ptr %i.nv, align 8, !tbaa !482, !noalias !466
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 56
  store i64 %i.mn, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !tbaa !147, !noalias !466
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  store ptr %i.mo, ptr %i.nw, align 8, !tbaa !226, !noalias !466
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mk, i64 72
  store <2 x ptr> %i.mu, ptr %i.nx, align 8, !tbaa !58, !noalias !466
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mk, i64 88
  store <2 x i32> %i.mx, ptr %i.ny, align 8, !tbaa !59, !noalias !466
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mk, i64 96
  store i64 %.sroa.04.0.copyload.i, ptr %i.nz, align 8, !tbaa !147, !noalias !466
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mk, i64 104
  store i64 %.sroa.03.0.copyload.i, ptr %i.oa, align 8, !tbaa !147, !noalias !466
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mk, i64 112
  store i64 %.sroa.02.0.copyload.i, ptr %i.ob, align 8, !tbaa !147, !noalias !466
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mk, i64 120
  store i64 %.sroa.01.0.copyload.i, ptr %i.oc, align 8, !tbaa !147, !noalias !466
  %i.od = getelementptr inbounds nuw i8, ptr %i.mk, i64 128
  store i64 %.sroa.0.0.copyload.i, ptr %i.od, align 8, !tbaa !147, !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !466
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.oe = icmp eq i32 %i.nt, 0
  br i1 %i.oe, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.thread, label %bb.bd

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.thread: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc14ELFNixPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_8DenseMapISt4pairIPNS3_15RuntimeFunctionESJ_ENS2_11SmallVectorISH_INSL_IcLj24EEESM_ELj1EEENS2_12DenseMapInfoISK_vEENS2_6detail12DenseMapPairISK_SO_EEEERNS3_12ExecutorAddrESW_SW_SW_SW_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %4, align 8, !tbaa !89
  store ptr null, ptr %34, align 8, !tbaa !89
  call void @_ZN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.mk) #22, !inline_history !483
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i91

bb.bd:                                            ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEJRN4llvm3orc14ELFNixPlatformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_15SymbolStringPtrENS2_8DenseMapISt4pairIPNS3_15RuntimeFunctionESJ_ENS2_11SmallVectorISH_INSL_IcLj24EEESM_ELj1EEENS2_12DenseMapInfoISK_vEENS2_6detail12DenseMapPairISK_SO_EEEERNS3_12ExecutorAddrESW_SW_SW_SW_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.of = load ptr, ptr %i.ef, align 8, !tbaa !91, !noalias !479, !nonnull !15, !align !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.og = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(392) %i.of) #22, !noalias !487 ; 2 uses
  %.not.i.i.i.i81 = icmp eq i32 %i.og, 0
  br i1 %.not.i.i.i.i81, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt20__throw_system_errori(i32 noundef %i.og) #23, !noalias !487
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i: ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !487
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !487
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !239, !noalias !491
  %.not.i.i.i82 = icmp eq i32 %i.oi, 0
  br i1 %.not.i.i.i82, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i, label %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i

_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i
  %i.oj = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !492 ; 3 uses
  %i.ok = atomicrmw add ptr %2, i32 1 monotonic, align 4, !noalias !492 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc15JITDylibDefunctE, i64 16), ptr %i.oj, align 8, !tbaa !130, !noalias !492
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store ptr %2, ptr %i.ol, align 8, !tbaa !254, !noalias !492
  br label %.critedge.sink.split.i.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i.i:                    ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i
  call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %34, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.mk) #22
  %i.om = load ptr, ptr %34, align 8, !tbaa !89, !alias.scope !491
  %.not17.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not17.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit83

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(272) %2) #22
  %i.on = load ptr, ptr %5, align 8, !tbaa !80, !noalias !491 ; 5 uses
  store ptr null, ptr %5, align 8, !tbaa !80, !noalias !491
  %i.oo = load ptr, ptr %i.ef, align 8, !tbaa !91, !noalias !479, !nonnull !15, !align !16
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 56
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !241 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not10.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !130
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(40) %i.mk) #22, !inline_history !497
  %i.ou = load ptr, ptr %34, align 8, !tbaa !89, !alias.scope !491
  %.not19.i.i.i = icmp eq ptr %i.ou, null
  br i1 %.not19.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit83

_ZN4llvm5ErrorD2Ev.exit13.i.i.i:                  ; preds = %bb.bf, %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.i.i.i
  store ptr %i.mk, ptr %6, align 8, !tbaa !244, !noalias !491
  call void @_ZN4llvm3orc8JITDylib26installMaterializationUnitESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS3_EERNS0_15ResourceTrackerE(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.on) #22
  %i.ov = load ptr, ptr %6, align 8, !tbaa !247, !noalias !491 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i2.i.i, label %.critedge.sink.split.i.i.i, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit13.i.i.i
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !130
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(40) %i.ov) #22, !inline_history !498
  br label %.critedge.sink.split.i.i.i

.critedge.sink.split.i.i.i:                       ; preds = %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i
  %.sroa.0135.0 = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i ], [ null, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i ], [ %i.mk, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i ]
  %.sroa.0132.0 = phi ptr [ %i.on, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i ], [ %i.on, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i ], [ null, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit13.i.i.i ], [ null, %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i.i.i ], [ %i.oj, %_ZN4llvm10make_errorINS_3orc15JITDylibDefunctEJPNS1_8JITDylibEEEENS_5ErrorEDpOT0_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %34, align 8, !tbaa !89, !alias.scope !491
  br label %_ZN4llvm5ErrorD2Ev.exit83

_ZN4llvm5ErrorD2Ev.exit83:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i.i, %bb.bf, %.critedge.sink.split.i.i.i
  %.sroa.0135.1 = phi ptr [ %.sroa.0135.0, %.critedge.sink.split.i.i.i ], [ %i.mk, %bb.bf ], [ %i.mk, %_ZN4llvm5ErrorD2Ev.exit.i.i.i ] ; 3 uses
  %.sroa.0132.1 = phi ptr [ %.sroa.0132.0, %.critedge.sink.split.i.i.i ], [ %i.on, %bb.bf ], [ null, %_ZN4llvm5ErrorD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !487
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !487
  %i.oz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(392) %i.of) #22 ; 0 uses
  %i.pa = load ptr, ptr %34, align 8, !tbaa !89   ; 2 uses
  store ptr %i.pa, ptr %4, align 8, !tbaa !89
  store ptr null, ptr %34, align 8, !tbaa !89
  %.not175 = icmp eq ptr %i.pa, null              ; 2 uses
  %.not.i.i84 = icmp eq ptr %.sroa.0132.1, null
  br i1 %.not.i.i84, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit83
  %i.pb = atomicrmw sub ptr %.sroa.0132.1, i32 1 acq_rel, align 4
  %.not.i.i.i.i85 = icmp eq i32 %i.pb, 1
  br i1 %.not.i.i.i.i85, label %bb.bh, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sroa.0132.1) #22
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0132.1, i64 noundef 16) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit83, %bb.bg, %bb.bh
  %.not.i86 = icmp eq ptr %.sroa.0135.1, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.pc = load ptr, ptr %.sroa.0135.1, align 8, !tbaa !130
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0135.1) #22, !inline_history !483
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br i1 %.not175, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i91, label %bb.bn

_ZNSt10unique_ptrIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br i1 %.not175, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i91, label %bb.bn

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i91: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit.thread, %_ZNKSt14default_deleteIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.pf = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.pg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ph = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !499 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  store ptr %2, ptr %i.ph, align 8, !noalias !499
  %.sroa.5.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i32 1, ptr %.sroa.5.0..sroa_idx.i90, align 8, !noalias !499
  store ptr %i.pj, ptr %i.pi, align 8, !tbaa !434, !alias.scope !499
  store ptr %i.pj, ptr %i.pg, align 8, !alias.scope !499
  store ptr %i.ph, ptr %36, align 8, !alias.scope !499
  %40 = load ptr, ptr %33, align 8, !tbaa !226
  store ptr %40, ptr %37, align 8, !tbaa !226
  store ptr null, ptr %33, align 8, !tbaa !226
  call void @_ZN4llvm3orc16ExecutionSession6lookupERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS7_EENS0_15SymbolStringPtrENS0_11SymbolStateE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.170") align 8 %35, ptr noundef nonnull align 8 dereferenceable(392) %i.pf, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr nofree noundef nonnull align 8 dereferenceable(8) %37, i8 noundef zeroext 63) #22
  %i.pk = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.pl = load i8, ptr %i.pk, align 8, !noalias !502
  %i.pm = trunc i8 %i.pl to i1
  br i1 %i.pm, label %bb.bi, label %_ZN4llvm5ErrorD2Ev.exit110

_ZN4llvm5ErrorD2Ev.exit110:                       ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i91
  store ptr null, ptr %4, align 8, !tbaa !89
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i91
  %i.pn = load i64, ptr %35, align 8, !tbaa !49, !noalias !502 ; 2 uses
  %i.po = inttoptr i64 %i.pn to ptr
  store ptr null, ptr %35, align 8, !tbaa !49, !noalias !502
  store ptr %i.po, ptr %4, align 8, !tbaa !89
  %.not176257 = icmp eq i64 %i.pn, 0
  br label %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit

_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit: ; preds = %bb.bi, %_ZN4llvm5ErrorD2Ev.exit110
  %.not176258 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit110 ], [ %.not176257, %bb.bi ]
  %i.pp = load ptr, ptr %37, align 8, !tbaa !69   ; 2 uses
  %i.pq = ptrtoint ptr %i.pp to i64
  %notsub.i.i.i114 = add i64 %i.pq, -1
  %i.pr = icmp ult i64 %notsub.i.i.i114, -32
  br i1 %i.pr, label %bb.bj, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit115

bb.bj:                                            ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pt = atomicrmw sub ptr %i.ps, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit115

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit115:        ; preds = %_ZN4llvm8ExpectedINS_3orc17ExecutorSymbolDefEED2Ev.exit, %bb.bj
  %i.pu = load ptr, ptr %36, align 8, !tbaa !447  ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit117, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit115
  %i.pv = load ptr, ptr %i.pg, align 8, !tbaa !448
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pu to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef %i.py) #25
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit117

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit117: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit115, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br i1 %.not176258, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @_ZN4llvm3orc14ELFNixPlatform32associateRuntimeSupportFunctionsERNS0_8JITDylibE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %38, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(272) %2)
  %i.pz = load ptr, ptr %38, align 8, !tbaa !89   ; 2 uses
  %.not177 = icmp eq ptr %i.pz, null
  br i1 %.not177, label %_ZN4llvm5ErrorD2Ev.exit118, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store ptr %i.pz, ptr %4, align 8, !tbaa !89
  br label %_ZN4llvm5ErrorD2Ev.exit118

_ZN4llvm5ErrorD2Ev.exit118:                       ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitEEclEPS1_.exit.i, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit117, %_ZNSt10unique_ptrIN12_GLOBAL__N_150ELFNixPlatformCompleteBootstrapMaterializationUnitESt14default_deleteIS1_EED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit118
  %i.qa = load ptr, ptr %33, align 8, !tbaa !69   ; 2 uses
  %i.qb = ptrtoint ptr %i.qa to i64
  %notsub.i.i.i119 = add i64 %i.qb, -1
  %i.qc = icmp ult i64 %notsub.i.i.i119, -32
  br i1 %i.qc, label %bb.bo, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit120

bb.bo:                                            ; preds = %bb.bn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qe = atomicrmw sub ptr %i.qd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit120

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit120:        ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit120
  %i.qf = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %25, i64 124 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !505 ; 2 uses
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %_ZN4llvm3orc14ELFNixPlatform13BootstrapInfoD2Ev.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.bp
  %i.qj = load ptr, ptr %i.qf, align 8, !tbaa !506
  %i.qk = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !507
  %i.qm = zext i32 %i.qh to i64
  %i.qn = add nuw nsw i64 %i.qm, 31
  %i.qo = lshr i64 %i.qn, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv.i
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !59 ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.qq, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.qr = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.bq

bb.bq:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i124
  %.0.i3.i = phi i32 [ %i.qq, %.lr.ph.i124 ], [ %i.ro, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.qs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.qt = or disjoint i32 %i.qs, %i.qr
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [128 x i8], ptr %i.qj, i64 %i.qu ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !508 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !510 ; 2 uses
  %.not4.i.i.i.i125 = icmp eq i32 %i.qz, 0
  br i1 %.not4.i.i.i.i125, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.bq
  %i.ra = zext i32 %i.qz to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.ra, 96
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i126

.lr.ph.i.i.i.i126:                                ; preds = %_ZNSt4pairIN4llvm11SmallVectorIcLj24EEES2_ED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i127 = phi ptr [ %i.rc, %_ZNSt4pairIN4llvm11SmallVectorIcLj24EEES2_ED2Ev.exit.i.i.i.i ], [ %i.rb, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.rc = getelementptr inbounds i8, ptr %.05.i.i.i.i127, i64 -96 ; 3 uses
  %i.rd = getelementptr inbounds i8, ptr %.05.i.i.i.i127, i64 -48
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !511 ; 2 uses
  %i.rf = getelementptr inbounds i8, ptr %.05.i.i.i.i127, i64 -24
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i.i126
  call void @free(ptr noundef %i.re) #22
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i: ; preds = %bb.br, %.lr.ph.i.i.i.i126
  %i.rh = load ptr, ptr %i.rc, align 8, !tbaa !511 ; 2 uses
  %i.ri = getelementptr inbounds i8, ptr %.05.i.i.i.i127, i64 -72
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNSt4pairIN4llvm11SmallVectorIcLj24EEES2_ED2Ev.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.rh) #22
  br label %_ZNSt4pairIN4llvm11SmallVectorIcLj24EEES2_ED2Ev.exit.i.i.i.i

_ZNSt4pairIN4llvm11SmallVectorIcLj24EEES2_ED2Ev.exit.i.i.i.i: ; preds = %bb.bs, %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i.i128 = icmp eq ptr %i.qx, %i.rc
  br i1 %.not.i.i.i.i128, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i126, !llvm.loop !513

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i: ; preds = %_ZNSt4pairIN4llvm11SmallVectorIcLj24EEES2_ED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.qw, align 8, !tbaa !508
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i, %bb.bq
  %i.rk = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i ], [ %i.qx, %bb.bq ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i
  call void @free(ptr noundef %i.rk) #22
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.bt, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIcLj24EEES3_ELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i
  %i.rn = add i32 %.0.i3.i, -1
  %i.ro = and i32 %i.rn, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.bq, !llvm.loop !514

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i129 = icmp eq i64 %indvars.iv.next.i, %i.qo
  br i1 %.not.i.i129, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !515

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pre208 = load i32, ptr %i.qg, align 4, !tbaa !505 ; 2 uses
  %i.rp = icmp eq i32 %.pre208, 0
  br i1 %i.rp, label %_ZN4llvm3orc14ELFNixPlatform13BootstrapInfoD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit
  %i.rq = load ptr, ptr %i.qf, align 8, !tbaa !506
  %i.rr = zext i32 %.pre208 to i64                ; 2 uses
  %i.rs = shl nuw nsw i64 %i.rr, 7
  %i.rt = add nuw nsw i64 %i.rr, 31
  %i.ru = lshr i64 %i.rt, 3
  %i.rv = and i64 %i.ru, 1073741820
  %i.rw = add nuw nsw i64 %i.rv, %i.rs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.rq, i64 noundef %i.rw, i64 noundef 8) #22
  br label %_ZN4llvm3orc14ELFNixPlatform13BootstrapInfoD2Ev.exit

_ZN4llvm3orc14ELFNixPlatform13BootstrapInfoD2Ev.exit: ; preds = %bb.bp, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc15RuntimeFunctionES5_ENS_11SmallVectorIS2_INS7_IcLj24EEES8_ELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit, %bb.bu
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.em) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  ret void
end_hunk_1
