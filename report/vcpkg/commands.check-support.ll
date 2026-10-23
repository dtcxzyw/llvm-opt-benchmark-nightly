Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.check-support?download=true
inline.NumInlined: 1376
inline.NumDeleted: 800
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5vcpkg30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_:bb.a
  store i8 0, ptr %i.u, align 8, !tbaa !54, !noalias !199
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bi = load i64, ptr %i.x, align 8, !tbaa !56, !noalias !199
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bk = load <2 x ptr>, ptr %i.z, align 8, !tbaa !41, !noalias !199
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !57, !noalias !199
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !noalias !199
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !60, !alias.scope !199
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %43)
          to label %_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.i unwind label %bb.o

_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.i: ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !40, !noalias !199 ; 3 uses
  %.pre6.i = load ptr, ptr %i.ab, align 8, !tbaa !39, !noalias !199 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %.pre.i, %.pre6.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %.pre.i, %_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.i ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !54
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %.pre6.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !40, !noalias !199
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.i
  %i.bu = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %.pre.i, %_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !57, !noalias !199
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.thread.i
  %i.bz = load ptr, ptr %43, align 8, !tbaa !52, !noalias !199 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.u
  br i1 %i.ca, label %_ZN5vcpkg15FullPackageSpecD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %i.cb = load i64, ptr %i.u, align 8, !tbaa !54, !noalias !199
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZN5vcpkg15FullPackageSpecD2Ev.exit.i

_ZN5vcpkg15FullPackageSpecD2Ev.exit.i:            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !199
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.cd, %i.q
  br i1 %.not.i, label %"_ZN5vcpkg4Util4fmapIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEZNS_30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESJ_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISM_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISM_EE5beginEEEE4typeESaISU_EEOSM_OSQ_.exit", label %bb.d

bb.n:                                             ; preds = %.noexc.i, %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg15FullPackageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !199
  br label %.body

"_ZN5vcpkg4Util4fmapIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEZNS_30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESJ_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISM_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISM_EE5beginEEEE4typeESaISU_EEOSM_OSQ_.exit": ; preds = %_ZN5vcpkg15FullPackageSpecD2Ev.exit.i, %bb.c
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg10VcpkgPaths14get_filesystemEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.q unwind label %bb.ab      ; 2 uses

bb.q:                                             ; preds = %"_ZN5vcpkg4Util4fmapIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEZNS_30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESJ_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISM_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISM_EE5beginEEEE4typeESaISU_EEOSM_OSQ_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  invoke void @_ZNK5vcpkg10VcpkgPaths17make_registry_setEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.65") align 8 %47, ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.ch = load ptr, ptr %47, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_ZN5vcpkg21make_overlay_providerERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.89") align 8 %49, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(64) %i.ci)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5vcpkg21PathsPortFileProviderC1ERKNS_11RegistrySetEOSt10unique_ptrINS_20IFullOverlayProviderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %bb.t unwind label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %49, align 8, !tbaa !65   ; 3 uses
  %.not.i120 = icmp eq ptr %i.cj, null
  br i1 %.not.i120, label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i: ; preds = %bb.t
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #19, !inline_history !1
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.cn = invoke noundef nonnull align 1 ptr @_ZNK5vcpkg10VcpkgPaths9installedEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.u unwind label %bb.af

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths10buildtreesEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths8packagesEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1260
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1262
  invoke void @_ZN5vcpkg27InstallAndBuildDatabaseLockC1ERKNS_10FilesystemERKNS_14InstalledPathsERKNS_4PathES9_RKNS_8OptionalIbEESD_(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 1 %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 1 dereferenceable(2) %i.cq, ptr noundef nonnull align 1 dereferenceable(2) %i.cr)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  invoke void @_ZN5vcpkg9CMakeVars31make_triplet_cmake_var_providerERKNS_10VcpkgPathsERKNS_27InstallAndBuildDatabaseLockE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.115") align 8 %51, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  store ptr null, ptr %52, align 8, !tbaa !208
  %i.cs = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %3, ptr %i.cs, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !209
  %i.cu = getelementptr inbounds nuw i8, ptr %52, i64 20
  store i32 0, ptr %i.cu, align 4, !tbaa !210
  %i.cv = getelementptr inbounds nuw i8, ptr %52, i64 24
  store i32 0, ptr %i.cv, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths8packagesEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5vcpkg19PackagesDirAssignerC1ERKNS_4PathE(ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.cx = load ptr, ptr %46, align 8, !tbaa !212  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !212 ; 2 uses
  %.not350 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not350, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %54, i64 48 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %56, i64 32 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %56, i64 56 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %56, i64 64 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %56, i64 72 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %54, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %60, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %60, i64 64 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %60, i64 80 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %60, i64 72 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %60, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %60, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 5 uses
  %.fca.1.gep.i95.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.4.0..sroa_idx.i.i.i98.i = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %.fca.1.gep.i128.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i131.i = getelementptr inbounds nuw i8, ptr %15, i64 40
  %.fca.1.gep.i135.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i138.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %.fca.1.gep.i110.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %.fca.1.gep.i152.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i155.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.fca.1.gep.i159.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i162.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %56, i64 40 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.fca.1.gep.i75.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %27, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 40
  %.fca.1.gep.i80.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %56, i64 48
  br label %bb.ai

._crit_edge354:                                   ; preds = %_ZN12_GLOBAL__N_14PortD2Ev.exit221, %bb.aa
  br i1 %.sroa.0.0.i.i.i, label %bb.es, label %bb.ex

bb.ab:                                            ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, %"_ZN5vcpkg4Util4fmapIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEZNS_30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESJ_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISM_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISM_EE5beginEEEE4typeESaISU_EEOSM_OSQ_.exit"
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.q
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ad:                                            ; preds = %bb.r
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit123

bb.ae:                                            ; preds = %bb.s
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %49, align 8, !tbaa !65   ; 3 uses
  %.not.i121 = icmp eq ptr %i.gu, null
  br i1 %.not.i121, label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit123, label %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i122

_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i122: ; preds = %bb.ae
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !67
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gu) #19, !inline_history !1
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit123

_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit123: ; preds = %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i122, %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.gs, %bb.ad ], [ %i.gt, %bb.ae ], [ %i.gt, %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %bb.fe

bb.af:                                            ; preds = %bb.w, %bb.v, %bb.u, %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ag:                                            ; preds = %bb.x
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5vcpkg9CMakeVars16CMakeVarProviderESt14default_deleteIS2_EED2Ev.exit245

bb.ah:                                            ; preds = %bb.z, %bb.y
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ai:                                            ; preds = %.lr.ph353, %_ZN12_GLOBAL__N_14PortD2Ev.exit221
  %.sroa.0271.0351 = phi ptr [ %i.cx, %.lr.ph353 ], [ %i.wm, %_ZN12_GLOBAL__N_14PortD2Ev.exit221 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.hb = load ptr, ptr %51, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  invoke void @_ZN5vcpkg27create_feature_install_planERKNS_16PortFileProviderERKNS_9CMakeVars16CMakeVarProviderENS_4SpanIKNS_15FullPackageSpecEEERKNS_16StatusParagraphsERNS_19PackagesDirAssignerERKNS_24CreateInstallPlanOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ActionPlan") align 8 %54, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr %.sroa.0271.0351, i64 1, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef nonnull align 8 dereferenceable(28) %52)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.hc = load ptr, ptr %55, align 8, !tbaa !70   ; 3 uses
  %i.hd = load ptr, ptr %i.da, align 8, !tbaa !71 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hc, %i.hd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i124

.lr.ph.i.i.i.i124:                                ; preds = %bb.aj, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hf, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.hc, %bb.aj ] ; 2 uses
  %i.he = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i124
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.he) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef 248) #22
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i124
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i125 = icmp eq ptr %i.hf, %i.hd
  br i1 %.not.i.i.i.i125, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i124, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %55, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.aj
  %i.hg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.hc, %bb.aj ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i.i, label %_ZN5vcpkg16StatusParagraphsD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hh = load ptr, ptr %i.db, align 8, !tbaa !74
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #22
  br label %_ZN5vcpkg16StatusParagraphsD2Ev.exit

_ZN5vcpkg16StatusParagraphsD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  %i.hl = load ptr, ptr %51, align 8, !tbaa !214
  invoke void @_ZNK5vcpkg9CMakeVars16CMakeVarProvider13load_tag_varsERKSt6vectorINS_17InstallPlanActionESaIS3_EENS_7TripletE(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr %3)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZN5vcpkg16StatusParagraphsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  store ptr %i.dd, ptr %56, align 8, !tbaa !50
  store i64 0, ptr %i.de, align 8, !tbaa !53
  store i8 0, ptr %i.dd, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  store ptr @_ZN5vcpkg7Triplet16DEFAULT_INSTANCEE, ptr %i.dg, align 8, !tbaa !215
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !50
  store i64 0, ptr %i.dj, align 8, !tbaa !53
  store i8 0, ptr %i.di, align 8, !tbaa !54
  %i.hm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0271.0351)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(32) %i.hm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.am
  %i.hn = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0271.0351)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.hn, ptr %i.dg, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.ho = load ptr, ptr %i.dc, align 8, !tbaa !216 ; 2 uses
  %i.hp = load ptr, ptr %i.dk, align 8, !tbaa !216 ; 2 uses
  %.not279344 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not279344, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ce
  %i.hq = trunc nuw i8 %.2 to i1                  ; 3 uses
  br i1 %.sroa.0.0.i.i.i, label %bb.cf, label %bb.dd

._crit_edge.thread:                               ; preds = %bb.an
  br i1 %.sroa.0.0.i.i.i, label %bb.cf, label %.thread564

bb.ao:                                            ; preds = %bb.ai
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg16StatusParagraphsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.er

bb.ap:                                            ; preds = %_ZN5vcpkg16StatusParagraphsD2Ev.exit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.aq:                                            ; preds = %bb.am, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.lr.ph:                                           ; preds = %bb.an, %bb.ce
  %.0369 = phi i8 [ %.2, %bb.ce ], [ 0, %bb.an ]  ; 3 uses
  %i.hu = phi ptr [ %.val113367, %bb.ce ], [ null, %bb.an ] ; 8 uses
  %.val.i.i = phi ptr [ %.val114370, %bb.ce ], [ null, %bb.an ] ; 8 uses
  %70 = phi ptr [ %72, %bb.ce ], [ null, %bb.an ] ; 4 uses
  %.sroa.0265.0345 = phi ptr [ %i.no, %bb.ce ], [ %i.ho, %bb.an ] ; 9 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0265.0345, i64 136
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !242
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !244
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !246
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 456 ; 4 uses
  %i.ia = load ptr, ptr %51, align 8, !tbaa !214  ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !67
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = invoke noundef ptr %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0265.0345)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ar:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  store i32 162, ptr %58, align 8, !tbaa !43
  store <2 x ptr> <ptr @.str.2, ptr @__func__._ZN5vcpkg30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_>, ptr %i.dl, align 8, !tbaa !34
  %i.if = icmp ne ptr %i.ie, null
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEb(ptr noundef nonnull align 8 dereferenceable(24) %58, i1 noundef zeroext %i.if)
          to label %bb.as unwind label %bb.bf

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  %i.ig = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0265.0345)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !53 ; 3 uses
  %i.ij = load i64, ptr %i.de, align 8, !tbaa !53
  %i.ik = icmp eq i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.il = icmp eq i64 %i.ii, 0
  br i1 %i.il, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.au
  %i.im = load ptr, ptr %56, align 8, !tbaa !52
  %i.in = load ptr, ptr %i.ig, align 8, !tbaa !52
  %bcmp.i = call i32 @bcmp(ptr %i.in, ptr %i.im, i64 %i.ii)
  %i.io = icmp eq i32 %bcmp.i, 0
  br i1 %i.io, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ip = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0265.0345)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.sroa.08.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !56
  %i.iq = icmp eq ptr %i.ip, %.sroa.08.0.copyload
  br i1 %i.iq, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0265.0345, i64 80
  %i.is = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  invoke void @_ZN5vcpkg18PlatformExpression9to_stringB5cxx11ERKNS0_4ExprE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 8 dereferenceable(8) %i.hz)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.it = load ptr, ptr %i.dh, align 8, !tbaa !52 ; 6 uses
  %i.iu = icmp eq ptr %i.it, %i.di
  %i.iv = load ptr, ptr %59, align 8, !tbaa !52   ; 5 uses
  %i.iw = icmp eq ptr %i.iv, %i.dz                ; 2 uses
  br i1 %i.iu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ay
  br i1 %i.iw, label %bb.az, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ay
  br i1 %i.iw, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ix = load i64, ptr %i.ea, align 8, !tbaa !53 ; 3 uses
  %i.iy = icmp ult i64 %i.ix, 16
  call void @llvm.assume(i1 %i.iy)
  switch i64 %i.ix, label %bb.bb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.iz = load i8, ptr %i.iv, align 1, !tbaa !54
  store i8 %i.iz, ptr %i.it, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.iv, i64 %i.ix, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ja = load i64, ptr %i.ea, align 8, !tbaa !53 ; 2 uses
  store i64 %i.ja, ptr %i.dj, align 8, !tbaa !53
  %i.jb = load ptr, ptr %i.dh, align 8, !tbaa !52
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ja
  store i8 0, ptr %i.jc, align 1, !tbaa !54
  %.pre.i127 = load ptr, ptr %59, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.iv, ptr %i.dh, align 8, !tbaa !52
  %i.jd = load <2 x i64>, ptr %i.ea, align 8, !tbaa !54
  store <2 x i64> %i.jd, ptr %i.dj, align 8, !tbaa !54
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.je = load i64, ptr %i.di, align 8, !tbaa !54
  store ptr %i.iv, ptr %i.dh, align 8, !tbaa !52
  %i.jf = load <2 x i64>, ptr %i.ea, align 8, !tbaa !54
  store <2 x i64> %i.jf, ptr %i.dj, align 8, !tbaa !54
  %.not.i126 = icmp eq ptr %i.it, null
  br i1 %.not.i126, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.it, ptr %59, align 8, !tbaa !52
  store i64 %i.je, ptr %i.dz, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dz, ptr %59, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bc, %bb.bd
  %i.jg = phi ptr [ %.pre.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.it, %bb.bc ], [ %i.dz, %bb.bd ]
  store i64 0, ptr %i.ea, align 8, !tbaa !53
  store i8 0, ptr %i.jg, align 1, !tbaa !54
  %i.jh = load ptr, ptr %59, align 8, !tbaa !52   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.dz
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jj = load i64, ptr %i.dz, align 8, !tbaa !54
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  %i.jl = invoke noundef zeroext i1 @_ZNK5vcpkg18PlatformExpression4Expr8evaluateERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEE(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull align 8 dereferenceable(56) %i.ie)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %spec.select = select i1 %i.jl, i8 1, i8 %.0369
  br label %bb.ce

bb.bf:                                            ; preds = %bb.ar
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %.body202

bb.bg:                                            ; preds = %bb.ax
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %.body202

.critedge:                                        ; preds = %bb.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.av
  %i.jo = invoke noundef zeroext i1 @_ZNK5vcpkg18PlatformExpression4Expr8evaluateERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEE(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull align 8 dereferenceable(56) %i.ie)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %.critedge
  br i1 %i.jo, label %bb.ce, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #19
  store ptr %i.dm, ptr %60, align 8, !tbaa !50
  store i64 0, ptr %i.dn, align 8, !tbaa !53
  store i8 0, ptr %i.dm, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  store ptr @_ZN5vcpkg7Triplet16DEFAULT_INSTANCEE, ptr %i.dp, align 8, !tbaa !215
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !50
  store i64 0, ptr %i.ds, align 8, !tbaa !53
  store i8 0, ptr %i.dr, align 8, !tbaa !54
  %i.jp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0265.0345)
          to label %bb.bj unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %i.jp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit128 unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit128: ; preds = %bb.bj
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0265.0345, i64 80
  %i.jr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %bb.bk unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit128
  %i.js = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0265.0345)
          to label %bb.bl unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.js, ptr %i.dp, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #19
  invoke void @_ZN5vcpkg18PlatformExpression9to_stringB5cxx11ERKNS0_4ExprE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %61, ptr noundef nonnull align 8 dereferenceable(8) %i.hz)
          to label %bb.bm unwind label %bb.cd

bb.bm:                                            ; preds = %bb.bl
  %i.jt = load ptr, ptr %i.dq, align 8, !tbaa !52 ; 6 uses
  %i.ju = icmp eq ptr %i.jt, %i.dr
  %i.jv = load ptr, ptr %61, align 8, !tbaa !52   ; 5 uses
  %i.jw = icmp eq ptr %i.jv, %i.dt                ; 2 uses
  br i1 %i.ju, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i134: ; preds = %bb.bm
  br i1 %i.jw, label %bb.bn, label %.thread.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i129: ; preds = %bb.bm
  br i1 %i.jw, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i130

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i134
  %i.jx = load i64, ptr %i.du, align 8, !tbaa !53 ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 16
  call void @llvm.assume(i1 %i.jy)
  switch i64 %i.jx, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i132
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !54
  store i8 %i.jz, ptr %i.jt, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i132

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.jv, i64 %i.jx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i132: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.ka = load i64, ptr %i.du, align 8, !tbaa !53 ; 2 uses
  store i64 %i.ka, ptr %i.ds, align 8, !tbaa !53
  %i.kb = load ptr, ptr %i.dq, align 8, !tbaa !52
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ka
  store i8 0, ptr %i.kc, align 1, !tbaa !54
  %.pre.i133 = load ptr, ptr %61, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit136

.thread.i135:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i134
  store ptr %i.jv, ptr %i.dq, align 8, !tbaa !52
  %i.kd = load <2 x i64>, ptr %i.du, align 8, !tbaa !54
  store <2 x i64> %i.kd, ptr %i.ds, align 8, !tbaa !54
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i129
  %i.ke = load i64, ptr %i.dr, align 8, !tbaa !54
  store ptr %i.jv, ptr %i.dq, align 8, !tbaa !52
  %i.kf = load <2 x i64>, ptr %i.du, align 8, !tbaa !54
  store <2 x i64> %i.kf, ptr %i.ds, align 8, !tbaa !54
  %.not.i131 = icmp eq ptr %i.jt, null
  br i1 %.not.i131, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i130
  store ptr %i.jt, ptr %61, align 8, !tbaa !52
  store i64 %i.ke, ptr %i.dt, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit136

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i130, %.thread.i135
  store ptr %i.dt, ptr %61, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i132, %bb.bq, %bb.br
  %i.kg = phi ptr [ %.pre.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i132 ], [ %i.jt, %bb.bq ], [ %i.dt, %bb.br ]
  store i64 0, ptr %i.du, align 8, !tbaa !53
  store i8 0, ptr %i.kg, align 1, !tbaa !54
  %i.kh = load ptr, ptr %61, align 8, !tbaa !52   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.dt
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit136
  %i.kj = load i64, ptr %i.dt, align 8, !tbaa !54
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  %.not.i140 = icmp eq ptr %.val.i.i, %70
  br i1 %.not.i140, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  invoke fastcc void @_ZN12_GLOBAL__N_14PortC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %60)
          to label %.noexc unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bs
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 96 ; 2 uses
  store ptr %i.kl, ptr %i.dv, align 8, !tbaa !83
  br label %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE9push_backERKS1_.exit

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.km = ptrtoint ptr %.val.i.i to i64
  %i.kn = ptrtoint ptr %i.hu to i64
  %i.ko = sub i64 %i.km, %i.kn                    ; 4 uses
  %i.kp = icmp eq i64 %i.ko, 9223372036854775776
  br i1 %i.kp, label %bb.bu, label %_ZNKSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #20
          to label %.noexc144 unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bt
  %i.kq = sdiv exact i64 %i.ko, 96                ; 3 uses
  %i.kr = icmp eq ptr %.val.i.i, %i.hu            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.kr, i64 1, i64 %i.kq
  %i.ks = add nsw i64 %.sroa.speculated.i.i.i, %i.kq ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.kq
  %i.ku = call i64 @llvm.umin.i64(i64 %i.ks, i64 96076792050570581)
  %i.kv = select i1 %i.kt, i64 96076792050570581, i64 %i.ku ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.kw = mul nuw nsw i64 %i.kv, 96               ; 2 uses
  %i.kx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #23
          to label %.noexc145 unwind label %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ko
  invoke fastcc void @_ZN12_GLOBAL__N_14PortC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(96) %60)
          to label %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i unwind label %bb.bz

_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i: ; preds = %.noexc145
  br i1 %i.kr, label %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit44.i.i, label %.lr.ph.i.i.i.i.i141

.lr.ph.i.i.i.i.i141:                              ; preds = %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.mj, %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.kx, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i ] ; 11 uses
  %.092.i.i.i.i.i = phi ptr [ %i.mi, %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.hu, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i ] ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.kz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.kz, ptr %.03.i.i.i.i.i, align 8, !tbaa !50, !alias.scope !247
  %i.la = load ptr, ptr %.092.i.i.i.i.i, align 8, !tbaa !52, !alias.scope !248 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16 ; 5 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i142

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i141
  %i.ld = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !53, !alias.scope !248 ; 3 uses
  %i.lf = icmp ult i64 %i.le, 16
  call void @llvm.assume(i1 %i.lf)
  %i.lg = add nuw nsw i64 %i.le, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kz, ptr noundef nonnull align 8 dereferenceable(1) %i.lb, i64 %i.lg, i1 false), !alias.scope !249
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i142: ; preds = %.lr.ph.i.i.i.i.i141
  store ptr %i.la, ptr %.03.i.i.i.i.i, align 8, !tbaa !52, !alias.scope !247
  %i.lh = load i64, ptr %i.lb, align 8, !tbaa !54, !alias.scope !248
  store i64 %i.lh, ptr %i.kz, align 8, !tbaa !54, !alias.scope !247
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !53, !alias.scope !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i142, %bb.bv
  %i.li = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i142 ], [ %i.le, %bb.bv ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  store i64 %i.li, ptr %i.lk, align 8, !tbaa !53, !alias.scope !247
  store ptr %i.lb, ptr %.092.i.i.i.i.i, align 8, !tbaa !52, !alias.scope !248
  store i64 0, ptr %i.lj, align 8, !tbaa !53, !alias.scope !248
  store i8 0, ptr %i.lb, align 8, !tbaa !54, !alias.scope !248
  %i.ll = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32
  %i.lm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.ln = load <2 x ptr>, ptr %i.lm, align 8, !tbaa !41, !alias.scope !248
  store <2 x ptr> %i.ln, ptr %i.ll, align 8, !tbaa !41, !alias.scope !247
  %i.lo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 48
  %i.lp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 48
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !57, !alias.scope !248
  store ptr %i.lq, ptr %i.lo, align 8, !tbaa !57, !alias.scope !247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, i8 0, i64 24, i1 false), !alias.scope !248
  %i.lr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 56
  %i.ls = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 56
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !56, !alias.scope !248
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !56, !alias.scope !247
  %i.lu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 64 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 64 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 80 ; 3 uses
  store ptr %i.lw, ptr %i.lu, align 8, !tbaa !50, !alias.scope !247
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !52, !alias.scope !248 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 80 ; 5 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 72
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !53, !alias.scope !248 ; 3 uses
  %i.mc = icmp ult i64 %i.mb, 16
  call void @llvm.assume(i1 %i.mc)
  %i.md = add nuw nsw i64 %i.mb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lw, ptr noundef nonnull align 8 dereferenceable(1) %i.ly, i64 %i.md, i1 false), !alias.scope !249
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  store ptr %i.lx, ptr %i.lu, align 8, !tbaa !52, !alias.scope !247
  %i.me = load i64, ptr %i.ly, align 8, !tbaa !54, !alias.scope !248
  store i64 %i.me, ptr %i.lw, align 8, !tbaa !54, !alias.scope !247
  %.phi.trans.insert1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 72
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i, align 8, !tbaa !53, !alias.scope !248
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i, %bb.bw
  %i.mf = phi i64 [ %i.mb, %bb.bw ], [ %.pre2.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 72
  %i.mh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 72
  store i64 %i.mf, ptr %i.mh, align 8, !tbaa !53, !alias.scope !247
  store ptr %i.ly, ptr %i.lv, align 8, !tbaa !52, !alias.scope !248
  store i64 0, ptr %i.mg, align 8, !tbaa !53, !alias.scope !248
  store i8 0, ptr %i.ly, align 8, !tbaa !54, !alias.scope !248
  %i.mi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 96 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i143 = icmp eq ptr %i.mi, %.val.i.i
  br i1 %.not.i.i.i.i.i143, label %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit44.i.i, label %.lr.ph.i.i.i.i.i141, !llvm.loop !174

_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit44.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kx, %_ZNSt16allocator_traitsISaIN12_GLOBAL__N_14PortEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit.i.i ], [ %i.mj, %_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i45.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i45.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit44.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.ko) #22
  br label %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

bb.by:                                            ; preds = %bb.bz
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body146 unwind label %bb.ca

bb.bz:                                            ; preds = %.noexc145
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  %i.mo = call ptr @__cxa_begin_catch(ptr %i.mn) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.kw) #22
  invoke void @__cxa_rethrow() #20
          to label %bb.cb unwind label %bb.by

bb.ca:                                            ; preds = %bb.by
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #21
  unreachable

bb.cb:                                            ; preds = %bb.bz
  unreachable

_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bx, %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit44.i.i
  store ptr %i.kx, ptr %57, align 8, !tbaa !84
  store ptr %i.mk, ptr %i.dv, align 8, !tbaa !83
  %i.mr = getelementptr inbounds nuw [96 x i8], ptr %i.kx, i64 %i.kv ; 2 uses
  store ptr %i.mr, ptr %i.dw, align 8, !tbaa !85
  br label %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %.noexc
  %71 = phi ptr [ %70, %.noexc ], [ %i.mr, %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %.val114373 = phi ptr [ %i.kl, %.noexc ], [ %i.mk, %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %.val113366 = phi ptr [ %i.hu, %.noexc ], [ %i.kx, %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ms = load ptr, ptr %i.dq, align 8, !tbaa !52 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.dr
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE9push_backERKS1_.exit
  %i.mu = load i64, ptr %i.dr, align 8, !tbaa !54
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.mw = load ptr, ptr %i.do, align 8, !tbaa !40 ; 3 uses
  %i.mx = load ptr, ptr %i.dx, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i148 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not4.i.i.i.i148, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i149

.lr.ph.i.i.i.i149:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i150 = phi ptr [ %i.nd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.my = load ptr, ptr %.05.i.i.i.i150, align 8, !tbaa !52 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i150, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i149
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !54
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i150, i64 32 ; 2 uses
  %.not.i.i.i.i151 = icmp eq ptr %i.nd, %i.mx
  br i1 %.not.i.i.i.i151, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i149, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i152 = load ptr, ptr %i.do, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ne = phi ptr [ %.pr.i.i152, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i153 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i1.i.i153, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.nf = load ptr, ptr %i.dy, align 8, !tbaa !57
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.ne to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.ni) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cc, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.nj = load ptr, ptr %60, align 8, !tbaa !52   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.dm
  br i1 %i.nk, label %_ZN12_GLOBAL__N_14PortD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.nl = load i64, ptr %i.dm, align 8, !tbaa !54
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #22
  br label %_ZN12_GLOBAL__N_14PortD2Ev.exit

_ZN12_GLOBAL__N_14PortD2Ev.exit:                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  br label %bb.ce

.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_14PortESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.bs, %bb.bj, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit128, %bb.bk, %bb.bu
  %lpad.loopexit.split-lp590 = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.cd:                                            ; preds = %bb.bl
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  br label %.body146

.body146:                                         ; preds = %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.by, %bb.cd
  %.pn91 = phi { ptr, i32 } [ %i.nn, %bb.cd ], [ %i.ml, %bb.by ], [ %lpad.loopexit.split-lp590, %.loopexit.split-lp288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN12_GLOBAL__N_14PortD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  br label %.body202

bb.ce:                                            ; preds = %bb.bh, %_ZN12_GLOBAL__N_14PortD2Ev.exit, %bb.be
  %72 = phi ptr [ %70, %bb.be ], [ %71, %_ZN12_GLOBAL__N_14PortD2Ev.exit ], [ %70, %bb.bh ]
  %.val114370 = phi ptr [ %.val.i.i, %bb.be ], [ %.val114373, %_ZN12_GLOBAL__N_14PortD2Ev.exit ], [ %.val.i.i, %bb.bh ] ; 4 uses
  %.val113367 = phi ptr [ %i.hu, %bb.be ], [ %.val113366, %_ZN12_GLOBAL__N_14PortD2Ev.exit ], [ %i.hu, %bb.bh ] ; 4 uses
  %.2 = phi i8 [ %spec.select, %bb.be ], [ %.0369, %_ZN12_GLOBAL__N_14PortD2Ev.exit ], [ %.0369, %bb.bh ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0265.0345, i64 440 ; 2 uses
  %.not279 = icmp eq ptr %i.no, %i.hp
  br i1 %.not279, label %._crit_edge, label %.lr.ph

bb.cf:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa558 = phi i1 [ false, %._crit_edge.thread ], [ %i.hq, %._crit_edge ] ; 2 uses
  %.val118556 = phi ptr [ null, %._crit_edge.thread ], [ %.val113367, %._crit_edge ] ; 2 uses
  %.val119554 = phi ptr [ null, %._crit_edge.thread ], [ %.val114370, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  %i.np = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json5Array9push_backEONS0_6ObjectE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %bb.cg unwind label %bb.cq     ; 4 uses

bb.cg:                                            ; preds = %bb.cf
  %i.nq = load ptr, ptr %62, align 8, !tbaa !88   ; 3 uses
  %i.nr = load ptr, ptr %i.gh, align 8, !tbaa !89 ; 2 uses
  %.not4.i.i.i.i154 = icmp eq ptr %i.nq, %i.nr
  br i1 %.not4.i.i.i.i154, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i155

.lr.ph.i.i.i.i155:                                ; preds = %bb.cg, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i156 = phi ptr [ %i.ny, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i ], [ %i.nq, %bb.cg ] ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i156, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ns) #19
  %i.nt = load ptr, ptr %.05.i.i.i.i156, align 8, !tbaa !52 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i156, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i157: ; preds = %.lr.ph.i.i.i.i155
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !54
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #22
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i157
  %i.ny = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i156, i64 40 ; 2 uses
  %.not.i.i.i.i158 = icmp eq ptr %i.ny, %i.nr
  br i1 %.not.i.i.i.i158, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i155, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i
  %.pr.i.i159 = load ptr, ptr %62, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, %bb.cg
  %i.nz = phi ptr [ %.pr.i.i159, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.nq, %bb.cg ] ; 3 uses
  %.not.i.i1.i.i160 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i1.i.i160, label %_ZN5vcpkg4Json6ObjectD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.oa = load ptr, ptr %i.gi, align 8, !tbaa !90
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.nz to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.od) #22
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit

_ZN5vcpkg4Json6ObjectD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  invoke fastcc void @_ZN12_GLOBAL__N_19to_objectERKNS_4PortE(ptr dead_on_unwind noalias writable align 8 %63, ptr noundef nonnull align 8 dereferenceable(96) %56)
          to label %bb.ci unwind label %bb.cr

bb.ci:                                            ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit
  %i.oe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr nonnull @.str.3, i64 4, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %bb.cj unwind label %bb.cs     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.of = load ptr, ptr %63, align 8, !tbaa !88   ; 3 uses
  %i.og = load ptr, ptr %i.gj, align 8, !tbaa !89 ; 2 uses
  %.not4.i.i.i.i162 = icmp eq ptr %i.of, %i.og
  br i1 %.not4.i.i.i.i162, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i170, label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %bb.cj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i166
  %.05.i.i.i.i164 = phi ptr [ %i.on, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i166 ], [ %i.of, %bb.cj ] ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i164, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oh) #19
  %i.oi = load ptr, ptr %.05.i.i.i.i164, align 8, !tbaa !52 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i164, i64 16 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i165: ; preds = %.lr.ph.i.i.i.i163
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !54
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #22
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i166

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i166: ; preds = %.lr.ph.i.i.i.i163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i165
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i164, i64 40 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.on, %i.og
  br i1 %.not.i.i.i.i167, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i168, label %.lr.ph.i.i.i.i163, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i168: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i166
  %.pr.i.i169 = load ptr, ptr %63, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i170

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i170: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i168, %bb.cj
  %i.oo = phi ptr [ %.pr.i.i169, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i168 ], [ %i.of, %bb.cj ] ; 3 uses
  %.not.i.i1.i.i171 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i1.i.i171, label %_ZN5vcpkg4Json6ObjectD2Ev.exit173, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i170
  %i.op = load ptr, ptr %i.gk, align 8, !tbaa !90
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.oo to i64
  %i.os = sub i64 %i.oq, %i.or
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.os) #22
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit173

_ZN5vcpkg4Json6ObjectD2Ev.exit173:                ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i170, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  call void @_ZN5vcpkg4Json5Value7booleanEb(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Value") align 8 %64, i1 noundef zeroext %.0.lcssa558) #19
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr nonnull @.str.4, i64 17, ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %bb.cl unwind label %bb.cu     ; 0 uses

bb.cl:                                            ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit173
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #19
  %i.ou = icmp eq ptr %.val118556, %.val119554    ; 2 uses
  %i.ov = select i1 %.0.lcssa558, i1 %i.ou, i1 false
  call void @_ZN5vcpkg4Json5Value7booleanEb(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Value") align 8 %65, i1 noundef zeroext %i.ov) #19
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr nonnull @.str.5, i64 12, ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.cm unwind label %bb.cv     ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  br i1 %i.ou, label %_ZN12_GLOBAL__N_120print_port_supportedERKNS_4PortEbN5vcpkg4SpanIS1_EE.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.ox = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ArrayE(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr nonnull @.str.6, i64 26, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.oy = load ptr, ptr %66, align 8, !tbaa !93   ; 3 uses
  %i.oz = load ptr, ptr %i.gl, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i.i174 = icmp eq ptr %i.oy, %i.oz
  br i1 %.not4.i.i.i.i174, label %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i175

.lr.ph.i.i.i.i175:                                ; preds = %bb.co, %.lr.ph.i.i.i.i175
  %.05.i.i.i.i176 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i175 ], [ %i.oy, %bb.co ] ; 2 uses
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i176) #19
  %i.pa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i176, i64 8 ; 2 uses
  %.not.i.i.i.i177 = icmp eq ptr %i.pa, %i.oz
  br i1 %.not.i.i.i.i177, label %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i175, !llvm.loop !4

_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i175
  %.pr.i.i178 = load ptr, ptr %66, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.co
  %i.pb = phi ptr [ %.pr.i.i178, %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.oy, %bb.co ] ; 3 uses
  %.not.i.i1.i.i179 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i1.i.i179, label %.lr.ph349.preheader, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.pc = load ptr, ptr %i.gm, align 8, !tbaa !95
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.pb to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.pf) #22
  br label %.lr.ph349.preheader

.lr.ph349.preheader:                              ; preds = %bb.cp, %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  br label %.lr.ph349

bb.cq:                                            ; preds = %bb.cf
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %62) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  br label %.body202

bb.cr:                                            ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.ci
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %63) #19
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn85 = phi { ptr, i32 } [ %i.pi, %bb.cs ], [ %i.ph, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  br label %.body202

bb.cu:                                            ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit173
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  br label %.body202
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19to_objectERKNS_4PortE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %.not36 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5vcpkg4Json5ArrayD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.s, %_ZN5vcpkg4Json5ArrayD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.z, label %bb.u

bb.k:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.aa

bb.l:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit26
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.an, %bb.m ], [ %i.am, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.aa

bb.o:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.aa

bb.p:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.033.037 = phi ptr [ %i.ae, %.lr.ph ], [ %i.aw, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !272
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.037) #19, !noalias !272
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.q unwind label %bb.r, !noalias !272

bb.q:                                             ; preds = %bb.p
  call void @_ZN5vcpkg4Json5Value6stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %i.ap = load ptr, ptr %4, align 8, !tbaa !52, !noalias !272 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ah
  br i1 %i.aq, label %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !54, !noalias !272
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #22
  br label %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit29

bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #21, !noalias !272
  unreachable

_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit29: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !272
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json5Array9push_backEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit29
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.033.037, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.ag
  br i1 %.not, label %._crit_edge, label %bb.p

bb.t:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit29
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.aa

bb.u:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !273
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #19, !noalias !273
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.v unwind label %bb.w, !noalias !273

bb.v:                                             ; preds = %bb.u
  call void @_ZN5vcpkg4Json5Value6stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Value") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %i.az = load ptr, ptr %2, align 8, !tbaa !52, !noalias !273 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.v
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !54, !noalias !273
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #22
  br label %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit32

bb.w:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #21, !noalias !273
  unreachable

_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit32: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !273
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull @.str.16, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.z

bb.y:                                             ; preds = %_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_.exit32
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge, %bb.x
  ret void

bb.aa:                                            ; preds = %bb.o, %bb.t, %bb.y, %bb.n, %bb.k
  %.pn21.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %.pn, %bb.n ], [ %i.ax, %bb.t ], [ %i.bh, %bb.y ], [ %i.ao, %bb.o ]
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  resume { ptr, i32 } %.pn21.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5vcpkg4Json5Value7booleanEb(ptr dead_on_unwind writable sret(%"struct.vcpkg::Json::Value") align 8, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg4Json5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #19
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.e = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg4Json5ValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt6vectorIN5vcpkg4Json5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN5vcpkg4Json5ValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg4Json5ValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN12_GLOBAL__N_14PortESaIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_14PortEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN12_GLOBAL__N_14PortEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !54
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !54
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.t = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.z = load ptr, ptr %.05.i.i, align 8, !tbaa !52 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyIN12_GLOBAL__N_14PortEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZSt8_DestroyIN12_GLOBAL__N_14PortEEvPT_.exit.i.i

_ZSt8_DestroyIN12_GLOBAL__N_14PortEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !274

_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_14PortEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !84
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_14PortESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.af, align 8, !tbaa !85
  %i.ag = ptrtoint ptr %.val1 to i64
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.ai) #22
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_14PortESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_14PortESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_14PortES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg10ActionPlanD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIN5vcpkg11FeatureSpecESt4pairIKS1_NS0_18PlatformExpression4ExprEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !278  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.g, %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit ] ; 2 uses
  tail call void @_ZN5vcpkg17InstallPlanActionD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %.05.i.i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 440 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !275

_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.f, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !283
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !284
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5vcpkg26AlreadyInstalledPlanActionEEEvT_S5_(ptr noundef %i.r, ptr noundef %i.t)
          to label %_ZSt8_DestroyIPN5vcpkg26AlreadyInstalledPlanActionES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.e

_ZSt8_DestroyIPN5vcpkg26AlreadyInstalledPlanActionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EED2Ev.exit
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !283  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg26AlreadyInstalledPlanActionES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !285
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #22
  br label %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #21
  unreachable

_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg26AlreadyInstalledPlanActionES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !288   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !289 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN5vcpkg16RemovePlanActionEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.ak, %_ZSt8_DestroyIN5vcpkg16RemovePlanActionEEvPT_.exit.i.i.i ], [ %i.ac, %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !52 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN5vcpkg16RemovePlanActionEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZSt8_DestroyIN5vcpkg16RemovePlanActionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5vcpkg16RemovePlanActionEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 48 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !276

_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5vcpkg16RemovePlanActionEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %0, align 8, !tbaa !288
  br label %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit
  %i.al = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !290
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  ret void
}

declare void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext, ptr, i64) local_unnamed_addr #2

declare void @_ZN5vcpkg4Json9stringifyB5cxx11ERKNS0_5ArrayE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg19PackagesDirAssignerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIvESaISt4pairIKS5_mEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIvESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIvESaISt4pairIKS5_mEEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIvESaISt4pairIKS5_mEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5vcpkg27InstallAndBuildDatabaseLockD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg21PathsPortFileProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg21PathsPortFileProviderE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19, !inline_history !1
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5vcpkg30IFullVersionedPortfileProviderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg30IFullVersionedPortfileProviderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg30IFullVersionedPortfileProviderEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_14PortC2ERKS0_:bb.a
  store i64 %i.au, ptr %i.a, align 8, !tbaa !35
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i10, label %._crit_edge.i.i9

.noexc.i10:                                       ; preds = %bb.g
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i10
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !52
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !54
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc11, %bb.g
  %i.ay = phi ptr [ %i.aw, %.noexc11 ], [ %i.ar, %bb.g ] ; 2 uses
  switch i64 %i.au, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i9
  %i.az = load i8, ptr %i.as, align 1, !tbaa !54
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !54
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i9
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !53
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.noexc.i10
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #19
  br label %.body

.body:                                            ; preds = %bb.k, %bb.f, %bb.e, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %i.be, %bb.k ], [ %i.ag, %bb.f ], [ %i.ag, %bb.e ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.c
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !54
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{!0, !36}
!1 = distinct !{null, null}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = distinct !{!6, !36}
!7 = distinct !{null, null}
!8 = distinct !{!8, !36}
!9 = distinct !{null, null, null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !36}
!12 = distinct !{null, null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{null, null, null, null, null}
!15 = distinct !{!15, !36}
!16 = distinct !{!16, !36}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"_ZTSSt14_Rb_tree_color", !22, i64 0}
!27 = !{!"any pointer", !22, i64 0}
!28 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !27, i64 0}
!29 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!30 = !{!"long", !22, i64 0}
!31 = !{!"_ZTSSt15_Rb_tree_header", !29, i64 0, !30, i64 32}
!32 = !{!31, !28, i64 8}
!33 = !{!"p1 omnipotent char", !27, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!30, !30, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !37, i64 0}
!41 = !{!37, !37, i64 0}
!42 = !{!"_ZTSN5vcpkg8LineInfoE", !23, i64 0, !33, i64 8, !33, i64 16}
!43 = !{!42, !23, i64 0}
!44 = !{!"bool", !22, i64 0}
!45 = !{!"_ZTSN5vcpkg9ExpectedTINS_15FullPackageSpecENS_15LocalizedStringEEE", !22, i64 0, !44, i64 64}
!46 = !{!45, !44, i64 64}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!50 = !{!49, !33, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !30, i64 8, !22, i64 16}
!52 = !{!51, !33, i64 0}
!53 = !{!51, !30, i64 8}
!54 = !{!22, !22, i64 0}
!55 = !{!"p1 _ZTSN5vcpkg15TripletInstanceE", !27, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!38, !37, i64 16}
!58 = !{!"p1 _ZTSN5vcpkg15FullPackageSpecE", !27, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg15FullPackageSpecESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!59, !58, i64 16}
!62 = !{!"p1 _ZTSN5vcpkg11RegistrySetE", !27, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"p1 _ZTSN5vcpkg20IFullOverlayProviderE", !27, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"vtable pointer", !21, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTSSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EE", !27, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!69, !68, i64 0}
!71 = !{!69, !68, i64 8}
!72 = !{!"p1 _ZTSN5vcpkg15StatusParagraphE", !27, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!69, !68, i64 16}
!75 = !{!"p1 _ZTSN5vcpkg17InstallPlanActionE", !27, i64 0}
!76 = !{!"p1 _ZTSN5vcpkg11PackageSpecE", !27, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg11PackageSpecESaIS1_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"p1 _ZTSN5vcpkg14DiagnosticLineE", !27, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg14DiagnosticLineESaIS1_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_7AbiInfoELb0EEE", !44, i64 0, !22, i64 8}
!81 = !{!"p1 _ZTSN12_GLOBAL__N_14PortE", !27, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_14PortESaIS1_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 8}
!84 = !{!82, !81, i64 0}
!85 = !{!82, !81, i64 16}
!86 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEE", !27, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!87, !86, i64 8}
!90 = !{!87, !86, i64 16}
!91 = !{!"p1 _ZTSN5vcpkg4Json5ValueE", !27, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg4Json5ValueESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!92, !91, i64 0}
!94 = !{!92, !91, i64 8}
!95 = !{!92, !91, i64 16}
!96 = !{!"_ZTSN5vcpkg10StringViewE", !33, i64 0, !30, i64 8}
!97 = !{!96, !33, i64 0}
!98 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !27, i64 0}
!99 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !98, i64 0, !30, i64 8}
!100 = !{!99, !98, i64 0}
!101 = !{!99, !30, i64 8}
!102 = !{!23, !23, i64 0}
!103 = !{!"p1 _ZTSN5vcpkg30IFullVersionedPortfileProviderE", !27, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"p1 _ZTSN5vcpkg17IBaselineProviderE", !27, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTSN5vcpkg22RegistryImplementationE", !27, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!59, !58, i64 0}
!110 = !{!77, !76, i64 0}
!111 = !{!77, !76, i64 8}
!112 = !{!77, !76, i64 16}
!113 = !{!"_ZTSN3fmt3v1211basic_specsE", !23, i64 0, !22, i64 4}
!114 = !{!113, !23, i64 0}
!115 = !{!"_ZTSN3fmt3v1212format_specsE", !113, i64 0, !23, i64 8, !23, i64 12}
!116 = !{!115, !23, i64 12}
!117 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !33, i64 0, !30, i64 8}
!118 = !{!117, !33, i64 0}
!119 = !{!117, !30, i64 8}
!120 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !22, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !117, i64 0, !23, i64 16}
!123 = !{!122, !23, i64 16}
!124 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !27, i64 0}
!125 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !27, i64 0}
!126 = !{i64 8}
!127 = !{!44, !44, i64 0}
!128 = !{!115, !23, i64 8}
!129 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !33, i64 0, !30, i64 8, !30, i64 16, !27, i64 24}
!130 = !{!129, !30, i64 8}
!131 = !{!129, !30, i64 16}
!132 = !{!129, !27, i64 24}
!133 = !{!129, !33, i64 0}
!134 = !{!"llvm.loop.isvectorized", i32 1}
!135 = !{!"llvm.loop.unroll.runtime.disable"}
!136 = !{!"branch_weights", i32 4, i32 28}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !{!"p1 bool", !27, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!"p1 long", !27, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !27, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !44, i64 0, !30, i64 8, !117, i64 16}
!145 = !{!144, !44, i64 0}
!146 = !{!144, !30, i64 8}
!147 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !33, i64 0, !33, i64 8, !23, i64 16}
!148 = !{!147, !33, i64 0}
!149 = !{!147, !33, i64 8}
!150 = !{!147, !23, i64 16}
!151 = !{!"branch_weights", i32 8, i32 24}
!152 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !129, i64 0, !22, i64 32, !30, i64 288}
!153 = !{!152, !30, i64 288}
!154 = !{!29, !28, i64 24}
!155 = !{!29, !28, i64 16}
!156 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !44, i64 0, !22, i64 8}
!157 = !{!156, !44, i64 0}
!158 = !{!"p1 _ZTSN5vcpkg4PathE", !27, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg4PathESaIS1_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!160 = !{!159, !158, i64 0}
!161 = !{!159, !158, i64 8}
!162 = !{!159, !158, i64 16}
!163 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EEE", !44, i64 0, !22, i64 8}
!164 = !{!163, !44, i64 0}
!165 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!166 = distinct !{!166, !36}
!167 = distinct !{!167, i1 true, !"_ZN5vcpkg4Util4fmapIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEZNS_30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESJ_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISM_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISM_EE5beginEEEE4typeESaISU_EEOSM_OSQ_"}
!168 = distinct !{!168, !167, !"_ZN5vcpkg4Util4fmapIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEZNS_30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESJ_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISM_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISM_EE5beginEEEE4typeESaISU_EEOSM_OSQ_: argument 0"}
!169 = distinct !{!169, i1 true, !"_ZZN5vcpkg30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_ENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!170 = distinct !{!170, !169, !"_ZZN5vcpkg30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_ENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_"}
!172 = distinct !{!172, !171, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!173 = distinct !{!173, !171, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_14PortES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!174 = distinct !{!174, !36}
!175 = distinct !{!175, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_14package_name_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!176 = distinct !{!176, !175, !"_ZN5vcpkg3msg6formatIJNS0_14package_name_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!178 = distinct !{!178, !177, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZN5vcpkg3msg6formatIJNS0_14package_name_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE"}
!180 = distinct !{!180, !179, !"_ZN5vcpkg3msg6formatIJNS0_14package_name_tEEJNS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_"}
!182 = distinct !{!182, !181, !"_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZZN12_GLOBAL__N_120print_port_supportedERKNS_4PortEbN5vcpkg4SpanIS1_EEENK3$_0clB5cxx11ES2_"}
!184 = distinct !{!184, !183, !"_ZZN12_GLOBAL__N_120print_port_supportedERKNS_4PortEbN5vcpkg4SpanIS1_EEENK3$_0clB5cxx11ES2_: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_"}
!186 = distinct !{!186, !185, !"_ZN5vcpkg7Strings4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_NS_13StringLiteralERKT_: argument 0"}
!187 = distinct !{!187, i1 true, !"_ZN5vcpkg7Strings4joinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS0_7details19IdentityTransformerEEES9_NS_13StringLiteralET_SJ_T0_"}
!188 = distinct !{!188, !187, !"_ZN5vcpkg7Strings4joinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEENS0_7details19IdentityTransformerEEES9_NS_13StringLiteralET_SJ_T0_: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZN3fmt3v126formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!190 = distinct !{!190, !189, !"_ZN3fmt3v126formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S9_EEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!191 = distinct !{null, null}
!192 = distinct !{ptr @_ZN5vcpkg21PathsPortFileProviderD2Ev, null, null}
!193 = distinct !{ptr @_ZN5vcpkg21PathsPortFileProviderD2Ev, null, null}
!194 = distinct !{ptr @_ZN5vcpkg21PathsPortFileProviderD2Ev, null, null}
!195 = distinct !{ptr @_ZNSt10unique_ptrIN5vcpkg11RegistrySetESt14default_deleteIS1_EED2Ev, null, null, null, null}
!196 = !{!"_ZTSN5vcpkg12OutputStreamE", !22, i64 0}
!197 = !{!196, !196, i64 0}
!198 = !{!28, !28, i64 0}
!199 = !{!168}
!200 = !{!170}
!201 = !{!170, !168}
!202 = !{!"p1 _ZTSN5vcpkg15GraphRandomizerE", !27, i64 0}
!203 = !{!"_ZTSN5vcpkg7TripletE", !55, i64 0}
!204 = !{!"_ZTSN5vcpkg21UnsupportedPortActionE", !22, i64 0}
!205 = !{!"_ZTSN5vcpkg14UseHeadVersionE", !22, i64 0}
!206 = !{!"_ZTSN5vcpkg8EditableE", !22, i64 0}
!207 = !{!"_ZTSN5vcpkg24CreateInstallPlanOptionsE", !202, i64 0, !203, i64 8, !204, i64 16, !205, i64 20, !206, i64 24}
!208 = !{!207, !202, i64 0}
!209 = !{!207, !204, i64 16}
!210 = !{!207, !205, i64 20}
!211 = !{!207, !206, i64 24}
!212 = !{!58, !58, i64 0}
!213 = !{!"p1 _ZTSN5vcpkg9CMakeVars16CMakeVarProviderE", !27, i64 0}
!214 = !{!213, !213, i64 0}
!215 = !{!203, !55, i64 0}
!216 = !{!75, !75, i64 0}
!217 = !{!"_ZTSN5vcpkg11PackageSpecE", !51, i64 0, !203, i64 32}
!218 = !{!"_ZTSN5vcpkg11BasicActionE", !217, i64 0}
!219 = !{!"_ZTSN5vcpkg7VersionE", !51, i64 0, !23, i64 32}
!220 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !38, i64 0}
!221 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !220, i64 0}
!222 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !221, i64 0}
!223 = !{!"_ZTSN5vcpkg18InternalFeatureSetE", !222, i64 0}
!224 = !{!"_ZTSN5vcpkg11RequestTypeE", !22, i64 0}
!225 = !{!"_ZTSN5vcpkg22BasicInstallPlanActionE", !218, i64 0, !219, i64 40, !223, i64 80, !224, i64 104}
!226 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg11PackageSpecESaIS1_EE12_Vector_implE", !77, i64 0}
!227 = !{!"_ZTSSt12_Vector_baseIN5vcpkg11PackageSpecESaIS1_EE", !226, i64 0}
!228 = !{!"_ZTSSt6vectorIN5vcpkg11PackageSpecESaIS1_EE", !227, i64 0}
!229 = !{!"p1 _ZTSN5vcpkg28SourceControlFileAndLocationE", !27, i64 0}
!230 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!231 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !230, i64 0}
!232 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN5vcpkg11FeatureSpecESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE13_Rb_tree_implISH_Lb1EEE", !231, i64 0, !31, i64 8}
!233 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN5vcpkg11FeatureSpecESaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !232, i64 0}
!234 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg11FeatureSpecESaIS8_EESt4lessIS5_ESaISt4pairIKS5_SA_EEE", !233, i64 0}
!235 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg14DiagnosticLineESaIS1_EE12_Vector_implE", !79, i64 0}
!236 = !{!"_ZTSSt12_Vector_baseIN5vcpkg14DiagnosticLineESaIS1_EE", !235, i64 0}
!237 = !{!"_ZTSSt6vectorIN5vcpkg14DiagnosticLineESaIS1_EE", !236, i64 0}
!238 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_7AbiInfoELb0EEE", !80, i64 0}
!239 = !{!"_ZTSN5vcpkg8OptionalINS_7AbiInfoEEE", !238, i64 0}
!240 = !{!"_ZTSN5vcpkg4PathE", !51, i64 0}
!241 = !{!"_ZTSN5vcpkg17InstallPlanActionE", !225, i64 0, !228, i64 112, !229, i64 136, !222, i64 144, !205, i64 168, !206, i64 172, !234, i64 176, !237, i64 224, !239, i64 248, !240, i64 408}
!242 = !{!241, !229, i64 136}
!243 = !{!"p1 _ZTSN5vcpkg17SourceControlFileE", !27, i64 0}
!244 = !{!243, !243, i64 0}
!245 = !{!"p1 _ZTSN5vcpkg15SourceParagraphE", !27, i64 0}
!246 = !{!245, !245, i64 0}
!247 = !{!172}
!248 = !{!173}
!249 = !{!172, !173}
!250 = !{!176}
!251 = !{!178, !176}
!252 = !{!180}
!253 = !{!182, !180}
!254 = !{!184}
!255 = !{!186}
!256 = !{!186, !184}
!257 = !{!188, !186}
!258 = !{!190, !184}
!259 = distinct !{!259, !36}
!260 = distinct !{!260, !36}
!261 = distinct !{!261, !36}
!262 = distinct !{!262, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!263 = distinct !{!263, !262, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!264 = distinct !{!264, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!265 = distinct !{!265, !264, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!266 = distinct !{!266, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!267 = distinct !{!267, !266, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!268 = distinct !{!268, i1 true, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_"}
!269 = distinct !{!269, !268, !"_ZN5vcpkg4Json5Value6stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_SD_: argument 0"}
!270 = !{!263}
!271 = !{!265}
!272 = !{!267}
!273 = !{!269}
!274 = distinct !{!274, !36}
!275 = distinct !{!275, !36}
!276 = distinct !{!276, !36}
!277 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg17InstallPlanActionESaIS1_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!278 = !{!277, !75, i64 0}
!279 = !{!277, !75, i64 8}
!280 = !{!277, !75, i64 16}
!281 = !{!"p1 _ZTSN5vcpkg26AlreadyInstalledPlanActionE", !27, i64 0}
!282 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EE17_Vector_impl_dataE", !281, i64 0, !281, i64 8, !281, i64 16}
!283 = !{!282, !281, i64 0}
!284 = !{!282, !281, i64 8}
!285 = !{!282, !281, i64 16}
end_hunk_2
