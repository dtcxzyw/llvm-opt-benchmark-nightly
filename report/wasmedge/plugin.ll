Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/plugin?download=true
inline.NumInlined: 5653
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8WasmEdge6Plugin6Plugin8loadFileERKNSt10filesystem7__cxx114pathE:bb.a
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %.noexc20
  store i32 2, ptr %i.f, align 4, !tbaa !89, !noalias !502
  br label %bb.g

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc20
  %i.l = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !502 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !108, !noalias !502 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72, !noalias !502
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.m, align 4, !tbaa !89, !noalias !502 ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !89, !noalias !502
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4, !noalias !502
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.d ], [ %i.q, %bb.e ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !502
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !noalias !502
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i) #29, !noalias !502, !inline_history !441
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i
  store ptr %i.d, ptr %i.i, align 8, !tbaa !108, !noalias !502
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN8WasmEdge6Loader13SharedLibrary4loadERKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  %i.v = load i8, ptr %3, align 4, !tbaa !509, !range !110, !noundef !111
  %i.w = trunc nuw i8 %i.v to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %i.w, label %bb.h, label %bb.cr

bb.h:                                             ; preds = %bb.g
  %i.x = call noundef ptr @_ZNK8WasmEdge6Loader13SharedLibrary13getSymbolAddrEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull @.str.15) #29, !noalias !510 ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !108, !noalias !511 ; 8 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 6 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 8, !noalias !511
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.i ], [ %i.af, %bb.k ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.ad = cmpxchg weak ptr %i.aa, i32 %.06.i.i.i.i.i.i.i, i32 %i.ac acq_rel monotonic, align 8, !noalias !511 ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  br i1 %i.ae, label %_ZN8WasmEdge6Loader13SharedLibrary3getIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEENS_6SymbolIT_EEPKc.exit, label %bb.j, !llvm.loop !2

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.h
  %i.ag = call ptr @__cxa_allocate_exception(i64 8) #29, !noalias !511 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.ag, align 8, !tbaa !103, !noalias !511
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #30
          to label %.noexc.i.i unwind label %bb.l, !noalias !511

.noexc.i.i:                                       ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #31, !noalias !512
  unreachable

_ZN8WasmEdge6Loader13SharedLibrary3getIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEENS_6SymbolIT_EEPKc.exit: ; preds = %bb.k
  %.not68 = icmp eq ptr %i.x, null
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN8WasmEdge6Loader13SharedLibrary3getIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEENS_6SymbolIT_EEPKc.exit
  %i.aj = invoke noundef ptr %i.x()
          to label %_ZNK8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEclIJEEEDaDpT_.exit unwind label %bb.cx, !inline_history !448

_ZNK8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEclIJEEEDaDpT_.exit: ; preds = %bb.m
  %i.ak = call noundef zeroext i1 @_ZN8WasmEdge6Plugin6Plugin14registerPluginEPKNS1_16PluginDescriptorE(ptr noundef %i.aj) #29
  br label %bb.n

bb.n:                                             ; preds = %_ZN8WasmEdge6Loader13SharedLibrary3getIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEENS_6SymbolIT_EEPKc.exit, %_ZNK8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEclIJEEEDaDpT_.exit
  %.011 = phi i1 [ %i.ak, %_ZNK8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEclIJEEEDaDpT_.exit ], [ false, %_ZN8WasmEdge6Loader13SharedLibrary3getIFPKNS_6Plugin6Plugin16PluginDescriptorEvEEENS_6SymbolIT_EEPKc.exit ]
  %i.al = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aa, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !101
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #29, !inline_history !449
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #29, !inline_history !449
  br label %_ZN8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.aa, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEED2Ev.exit, !prof !112

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #29
  br label %_ZN8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEED2Ev.exit

_ZN8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEED2Ev.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  br i1 %.011, label %.thread, label %bb.t

bb.t:                                             ; preds = %_ZN8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEED2Ev.exit
  %i.az = call noundef ptr @_ZNK8WasmEdge6Loader13SharedLibrary13getSymbolAddrEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull @.str.16) #29, !noalias !513 ; 2 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !108, !noalias !514 ; 14 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i25, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 10 uses
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 8, !noalias !514
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.06.i.i.i.i.i.i.i23 = phi i32 [ %i.bd, %bb.u ], [ %i.bh, %bb.w ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i24 = icmp eq i32 %.06.i.i.i.i.i.i.i23, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i24, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i25, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = add nsw i32 %.06.i.i.i.i.i.i.i23, 1
  %i.bf = cmpxchg weak ptr %i.bc, i32 %.06.i.i.i.i.i.i.i23, i32 %i.be acq_rel monotonic, align 8, !noalias !514 ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 1
  %i.bh = extractvalue { i32, i1 } %i.bf, 0
  br i1 %i.bg, label %_ZN8WasmEdge6Loader13SharedLibrary3getIFPK25WasmEdge_PluginDescriptorvEEENS_6SymbolIT_EEPKc.exit, label %bb.v, !llvm.loop !2

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i25: ; preds = %bb.v, %bb.t
  %i.bi = call ptr @__cxa_allocate_exception(i64 8) #29, !noalias !514 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.bi, align 8, !tbaa !103, !noalias !514
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #30
          to label %.noexc.i.i26 unwind label %bb.x, !noalias !514

.noexc.i.i26:                                     ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i25
  unreachable

bb.x:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i25
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #31, !noalias !515
  unreachable

_ZN8WasmEdge6Loader13SharedLibrary3getIFPK25WasmEdge_PluginDescriptorvEEENS_6SymbolIT_EEPKc.exit: ; preds = %bb.w
  %.not69 = icmp eq ptr %i.az, null
  br i1 %.not69, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZN8WasmEdge6Loader13SharedLibrary3getIFPK25WasmEdge_PluginDescriptorvEEENS_6SymbolIT_EEPKc.exit
  %i.bl = invoke noundef ptr %i.az()
          to label %_ZNK8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEEclIJEEEDaDpT_.exit unwind label %bb.cx, !inline_history !456 ; 8 uses

_ZNK8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEEclIJEEEDaDpT_.exit: ; preds = %bb.y
  %.not.not = icmp eq ptr %i.bl, null
  br i1 %.not.not, label %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit.a, label %bb.z

bb.z:                                             ; preds = %_ZNK8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEEclIJEEEDaDpT_.exit
  %i.bm = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #33
          to label %.noexc28 unwind label %bb.cx, !noalias !516 ; 17 uses

.noexc28:                                         ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !noalias !516
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 24 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bo, i8 0, i64 49, i1 false), !noalias !516
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !519, !noalias !516 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 112 ; 2 uses
  %.not338.i.i = icmp eq i32 %i.br, 0
  br i1 %.not338.i.i, label %._crit_edge.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc28
  %i.bt = zext i32 %i.br to i64
  invoke void @_ZNSt6vectorIN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.bt)
          to label %_ZNSt6vectorIN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESaIS3_EE6resizeEm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516

_ZNSt6vectorIN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESaIS3_EE6resizeEm.exit.i.i: ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %i.bs, align 8, !tbaa !115, !noalias !516
  %.pre278.i.i = load ptr, ptr %i.bp, align 8, !tbaa !48, !noalias !516 ; 3 uses
  %i.bu = icmp eq ptr %.pre.i.i, %.pre278.i.i
  br i1 %i.bu, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESaIS3_EE6resizeEm.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  br label %bb.ab

._crit_edge.i.i:                                  ; preds = %_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i, %_ZNSt6vectorIN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESaIS3_EE6resizeEm.exit.i.i, %.noexc28
  %.lcssa255.i.i = phi ptr [ %.pre278.i.i, %_ZNSt6vectorIN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESaIS3_EE6resizeEm.exit.i.i ], [ null, %.noexc28 ], [ %i.cx, %_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i ]
  %i.bw = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !82, !noalias !516
  store <2 x ptr> %i.bw, ptr %i.bm, align 8, !tbaa !82, !noalias !516
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bz = load <4 x i32>, ptr %i.bx, align 8, !tbaa !89, !noalias !516
  store <4 x i32> %i.bz, ptr %i.by, align 8, !tbaa !89, !noalias !516
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !520, !noalias !516
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !528, !noalias !516
  %i.cd = load i32, ptr %i.bq, align 4, !tbaa !519, !noalias !516
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !529, !noalias !516
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store ptr %.lcssa255.i.i, ptr %i.cg, align 8, !tbaa !530, !noalias !516
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegister17addOptionsWrapperEPKNS0_6Plugin16PluginDescriptorERNS_2PO14ArgumentParserE, ptr %i.ch, align 8, !tbaa !531, !noalias !516
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !532, !noalias !516
  %.not262.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not262.i.i, label %.loopexit, label %.lr.ph260.i.i

.lr.ph260.i.i:                                    ; preds = %._crit_edge.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 88 ; 44 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 22 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i, %.lr.ph.i.i
  %i.co = phi ptr [ %.pre278.i.i, %.lr.ph.i.i ], [ %i.cx, %_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i ]
  %.053257.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cv, %_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i ] ; 3 uses
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !533, !noalias !516
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.053257.i.i ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.053257.i.i ; 3 uses
  %i.cs = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !82, !noalias !516
  store <2 x ptr> %i.cs, ptr %i.cr, align 8, !tbaa !82, !noalias !516
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegister13createWrapperEPKNS0_12PluginModule16ModuleDescriptorE, ptr %i.ct, align 8, !tbaa !535, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !516
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !119, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !516
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !120, !noalias !516
  %i.cu = invoke { ptr, i8 } @_ZNSt10_HashtableIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorESt4pairIKS5_PK25WasmEdge_ModuleDescriptorESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJPS3_PS8_EEES6_INSD_14_Node_iteratorISB_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) @_ZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegister17DescriptionLookupE, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516 ; 0 uses

_ZNSt13unordered_mapIPKN8WasmEdge6Plugin12PluginModule16ModuleDescriptorEPK25WasmEdge_ModuleDescriptorSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7emplaceIJPS3_PS6_EEESD_INSt8__detail14_Node_iteratorISF_Lb0ELb0EEEbEDpOT_.exit.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !516
  %i.cv = add nuw i64 %.053257.i.i, 1             ; 2 uses
  %i.cw = load ptr, ptr %i.bs, align 8, !tbaa !115, !noalias !516
  %i.cx = load ptr, ptr %i.bp, align 8, !tbaa !48, !noalias !516 ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 24
  %i.dc = icmp ult i64 %i.cv, %i.db
  br i1 %i.dc, label %bb.ab, label %._crit_edge.i.i, !llvm.loop !459

bb.ac:                                            ; preds = %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i, %.lr.ph260.i.i
  %.0258.i.i = phi i64 [ 0, %.lr.ph260.i.i ], [ %i.tq, %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !536, !noalias !516
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %.0258.i.i ; 59 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !537, !noalias !516
  switch i32 %i.dg, label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i [
    i32 12, label %bb.bs
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.ai
    i32 4, label %bb.am
    i32 5, label %bb.aq
    i32 6, label %bb.au
    i32 7, label %bb.ay
    i32 8, label %bb.bc
    i32 9, label %bb.bg
    i32 10, label %bb.bk
    i32 11, label %bb.bo
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !90, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !516
  store ptr %i.de, ptr %1, align 8, !tbaa !539, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !516
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !540, !noalias !516 ; 2 uses
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #29, !noalias !516
  %i.dm = shufflevector <2 x ptr> %i.dj, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dm, ptr %2, align 16, !tbaa !124, !noalias !516
  store i64 %i.dl, ptr %i.cn, align 16, !tbaa !81, !noalias !516
  store ptr %i.dk, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !82, !noalias !516
  %i.dn = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISC_ENS6_11DescriptionEPbPKbEEEEERS1C_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPNSE_6ToggleENSE_6ParserIbEEEEEbKbEEDaS6_S8_SA_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516 ; 0 uses

_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPNSE_6ToggleENSE_6ParserIbEEEEEbKbEEDaS6_S8_SA_.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !516
  br label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !541, !noalias !516 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !542, !noalias !516 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !540, !noalias !516 ; 3 uses
  %i.du = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dt) #29, !noalias !516 ; 2 uses
  %i.dv = load ptr, ptr %i.cl, align 8, !tbaa !125, !noalias !516 ; 11 uses
  %i.dw = load ptr, ptr %i.cm, align 8, !tbaa !53, !noalias !516
  %.not.i.i79.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i79.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.de, ptr %i.dv, align 8, !tbaa !134, !noalias !516
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dp, ptr %i.dx, align 8, !tbaa !136, !noalias !516
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.dr, ptr %i.dy, align 8, !tbaa !137, !noalias !516
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ea = getelementptr i8, ptr %i.dv, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ea, i8 0, i64 17, i1 false), !noalias !516
  store i64 %i.du, ptr %i.dz, align 8, !tbaa !81, !noalias !516
  %.sroa.6.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.dt, ptr %.sroa.6.i.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !82, !noalias !516
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  store i8 1, ptr %i.eb, align 8, !tbaa !138, !noalias !516
  %i.ec = load ptr, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  store ptr %i.ed, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  br label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ee = load ptr, ptr %i.bo, align 8, !tbaa !52, !noalias !516 ; 5 uses
  %i.ef = ptrtoint ptr %i.dv to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 4 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775800
  br i1 %i.ei, label %.invoke.i.i, label %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ag
  %i.ej = sdiv exact i64 %i.eh, 72                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.ek = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ej ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = call i64 @llvm.umin.i64(i64 %i.ek, i64 128102389400760775)
  %i.en = select i1 %i.el, i64 128102389400760775, i64 %i.em ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.en, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.eo = mul nuw nsw i64 %i.en, 72
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #33
          to label %.noexc81.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516 ; 5 uses

.noexc81.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i64 %i.du, ptr %i.er, align 8, !noalias !516
  %.sroa.11.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr %i.dt, ptr %.sroa.11.16..sroa_idx.i.i.i, align 8, !noalias !516
  store ptr %i.de, ptr %i.eq, align 8, !tbaa !134, !noalias !516
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.dp, ptr %i.es, align 8, !tbaa !136, !noalias !516
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %i.dr, ptr %i.et, align 8, !tbaa !137, !noalias !516
  %i.eu = getelementptr i8, ptr %i.eq, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.eu, i8 0, i64 17, i1 false), !noalias !516
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge6Plugin6Plugin8loadFileERKNSt10filesystem7__cxx114pathE:bb.a
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store ptr %i.qv, ptr %i.rc, align 8, !tbaa !170, !noalias !516
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.re = getelementptr i8, ptr %i.qz, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.re, i8 0, i64 17, i1 false), !noalias !516
  store i64 %i.qy, ptr %i.rd, align 8, !tbaa !81, !noalias !516
  %.sroa.6.i.sroa.4.0..sroa_idx.i211.i.i = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  store ptr %i.qx, ptr %.sroa.6.i.sroa.4.0..sroa_idx.i211.i.i, align 8, !tbaa !82, !noalias !516
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  store i8 10, ptr %i.rf, align 8, !tbaa !138, !noalias !516
  %i.rg = load ptr, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 72
  store ptr %i.rh, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  br label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.ri = load ptr, ptr %i.bo, align 8, !tbaa !52, !noalias !516 ; 5 uses
  %i.rj = ptrtoint ptr %i.qz to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk                    ; 4 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %.invoke.i.i, label %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i212.i.i

_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i212.i.i: ; preds = %bb.bq
  %i.rn = sdiv exact i64 %i.rl, 72                ; 3 uses
  %.sroa.speculated.i.i.i213.i.i = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i213.i.i, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 128102389400760775)
  %i.rr = select i1 %i.rp, i64 128102389400760775, i64 %i.rq ; 3 uses
  %.not.i.i.i214.i.i = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i214.i.i)
  %i.rs = mul nuw nsw i64 %i.rr, 72
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #33
          to label %.noexc225.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516 ; 5 uses

.noexc225.i.i:                                    ; preds = %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i212.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rl ; 7 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  store i64 %i.qy, ptr %i.rv, align 8, !noalias !516
  %.sroa.11.16..sroa_idx.i215.i.i = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  store ptr %i.qx, ptr %.sroa.11.16..sroa_idx.i215.i.i, align 8, !noalias !516
  store ptr %i.de, ptr %i.ru, align 8, !tbaa !134, !noalias !516
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store ptr %i.qt, ptr %i.rw, align 8, !tbaa !169, !noalias !516
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  store ptr %i.qv, ptr %i.rx, align 8, !tbaa !170, !noalias !516
  %i.ry = getelementptr i8, ptr %i.ru, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ry, i8 0, i64 17, i1 false), !noalias !516
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  store i8 10, ptr %i.rz, align 8, !tbaa !138, !noalias !516
  %.not10.i.i.i.i.i216.i.i = icmp eq ptr %i.ri, %i.qz
  br i1 %.not10.i.i.i.i.i216.i.i, label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i221.i.i, label %.lr.ph.i.i.i.i.i217.i.i

.lr.ph.i.i.i.i.i217.i.i:                          ; preds = %.noexc225.i.i, %.lr.ph.i.i.i.i.i217.i.i
  %.012.i.i.i.i.i218.i.i = phi ptr [ %i.sb, %.lr.ph.i.i.i.i.i217.i.i ], [ %i.rt, %.noexc225.i.i ] ; 2 uses
  %.0911.i.i.i.i.i219.i.i = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i217.i.i ], [ %i.ri, %.noexc225.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i218.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i219.i.i, i64 72, i1 false), !alias.scope !552, !noalias !516
  %i.sa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i219.i.i, i64 72 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i218.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i220.i.i = icmp eq ptr %i.sa, %i.qz
  br i1 %.not.i.i.i.i.i220.i.i, label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i221.i.i, label %.lr.ph.i.i.i.i.i217.i.i, !llvm.loop !3

_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i221.i.i: ; preds = %.lr.ph.i.i.i.i.i217.i.i, %.noexc225.i.i
  %.0.lcssa.i.i.i.i.i222.i.i = phi ptr [ %i.rt, %.noexc225.i.i ], [ %i.sb, %.lr.ph.i.i.i.i.i217.i.i ]
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i222.i.i, i64 72
  %.not.i35.i.i223.i.i = icmp eq ptr %i.ri, null
  br i1 %.not.i35.i.i223.i.i, label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS16_ENS6_11DescriptionES14_PKdEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i221.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rl) #28, !noalias !516
  br label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS16_ENS6_11DescriptionES14_PKdEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS16_ENS6_11DescriptionES14_PKdEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i: ; preds = %bb.br, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i221.i.i
  store ptr %i.rt, ptr %i.bo, align 8, !tbaa !52, !noalias !516
  store ptr %i.sc, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  %i.sd = getelementptr inbounds nuw [72 x i8], ptr %i.rt, i64 %i.rr
  store ptr %i.sd, ptr %i.cm, align 8, !tbaa !53, !noalias !516
  br label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i

bb.bs:                                            ; preds = %bb.ac
  %i.se = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !541, !noalias !516 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !542, !noalias !516 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !540, !noalias !516 ; 3 uses
  %i.sk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sj) #29, !noalias !516 ; 2 uses
  %i.sl = load ptr, ptr %i.cl, align 8, !tbaa !125, !noalias !516 ; 11 uses
  %i.sm = load ptr, ptr %i.cm, align 8, !tbaa !53, !noalias !516
  %.not.i.i226.i.i = icmp eq ptr %i.sl, %i.sm
  br i1 %.not.i.i226.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.de, ptr %i.sl, align 8, !tbaa !134, !noalias !516
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store ptr %i.sf, ptr %i.sn, align 8, !tbaa !173, !noalias !516
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store ptr %i.sh, ptr %i.so, align 8, !tbaa !174, !noalias !516
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sq = getelementptr i8, ptr %i.sl, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.sq, i8 0, i64 17, i1 false), !noalias !516
  store i64 %i.sk, ptr %i.sp, align 8, !tbaa !81, !noalias !516
  %.sroa.6.i.sroa.4.0..sroa_idx.i227.i.i = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  store ptr %i.sj, ptr %.sroa.6.i.sroa.4.0..sroa_idx.i227.i.i, align 8, !tbaa !82, !noalias !516
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  store i8 11, ptr %i.sr, align 8, !tbaa !138, !noalias !516
  %i.ss = load ptr, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 72
  store ptr %i.st, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  br label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.su = load ptr, ptr %i.bo, align 8, !tbaa !52, !noalias !516 ; 5 uses
  %i.sv = ptrtoint ptr %i.sl to i64
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = sub i64 %i.sv, %i.sw                    ; 4 uses
  %i.sy = icmp eq i64 %i.sx, 9223372036854775800
  br i1 %i.sy, label %.invoke.i.i, label %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i228.i.i

.invoke.i.i:                                      ; preds = %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ba, %bb.aw, %bb.as, %bb.ao, %bb.ak, %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #30
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i228.i.i: ; preds = %bb.bu
  %i.sz = sdiv exact i64 %i.sx, 72                ; 3 uses
  %.sroa.speculated.i.i.i229.i.i = call i64 @llvm.umax.i64(i64 %i.sz, i64 1)
  %i.ta = add nsw i64 %.sroa.speculated.i.i.i229.i.i, %i.sz ; 2 uses
  %i.tb = icmp ult i64 %i.ta, %i.sz
  %i.tc = call i64 @llvm.umin.i64(i64 %i.ta, i64 128102389400760775)
  %i.td = select i1 %i.tb, i64 128102389400760775, i64 %i.tc ; 3 uses
  %.not.i.i.i230.i.i = icmp ne i64 %i.td, 0
  call void @llvm.assume(i1 %.not.i.i.i230.i.i)
  %i.te = mul nuw nsw i64 %i.td, 72
  %i.tf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.te) #33
          to label %.noexc241.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !516 ; 5 uses

.noexc241.i.i:                                    ; preds = %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i228.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.sx ; 7 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 24
  store i64 %i.sk, ptr %i.th, align 8, !noalias !516
  %.sroa.11.16..sroa_idx.i231.i.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  store ptr %i.sj, ptr %.sroa.11.16..sroa_idx.i231.i.i, align 8, !noalias !516
  store ptr %i.de, ptr %i.tg, align 8, !tbaa !134, !noalias !516
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store ptr %i.sf, ptr %i.ti, align 8, !tbaa !173, !noalias !516
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store ptr %i.sh, ptr %i.tj, align 8, !tbaa !174, !noalias !516
  %i.tk = getelementptr i8, ptr %i.tg, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.tk, i8 0, i64 17, i1 false), !noalias !516
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 64
  store i8 11, ptr %i.tl, align 8, !tbaa !138, !noalias !516
  %.not10.i.i.i.i.i232.i.i = icmp eq ptr %i.su, %i.sl
  br i1 %.not10.i.i.i.i.i232.i.i, label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i237.i.i, label %.lr.ph.i.i.i.i.i233.i.i

.lr.ph.i.i.i.i.i233.i.i:                          ; preds = %.noexc241.i.i, %.lr.ph.i.i.i.i.i233.i.i
  %.012.i.i.i.i.i234.i.i = phi ptr [ %i.tn, %.lr.ph.i.i.i.i.i233.i.i ], [ %i.tf, %.noexc241.i.i ] ; 2 uses
  %.0911.i.i.i.i.i235.i.i = phi ptr [ %i.tm, %.lr.ph.i.i.i.i.i233.i.i ], [ %i.su, %.noexc241.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i234.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i235.i.i, i64 72, i1 false), !alias.scope !553, !noalias !516
  %i.tm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i235.i.i, i64 72 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i234.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i236.i.i = icmp eq ptr %i.tm, %i.sl
  br i1 %.not.i.i.i.i.i236.i.i, label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i237.i.i, label %.lr.ph.i.i.i.i.i233.i.i, !llvm.loop !3

_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i237.i.i: ; preds = %.lr.ph.i.i.i.i.i233.i.i, %.noexc241.i.i
  %.0.lcssa.i.i.i.i.i238.i.i = phi ptr [ %i.tf, %.noexc241.i.i ], [ %i.tn, %.lr.ph.i.i.i.i.i233.i.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i238.i.i, i64 72
  %.not.i35.i.i239.i.i = icmp eq ptr %i.su, null
  br i1 %.not.i35.i.i239.i.i, label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS1A_ENS6_11DescriptionES18_PKS17_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i237.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sx) #28, !noalias !516
  br label %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS1A_ENS6_11DescriptionES18_PKS17_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS1A_ENS6_11DescriptionES18_PKS17_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i: ; preds = %bb.bv, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE11_S_relocateEPS1C_S1F_S1F_RS1D_.exit34.i.i237.i.i
  store ptr %i.tf, ptr %i.bo, align 8, !tbaa !52, !noalias !516
  store ptr %i.to, ptr %i.cl, align 8, !tbaa !125, !noalias !516
  %i.tp = getelementptr inbounds nuw [72 x i8], ptr %i.tf, i64 %i.td
  store ptr %i.tp, ptr %i.cm, align 8, !tbaa !53, !noalias !516
  br label %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i

_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS1A_ENS6_11DescriptionES18_PKS17_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.bt, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS16_ENS6_11DescriptionES14_PKdEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.bp, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS13_ENS6_11DescriptionES11_PKfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.bl, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tIS10_ENS6_11DescriptionESY_PKmEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.bh, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISX_ENS6_11DescriptionESV_PKjEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.bd, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISU_ENS6_11DescriptionESS_PKtEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.az, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISR_ENS6_11DescriptionESP_PKhEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.av, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISO_ENS6_11DescriptionESM_PKlEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.ar, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISL_ENS6_11DescriptionESJ_PKiEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.an, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISI_ENS6_11DescriptionESG_PKsEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.aj, %_ZNSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE17_M_realloc_insertIJRKSt21piecewise_construct_tSt5tupleIJS3_EES1J_IJSt15in_place_type_tISF_ENS6_11DescriptionESD_PKaEEEEEvN9__gnu_cxx17__normal_iteratorIPS1C_S1E_EEDpOT_.exit.i.i.i, %bb.af, %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPNSE_6ToggleENSE_6ParserIbEEEEEbKbEEDaS6_S8_SA_.exit.i.i, %bb.ac
  %i.tq = add nuw nsw i64 %.0258.i.i, 1           ; 2 uses
  %i.tr = load i32, ptr %i.ci, align 8, !tbaa !532, !noalias !516
  %i.ts = zext i32 %i.tr to i64
  %i.tt = icmp samesign ult i64 %i.tq, %i.ts
  br i1 %i.tt, label %bb.ac, label %.loopexit, !llvm.loop !493

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i84.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i100.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i116.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i132.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i148.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i164.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i180.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i196.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i212.i.i, %_ZNKSt6vectorISt4pairIPK22WasmEdge_ProgramOptionSt7variantIJN8WasmEdge2PO6OptionIPNS6_6ToggleENS6_6ParserIbEEEENS7_IPaNSA_IaEEEENS7_IPsNSA_IsEEEENS7_IPiNSA_IiEEEENS7_IPlNSA_IlEEEENS7_IPhNSA_IhEEEENS7_IPtNSA_ItEEEENS7_IPjNSA_IjEEEENS7_IPmNSA_ImEEEENS7_IPfNSA_IfEEEENS7_IPdNSA_IdEEEENS7_IP15WasmEdge_StringNSA_IS17_EEEEEEESaIS1C_EE12_M_check_lenEmPKc.exit.i.i228.i.i, %bb.ab, %.invoke.i.i, %bb.aa
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          catch ptr null
  %i.tu = extractvalue { ptr, i32 } %lpad.loopexit.split-lp212, 0
  call void @__clang_call_terminate(ptr %i.tu) #31, !noalias !516
  unreachable

.loopexit:                                        ; preds = %_ZZN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterC1EPK25WasmEdge_PluginDescriptorENKUlT_PT0_PT1_E_clISt15in_place_type_tINS_2PO6OptionIPaNSE_6ParserIaEEEEEaKaEEDaS6_S8_SA_.exit.i.i, %._crit_edge.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.tw = call noundef zeroext i1 @_ZN8WasmEdge6Plugin6Plugin14registerPluginEPKNS1_16PluginDescriptorE(ptr noundef nonnull align 8 dereferenceable(129) %i.bm) #29, !noalias !516
  %i.tx = zext i1 %i.tw to i8
  store i8 %i.tx, ptr %i.tv, align 8, !tbaa !554, !noalias !516
  %i.ty = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, i64 8), align 8, !tbaa !43 ; 6 uses
  %i.tz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, i64 16), align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.ty, %i.tz
  br i1 %.not.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  %i.ua = ptrtoint ptr %i.bm to i64
  store i64 %i.ua, ptr %i.ty, align 8, !tbaa !45
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %i.ub, ptr getelementptr inbounds nuw (i8, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, i64 8), align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit

bb.bx:                                            ; preds = %.loopexit
  %i.uc = load ptr, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, align 8, !tbaa !42 ; 7 uses
  %i.ud = ptrtoint ptr %i.ty to i64               ; 2 uses
  %i.ue = ptrtoint ptr %i.uc to i64               ; 2 uses
  %i.uf = sub i64 %i.ud, %i.ue                    ; 4 uses
  %i.ug = icmp eq i64 %i.uf, 9223372036854775800
  br i1 %i.ug, label %bb.by, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #30
          to label %.noexc31 unwind label %bb.cx

.noexc31:                                         ; preds = %bb.by
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bx
  %i.uh = ashr exact i64 %i.uf, 3                 ; 3 uses
  %i.ui = icmp eq ptr %i.ty, %i.uc                ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ui, i64 1, i64 %i.uh
  %i.uj = add nsw i64 %.sroa.speculated.i.i.i, %i.uh ; 2 uses
  %i.uk = icmp ult i64 %i.uj, %i.uh
  %i.ul = call i64 @llvm.umin.i64(i64 %i.uj, i64 1152921504606846975)
  %i.um = select i1 %i.uk, i64 1152921504606846975, i64 %i.ul ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.um, 0
  call void @llvm.assume(i1 %.not.i.i.i29)
  %i.un = shl nuw nsw i64 %i.um, 3
  %i.uo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.un) #33
          to label %.noexc32 unwind label %bb.cx  ; 7 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.uf
  %i.uq = ptrtoint ptr %i.bm to i64
  store i64 %i.uq, ptr %i.up, align 8, !tbaa !45
  br i1 %i.ui, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit24.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc32
  %i.ur = add i64 %i.ud, -8
  %i.us = sub i64 %i.ur, %i.ue                    ; 2 uses
  %i.ut = lshr i64 %i.us, 3
  %i.uu = add nuw nsw i64 %i.ut, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.us, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.uu, 4611686018427387900     ; 3 uses
  %i.uv = shl i64 %n.vec, 3                       ; 2 uses
  %i.uw = getelementptr i8, ptr %i.uo, i64 %i.uv  ; 2 uses
  %i.ux = getelementptr i8, ptr %i.uc, i64 %i.uv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.uo, i64 %i.uy ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.uc, i64 %i.uy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.uz = getelementptr i8, ptr %next.gep196, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep196, align 8, !tbaa !45, !alias.scope !556
  %wide.load197 = load <2 x i64>, ptr %i.uz, align 8, !tbaa !45, !alias.scope !556
  %i.va = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !45, !alias.scope !555
  store <2 x i64> %wide.load197, ptr %i.va, align 8, !tbaa !45, !alias.scope !555
  store <2 x ptr> splat (ptr null), ptr %next.gep196, align 8, !tbaa !45, !alias.scope !556
  store <2 x ptr> splat (ptr null), ptr %i.uz, align 8, !tbaa !45, !alias.scope !556
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vb = icmp eq i64 %index.next, %n.vec
  br i1 %i.vb, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit24.i.i, label %.lr.ph.i.i.i.i.i.preheader199

.lr.ph.i.i.i.i.i.preheader199:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i.preheader ], [ %i.uw, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %i.uc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ux, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader199, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.vd, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader199 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.vc, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader199 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !45, !alias.scope !556
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !45, !alias.scope !555
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !45, !alias.scope !556
  %i.vc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.vc, %i.ty
  br i1 %.not.i.i.i.i.i30, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit24.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !498

_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc32
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.uo, %.noexc32 ], [ %i.uw, %middle.block ], [ %i.vd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i25.i.i = icmp eq ptr %i.uc, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit24.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.uf) #28
  br label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.bz, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit24.i.i
  store ptr %i.uo, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, align 8, !tbaa !42
  store ptr %i.ve, ptr getelementptr inbounds nuw (i8, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, i64 8), align 8, !tbaa !43
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.um
  store ptr %i.vf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8WasmEdge6Plugin12_GLOBAL__N_119CAPIPluginRegistersE, i64 16), align 8, !tbaa !54
  %.val18.pre = load ptr, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !45
  br label %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.bw, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %.val18 = phi ptr [ %.val18.pre, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %i.bm, %bb.bw ]
  %4 = getelementptr i8, ptr %.val18, i64 128
  %.val19 = load i8, ptr %4, align 8, !tbaa !554, !range !110, !noundef !111
  %5 = trunc nuw i8 %.val19 to i1
  br label %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit.a

_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit.a: ; preds = %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit, %_ZNK8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEEclIJEEEDaDpT_.exit
  %.112 = phi i1 [ %5, %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit ], [ false, %_ZNK8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEEclIJEEEDaDpT_.exit ]
  %i.vg = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 4294967297
  %i.vi = trunc i64 %i.vg to i32                  ; 2 uses
  br i1 %i.vh, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit.a
  store i32 0, ptr %i.bc, align 8, !tbaa !100
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.vj, align 4, !tbaa !101
  %i.vk = load ptr, ptr %i.ba, align 8, !tbaa !103
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !499
  %i.vn = load ptr, ptr %i.ba, align 8, !tbaa !103
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !499
  br label %_ZN8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEED2Ev.exit

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS3_EED2Ev.exit.a
  %i.vq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i35 = icmp eq i8 %i.vq, 0
  br i1 %.not.i.i.i.i35, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vr = add nsw i32 %i.vi, -1
  store i32 %i.vr, ptr %i.bc, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36

bb.cd:                                            ; preds = %bb.cb
  %i.vs = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i37 = phi i32 [ %i.vi, %bb.cc ], [ %i.vs, %bb.cd ]
  %i.vt = icmp eq i32 %.0.i.i.i.i.i37, 1
  br i1 %i.vt, label %bb.ce, label %_ZN8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEED2Ev.exit, !prof !112

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29
  br label %_ZN8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEED2Ev.exit

_ZN8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEED2Ev.exit: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36, %bb.ce
  br i1 %.112, label %.thread, label %bb.cr

.thread:                                          ; preds = %_ZN8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEED2Ev.exit, %_ZN8WasmEdge6SymbolIFPKNS_6Plugin6Plugin16PluginDescriptorEvEED2Ev.exit
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8WasmEdge6Plugin6Plugin14PluginRegistryE, i64 8), align 8, !tbaa !177 ; 3 uses
  %i.vv = getelementptr inbounds i8, ptr %i.vu, i64 -224
  %i.vw = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.vv, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.cf unwind label %bb.cx     ; 0 uses

bb.cf:                                            ; preds = %.thread
  %i.vx = getelementptr inbounds i8, ptr %i.vu, i64 -176
  store ptr %i.g, ptr %i.vx, align 8, !tbaa !557
  %i.vy = getelementptr inbounds i8, ptr %i.vu, i64 -168 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !88 ; 8 uses
  store ptr %i.d, ptr %i.vy, align 8, !tbaa !88
  %.not.i.i.i.i38 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i38, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 4 uses
  %i.wb = load atomic i64, ptr %i.wa acquire, align 8 ; 2 uses
  %i.wc = icmp eq i64 %i.wb, 4294967297
  %i.wd = trunc i64 %i.wb to i32                  ; 2 uses
  br i1 %i.wc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.wa, align 8, !tbaa !100
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  store i32 0, ptr %i.we, align 4, !tbaa !101
  %i.wf = load ptr, ptr %i.vz, align 8, !tbaa !103
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  call void %i.wh(ptr noundef nonnull align 8 dereferenceable(16) %i.vz) #29, !inline_history !500
  %i.wi = load ptr, ptr %i.vz, align 8, !tbaa !103
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wk = load ptr, ptr %i.wj, align 8
  call void %i.wk(ptr noundef nonnull align 8 dereferenceable(16) %i.vz) #29, !inline_history !500
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.wl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i39 = icmp eq i8 %i.wl, 0
  br i1 %.not.i.i.i.i.i39, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wm = add nsw i32 %i.wd, -1
  store i32 %i.wm, ptr %i.wa, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.wn = atomicrmw volatile add ptr %i.wa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i = phi i32 [ %i.wd, %bb.cj ], [ %i.wn, %bb.ck ]
  %i.wo = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.wo, label %bb.cl, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, !prof !112

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vz) #29
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.critedge:                                        ; preds = %_ZN8WasmEdge6Loader13SharedLibrary3getIFPK25WasmEdge_PluginDescriptorvEEENS_6SymbolIT_EEPKc.exit
  %i.wp = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.wq = icmp eq i64 %i.wp, 4294967297
  %i.wr = trunc i64 %i.wp to i32                  ; 2 uses
  br i1 %i.wq, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.critedge
  store i32 0, ptr %i.bc, align 8, !tbaa !100
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.ws, align 4, !tbaa !101
  %i.wt = load ptr, ptr %i.ba, align 8, !tbaa !103
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8
  call void %i.wv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !499
  %i.ww = load ptr, ptr %i.ba, align 8, !tbaa !103
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29, !inline_history !499
  br label %bb.cr

bb.cn:                                            ; preds = %.critedge
  %i.wz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i41 = icmp eq i8 %i.wz, 0
  br i1 %.not.i.i.i.i41, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.xa = add nsw i32 %i.wr, -1
  store i32 %i.xa, ptr %i.bc, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42

bb.cp:                                            ; preds = %bb.cn
  %i.xb = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i.i43 = phi i32 [ %i.wr, %bb.co ], [ %i.xb, %bb.cp ]
  %i.xc = icmp eq i32 %.0.i.i.i.i.i43, 1
  br i1 %i.xc, label %bb.cq, label %bb.cr, !prof !112

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #29
  br label %bb.cr

bb.cr:                                            ; preds = %bb.g, %_ZN8WasmEdge6SymbolIFPK25WasmEdge_PluginDescriptorvEED2Ev.exit, %bb.cm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42, %bb.cq
  %i.xd = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.xe = icmp eq i64 %i.xd, 4294967297
  %i.xf = trunc i64 %i.xd to i32                  ; 2 uses
  br i1 %i.xe, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.e, align 8, !tbaa !100
  store i32 0, ptr %i.f, align 4, !tbaa !101
  %i.xg = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8
  call void %i.xi(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !4
  %i.xj = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !4
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ct:                                            ; preds = %bb.cr
  %i.xm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i45 = icmp eq i8 %i.xm, 0
  br i1 %.not.i.i.i45, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xn = add nsw i32 %i.xf, -1
  store i32 %i.xn, ptr %i.e, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.xo = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i = phi i32 [ %i.xf, %bb.cu ], [ %i.xo, %bb.cv ]
  %i.xp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.xp, label %bb.cw, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, !prof !112

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cs, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ch, %bb.cf
  %.31767 = phi i1 [ false, %bb.cw ], [ false, %bb.cs ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ true, %bb.cf ], [ true, %bb.cl ], [ true, %bb.ch ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ]
  %i.xq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8WasmEdge6Plugin6Plugin5MutexE) #29 ; 0 uses
  ret i1 %.31767

bb.cx:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge6Plugin12_GLOBAL__N_118CAPIPluginRegisterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i, %bb.by, %bb.z, %bb.y, %bb.m, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.b, %.thread
  %i.xr = landingpad { ptr, i32 }
          catch ptr null
  %i.xs = extractvalue { ptr, i32 } %i.xr, 0
  call void @__clang_call_terminate(ptr %i.xs) #31
  unreachable
end_hunk_1
