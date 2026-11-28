Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/grpc_tls_certificate_distributor?download=true
inline.NumInlined: 1583
inline.NumDeleted: 750
begin_hunk_0_@_ZN32grpc_tls_certificate_distributor20WatchTlsCertificatesESt10unique_ptrINS_31TlsCertificatesWatcherInterfaceESt14default_deleteIS1_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_:bb.a
  %i.ms = load ptr, ptr %i.mj, align 8, !tbaa !44
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(16) %i.mj) #24, !inline_history !2
  br label %_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

bb.cs:                                            ; preds = %bb.cq
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i132 = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i.i132, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mw = add nsw i32 %i.mn, -1
  store i32 %i.mw, ptr %i.mk, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

bb.cu:                                            ; preds = %bb.cs
  %i.mx = atomicrmw volatile add ptr %i.mk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i134 = phi i32 [ %i.mn, %bb.ct ], [ %i.mx, %bb.cu ]
  %i.my = icmp eq i32 %.0.i.i.i.i134, 1
  br i1 %i.my, label %bb.cv, label %_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, !prof !45

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mj) #24
  br label %_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135: ; preds = %_ZNSt14_Optional_baseISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0EED2Ev.exit130, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.cw

bb.cw:                                            ; preds = %_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #26
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nb)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !88
  %.not.i.i.i136.not = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i136.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.nf = load i8, ptr %i.m, align 8, !tbaa !53, !range !26, !noundef !27 ; 2 uses
  %i.ng = trunc nuw i8 %i.nf to i1
  %i.nh = load i8, ptr %i.bd, align 8, !tbaa !53, !range !26, !noundef !27
  %i.ni = icmp eq i8 %i.nf, %i.nh                 ; 2 uses
  %brmerge.not.i = and i1 %i.ni, %i.ng
  br i1 %brmerge.not.i, label %bb.cy, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit

bb.cy:                                            ; preds = %bb.cx
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !57 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !57
  %i.nn = icmp eq i64 %i.nk, %i.nm
  br i1 %i.nn, label %bb.cz, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

bb.cz:                                            ; preds = %bb.cy
  %i.no = icmp eq i64 %i.nk, 0
  br i1 %i.no, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.np = load ptr, ptr %3, align 8, !tbaa !58
  %i.nq = load ptr, ptr %2, align 8, !tbaa !58
  %bcmp.i.i = call i32 @bcmp(ptr %i.nq, ptr %i.np, i64 %i.nk)
  %i.nr = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit: ; preds = %bb.cx, %bb.cz, %bb.da
  %i.ns = phi i1 [ %i.ni, %bb.cx ], [ true, %bb.cz ], [ %i.nr, %bb.da ]
  %or.cond = or i1 %.0, %.036
  %or.cond69 = and i1 %or.cond, %i.ns
  br i1 %or.cond69, label %bb.db, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

bb.db:                                            ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit
  %i.nt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.nt, ptr %18, align 8, !tbaa !81
  %i.nu = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 %i.nw, ptr %i.i, align 8, !tbaa !82
  %i.nx = icmp ugt i64 %i.nw, 15
  br i1 %i.nx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.db
  %i.ny = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc137 unwind label %bb.dl ; 2 uses

.noexc137:                                        ; preds = %.noexc.i
  store ptr %i.ny, ptr %18, align 8, !tbaa !58
  %i.nz = load i64, ptr %i.i, align 8, !tbaa !82
  store i64 %i.nz, ptr %i.nt, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc137, %bb.db
  %i.oa = phi ptr [ %i.ny, %.noexc137 ], [ %i.nt, %bb.db ] ; 2 uses
  switch i64 %i.nw, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i
  %i.ob = load i8, ptr %i.nu, align 1, !tbaa !38
  store i8 %i.ob, ptr %i.oa, align 1, !tbaa !38
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oa, ptr align 1 %i.nu, i64 %i.nw, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i
  %i.oc = load i64, ptr %i.i, align 8, !tbaa !82  ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !57
  %i.oe = load ptr, ptr %18, align 8, !tbaa !58
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oc
  store i8 0, ptr %i.of, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.og = zext i1 %.0 to i8
  store i8 %i.og, ptr %i.g, align 1, !tbaa !89
  %i.oh = zext i1 %.036 to i8
  store i8 %i.oh, ptr %i.h, align 1, !tbaa !89
  %i.oi = load ptr, ptr %i.nd, align 8, !tbaa !88
  %.not.i.i138 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i138, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc139 unwind label %bb.dm

.noexc139:                                        ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !91
  invoke void %i.ok(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.dh unwind label %bb.dm, !inline_history !5

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ol = load ptr, ptr %18, align 8, !tbaa !58   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.nt
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dh
  %i.on = load i64, ptr %i.nt, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.di:                                            ; preds = %bb.ci, %bb.ch, %bb.bx
  %.pn58.pn = phi { ptr, i32 } [ %i.lm, %bb.ci ], [ %i.ll, %bb.ch ], [ %i.kj, %bb.bx ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZNSt14_Optional_baseISt6vectorIN9grpc_core14PemKeyCertPairESaIS2_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @_ZNSt12__shared_ptrISt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core15SpiffeBundleMapEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZNSt10unique_ptrIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt14default_deleteIS1_EED2Ev.exit, %bb.j
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.di ], [ %.pn56, %_ZNSt10unique_ptrIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt14default_deleteIS1_EED2Ev.exit ], [ %i.ai, %bb.j ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit141 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #26
  unreachable

bb.dl:                                            ; preds = %.noexc.i160, %.noexc.i146, %.noexc.i
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.dm:                                            ; preds = %bb.dg, %bb.df
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = load ptr, ptr %18, align 8, !tbaa !58   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.nt
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.dm
  %i.ou = load i64, ptr %i.nt, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.sink.split

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread: ; preds = %bb.cy, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit
  br i1 %.0, label %bb.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.dn:                                            ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread
  %i.ov = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.ov, ptr %19, align 8, !tbaa !81
  %i.ow = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.oy, ptr %i.f, align 8, !tbaa !82
  %i.oz = icmp ugt i64 %i.oy, 15
  br i1 %i.oz, label %.noexc.i146, label %._crit_edge.i.i145

.noexc.i146:                                      ; preds = %bb.dn
  %i.pa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc147 unwind label %bb.dl ; 2 uses

.noexc147:                                        ; preds = %.noexc.i146
  store ptr %i.pa, ptr %19, align 8, !tbaa !58
  %i.pb = load i64, ptr %i.f, align 8, !tbaa !82
  store i64 %i.pb, ptr %i.ov, align 8, !tbaa !38
  br label %._crit_edge.i.i145

._crit_edge.i.i145:                               ; preds = %.noexc147, %bb.dn
  %i.pc = phi ptr [ %i.pa, %.noexc147 ], [ %i.ov, %bb.dn ] ; 2 uses
  switch i64 %i.oy, label %bb.dp [
    i64 1, label %bb.do
    i64 0, label %bb.dq
  ]

bb.do:                                            ; preds = %._crit_edge.i.i145
  %i.pd = load i8, ptr %i.ow, align 1, !tbaa !38
  store i8 %i.pd, ptr %i.pc, align 1, !tbaa !38
  br label %bb.dq

bb.dp:                                            ; preds = %._crit_edge.i.i145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pc, ptr align 1 %i.ow, i64 %i.oy, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %._crit_edge.i.i145
  %i.pe = load i64, ptr %i.f, align 8, !tbaa !82  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.pe, ptr %i.pf, align 8, !tbaa !57
  %i.pg = load ptr, ptr %19, align 8, !tbaa !58
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pe
  store i8 0, ptr %i.ph, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.d, align 1, !tbaa !89
  %i.pi = zext i1 %.035 to i8
  store i8 %i.pi, ptr %i.e, align 1, !tbaa !89
  %i.pj = load ptr, ptr %i.nd, align 8, !tbaa !88
  %.not.i.i149 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i149, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc150 unwind label %bb.du

.noexc150:                                        ; preds = %bb.dr
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !91
  invoke void %i.pl(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.dt unwind label %bb.du, !inline_history !5

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.pm = load ptr, ptr %19, align 8, !tbaa !58   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.ov
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.dt
  %i.po = load i64, ptr %i.ov, align 8, !tbaa !38
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.du:                                            ; preds = %bb.ds, %bb.dr
  %i.pq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pr = load ptr, ptr %19, align 8, !tbaa !58   ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.ov
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.du
  %i.pt = load i64, ptr %i.ov, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread
  br i1 %.036, label %bb.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.pu, ptr %20, align 8, !tbaa !81
  %i.pv = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.px, ptr %i.c, align 8, !tbaa !82
  %i.py = icmp ugt i64 %i.px, 15
  br i1 %i.py, label %.noexc.i160, label %._crit_edge.i.i159

.noexc.i160:                                      ; preds = %bb.dv
  %i.pz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc161 unwind label %bb.dl ; 2 uses

.noexc161:                                        ; preds = %.noexc.i160
  store ptr %i.pz, ptr %20, align 8, !tbaa !58
  %i.qa = load i64, ptr %i.c, align 8, !tbaa !82
  store i64 %i.qa, ptr %i.pu, align 8, !tbaa !38
  br label %._crit_edge.i.i159

._crit_edge.i.i159:                               ; preds = %.noexc161, %bb.dv
  %i.qb = phi ptr [ %i.pz, %.noexc161 ], [ %i.pu, %bb.dv ] ; 2 uses
  switch i64 %i.px, label %bb.dx [
    i64 1, label %bb.dw
    i64 0, label %bb.dy
  ]

bb.dw:                                            ; preds = %._crit_edge.i.i159
  %i.qc = load i8, ptr %i.pv, align 1, !tbaa !38
  store i8 %i.qc, ptr %i.qb, align 1, !tbaa !38
  br label %bb.dy

bb.dx:                                            ; preds = %._crit_edge.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qb, ptr align 1 %i.pv, i64 %i.px, i1 false)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %._crit_edge.i.i159
  %i.qd = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.qd, ptr %i.qe, align 8, !tbaa !57
  %i.qf = load ptr, ptr %20, align 8, !tbaa !58
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qd
  store i8 0, ptr %i.qg, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.qh = zext i1 %.037 to i8
  store i8 %i.qh, ptr %i.a, align 1, !tbaa !89
  store i8 1, ptr %i.b, align 1, !tbaa !89
  %i.qi = load ptr, ptr %i.nd, align 8, !tbaa !88
  %.not.i.i163 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i163, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc164 unwind label %bb.ec

.noexc164:                                        ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !91
  invoke void %i.qk(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.eb unwind label %bb.ec, !inline_history !5

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ql = load ptr, ptr %20, align 8, !tbaa !58   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.pu
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.eb
  %i.qn = load i64, ptr %i.pu, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.ec:                                            ; preds = %bb.ea, %bb.dz
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qp = load ptr, ptr %20, align 8, !tbaa !58   ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.pu
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.ec
  %i.qr = load i64, ptr %i.pu, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %.sink243 = phi i64 [ %i.qn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.ql, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.ol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.qs = add i64 %.sink243, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.qs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %bb.eb, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nb)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit173 unwind label %bb.ed

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.qt = landingpad { ptr, i32 }
          catch ptr null
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0
  call void @__clang_call_terminate(ptr %i.qu) #26
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit173:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  %.sink246 = phi i64 [ %i.qr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.pt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ]
  %.sink244 = phi ptr [ %i.qp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ]
  %.pn64.ph = phi { ptr, i32 } [ %i.qo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.or, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ]
  %21 = add i64 %.sink246, 1
  call void @_ZdlPvm(ptr noundef %.sink244, i64 noundef %21) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.sink.split, %bb.ec, %bb.du, %bb.dm, %bb.dl
  %.pn64 = phi { ptr, i32 } [ %i.or, %bb.dm ], [ %i.oq, %bb.dl ], [ %i.pq, %bb.du ], [ %i.qo, %bb.ec ], [ %.pn64.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.sink.split ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nb)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit141 unwind label %bb.ee

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  call void @__clang_call_terminate(ptr %i.qw) #26
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit141:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.dj
  %.pn64.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn, %bb.dj ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  resume { ptr, i32 } %.pn64.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN32grpc_tls_certificate_distributor11WatcherInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !53, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.a, align 8, !tbaa !53
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !38
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !53, !range !26, !noundef !27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !53
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3: ; preds = %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.s = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceEEclEPS1_.exit.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #24, !inline_history !4
  br label %_ZNSt10unique_ptrIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, %_ZNKSt14default_deleteIN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN32grpc_tls_certificate_distributor26CancelTlsCertificatesWatchEPNS_31TlsCertificatesWatcherInterfaceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.std::optional.28", align 8  ; 17 uses
  %3 = alloca %"class.std::optional.28", align 8  ; 15 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store i8 0, ptr %i.k, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.ah

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i, label %.critedge78, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = icmp ult ptr %i.s, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.t, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.t, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4pairIKS2_NS0_11WatcherInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4pairIKS2_NS0_11WatcherInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = icmp eq ptr %.19.i.i.i, %i.q
  br i1 %i.u, label %.critedge78, label %_ZNSt3mapIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceENS0_11WatcherInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit

_ZNSt3mapIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceENS0_11WatcherInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4pairIKS2_NS0_11WatcherInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp ult ptr %1, %i.w
  br i1 %i.x, label %.critedge78, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceENS0_11WatcherInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.y) #24
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 88
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.z) #24
  call void @_ZNSt8_Rb_treeIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4pairIKS2_NS0_11WatcherInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr nonnull %.19.i.i.i)
  %i.aa = load i8, ptr %i.k, align 8, !tbaa !53, !range !26, !noundef !27
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.not10.i.i.i79 = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i79, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !57 ; 4 uses
  %i.ah = load ptr, ptr %2, align 8               ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i80
  %.012.i.i.i81 = phi ptr [ %i.ad, %.lr.ph.i.i.i80 ], [ %.1.i.i.i86, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i82 = phi ptr [ %i.ae, %.lr.ph.i.i.i80 ], [ %.19.i.i.i83, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i81, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i81, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %i.ah, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.ao = sub i64 %i.aj, %i.ag
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i83 = select i1 %i.ap, ptr %.0811.i.i.i82, ptr %.012.i.i.i81 ; 8 uses
  %.1.in.v.i.i.i84 = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i85 = getelementptr inbounds nuw i8, ptr %.012.i.i.i81, i64 %.1.in.v.i.i.i84
  %.1.i.i.i86 = load ptr, ptr %.1.in.i.i.i85, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %.1.i.i.i86, null
  br i1 %.not.i.i.i87, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N32grpc_tls_certificate_distributor15CertificateInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !3

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N32grpc_tls_certificate_distributor15CertificateInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i83, %i.ae
  br i1 %i.aq, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N32grpc_tls_certificate_distributor15CertificateInfoEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i83, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ag) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN32grpc_tls_certificate_distributor26CancelTlsCertificatesWatchEPNS_31TlsCertificatesWatcherInterfaceE:bb.a

bb.q:                                             ; preds = %_ZNSt3setIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4lessIS2_ESaIS2_EE5eraseERKS2_.exit122
  %i.df = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i99, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #24 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  call void @_ZN32grpc_tls_certificate_distributor15CertificateInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.dh) #24
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !58 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 48 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i123: ; preds = %bb.q
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !38
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit125

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit125: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 216) #27
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !86
  %i.dp = add i64 %i.do, -1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !86
  br label %bb.s

bb.r:                                             ; preds = %.critedge, %.critedge76
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZNSt3setIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4lessIS2_ESaIS2_EE5eraseERKS2_.exit122, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit125, %bb.j
  %.149 = phi i1 [ false, %bb.j ], [ %i.dd, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit125 ], [ %i.dd, %_ZNSt3setIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4lessIS2_ESaIS2_EE5eraseERKS2_.exit122 ]
  %.147 = phi i1 [ false, %bb.j ], [ %i.da, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN32grpc_tls_certificate_distributor15CertificateInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit125 ], [ %i.da, %_ZNSt3setIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4lessIS2_ESaIS2_EE5eraseERKS2_.exit122 ] ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #26
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit126 unwind label %bb.ah

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit126: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !88
  %.not.i.i.i127.not = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i127.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit126
  %i.dx = load i8, ptr %i.k, align 8, !tbaa !53, !range !26, !noundef !27 ; 2 uses
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = load i8, ptr %i.l, align 8, !tbaa !53, !range !26, !noundef !27
  %i.ea = icmp eq i8 %i.dx, %i.dz                 ; 2 uses
  %brmerge.not.i = and i1 %i.ea, %i.dy
  br i1 %brmerge.not.i, label %bb.v, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit

bb.v:                                             ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !57 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !57
  %i.ef = icmp eq i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.w, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.eg = icmp eq i64 %i.ec, 0
  br i1 %i.eg, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %3, align 8, !tbaa !58
  %i.ei = load ptr, ptr %2, align 8, !tbaa !58
  %bcmp.i.i = call i32 @bcmp(ptr %i.ei, ptr %i.eh, i64 %i.ec)
  %i.ej = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit: ; preds = %bb.u, %bb.w, %bb.x
  %i.ek = phi i1 [ %i.ea, %bb.u ], [ true, %bb.w ], [ %i.ej, %bb.x ]
  %or.cond6 = or i1 %.0, %.147
  %or.cond = and i1 %or.cond6, %i.ek
  br i1 %or.cond, label %bb.y, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread

bb.y:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.el, ptr %6, align 8, !tbaa !81
  %i.em = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 %i.eo, ptr %i.i, align 8, !tbaa !82
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc unwind label %bb.ai    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.eq, ptr %6, align 8, !tbaa !58
  %i.er = load i64, ptr %i.i, align 8, !tbaa !82
  store i64 %i.er, ptr %i.el, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.y
  %i.es = phi ptr [ %i.eq, %.noexc ], [ %i.el, %bb.y ] ; 2 uses
  switch i64 %i.eo, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.et = load i8, ptr %i.em, align 1, !tbaa !38
  store i8 %i.et, ptr %i.es, align 1, !tbaa !38
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.em, i64 %i.eo, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.eu = load i64, ptr %i.i, align 8, !tbaa !82  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !57
  %i.ew = load ptr, ptr %6, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  %i.ey = xor i1 %.0, true
  %i.ez = xor i1 %.147, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.fa = zext i1 %i.ey to i8
  store i8 %i.fa, ptr %i.g, align 1, !tbaa !89
  %i.fb = zext i1 %i.ez to i8
  store i8 %i.fb, ptr %i.h, align 1, !tbaa !89
  %i.fc = load ptr, ptr %i.dv, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc128 unwind label %bb.aj

.noexc128:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !91
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.ae unwind label %bb.aj, !inline_history !5

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ff = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.el
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.fh = load i64, ptr %i.el, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.af:                                            ; preds = %bb.o, %bb.r, %bb.g
  %.pn66.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.o ], [ %i.az, %bb.g ], [ %i.dq, %bb.r ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit130 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #26
  unreachable

bb.ah:                                            ; preds = %bb.a, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit130

bb.ai:                                            ; preds = %.noexc.i149, %.noexc.i135, %.noexc.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.el
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.aj
  %i.fp = load i64, ptr %i.el, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.sink.split

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread: ; preds = %bb.v, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit
  br i1 %.0, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ak:                                            ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.fq, ptr %7, align 8, !tbaa !81
  %i.fr = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.ft, ptr %i.f, align 8, !tbaa !82
  %i.fu = icmp ugt i64 %i.ft, 15
  br i1 %i.fu, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ak
  %i.fv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc136 unwind label %bb.ai ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.fv, ptr %7, align 8, !tbaa !58
  %i.fw = load i64, ptr %i.f, align 8, !tbaa !82
  store i64 %i.fw, ptr %i.fq, align 8, !tbaa !38
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ak
  %i.fx = phi ptr [ %i.fv, %.noexc136 ], [ %i.fq, %bb.ak ] ; 2 uses
  switch i64 %i.ft, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i134
  %i.fy = load i8, ptr %i.fr, align 1, !tbaa !38
  store i8 %i.fy, ptr %i.fx, align 1, !tbaa !38
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr align 1 %i.fr, i64 %i.ft, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i134
  %i.fz = load i64, ptr %i.f, align 8, !tbaa !82  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !57
  %i.gb = load ptr, ptr %7, align 8, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fz
  store i8 0, ptr %i.gc, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.d, align 1, !tbaa !89
  %i.gd = zext i1 %.042 to i8
  store i8 %i.gd, ptr %i.e, align 1, !tbaa !89
  %i.ge = load ptr, ptr %i.dv, align 8, !tbaa !88
  %.not.i.i138 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i138, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc139 unwind label %bb.ar

.noexc139:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !91
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.aq unwind label %bb.ar, !inline_history !5

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gh = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.fq
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.aq
  %i.gj = load i64, ptr %i.fq, align 8, !tbaa !38
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fq
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.ar
  %i.go = load i64, ptr %i.fq, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.thread
  br i1 %.147, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.gp, ptr %8, align 8, !tbaa !81
  %i.gq = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.gs, ptr %i.c, align 8, !tbaa !82
  %i.gt = icmp ugt i64 %i.gs, 15
  br i1 %i.gt, label %.noexc.i149, label %._crit_edge.i.i148

.noexc.i149:                                      ; preds = %bb.as
  %i.gu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc150 unwind label %bb.ai ; 2 uses

.noexc150:                                        ; preds = %.noexc.i149
  store ptr %i.gu, ptr %8, align 8, !tbaa !58
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !82
  store i64 %i.gv, ptr %i.gp, align 8, !tbaa !38
  br label %._crit_edge.i.i148

._crit_edge.i.i148:                               ; preds = %.noexc150, %bb.as
  %i.gw = phi ptr [ %i.gu, %.noexc150 ], [ %i.gp, %bb.as ] ; 2 uses
  switch i64 %i.gs, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i148
  %i.gx = load i8, ptr %i.gq, align 1, !tbaa !38
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !38
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr align 1 %i.gq, i64 %i.gs, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i148
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !57
  %i.ha = load ptr, ptr %8, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  store i8 0, ptr %i.hb, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hc = zext i1 %.149 to i8
  store i8 %i.hc, ptr %i.a, align 1, !tbaa !89
  store i8 0, ptr %i.b, align 1, !tbaa !89
  %i.hd = load ptr, ptr %i.dv, align 8, !tbaa !88
  %.not.i.i152 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i152, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc153 unwind label %bb.az

.noexc153:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !91
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ay unwind label %bb.az, !inline_history !5

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hg = load ptr, ptr %8, align 8, !tbaa !58    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.gp
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.ay
  %i.hi = load i64, ptr %i.gp, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %8, align 8, !tbaa !58    ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.gp
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.az
  %i.hm = load i64, ptr %i.gp, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  %.sink232 = phi i64 [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.hn = add i64 %.sink232, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %bb.ay, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit126
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit162 unwind label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #26
  unreachable

.critedge78:                                      ; preds = %_ZNSt8_Rb_treeIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceESt4pairIKS2_NS0_11WatcherInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit, %_ZNSt3mapIPN32grpc_tls_certificate_distributor31TlsCertificatesWatcherInterfaceENS0_11WatcherInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit162 unwind label %bb.bb

bb.bb:                                            ; preds = %.critedge78
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  tail call void @__clang_call_terminate(ptr %i.hr) #26
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit162:     ; preds = %.critedge78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hs = load i8, ptr %i.l, align 8, !tbaa !53, !range !26, !noundef !27
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bc:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit162
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.hu = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bc
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !38
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bc, %_ZN4absl12lts_202505129MutexLockD2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.hz = load i8, ptr %i.k, align 8, !tbaa !53, !range !26, !noundef !27
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit166

bb.bd:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  store i8 0, ptr %i.k, align 8, !tbaa !53
  %i.ib = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i164: ; preds = %bb.bd
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !38
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit166

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit166: ; preds = %bb.bd, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  %.sink235 = phi i64 [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ]
  %.sink233 = phi ptr [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ]
  %.pn71.ph = phi { ptr, i32 } [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ]
  %9 = add i64 %.sink235, 1
  call void @_ZdlPvm(ptr noundef %.sink233, i64 noundef %9) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.sink.split, %bb.az, %bb.ar, %bb.aj, %bb.ai
  %.pn71 = phi { ptr, i32 } [ %i.fm, %bb.aj ], [ %i.fl, %bb.ai ], [ %i.gl, %bb.ar ], [ %i.hj, %bb.az ], [ %.pn71.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.sink.split ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit130 unwind label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #26
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit130:     ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %bb.af
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn, %bb.af ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %i.fk, %bb.ah ]
  %i.ii = load i8, ptr %i.l, align 8, !tbaa !53, !range !26, !noundef !27
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit170

bb.bf:                                            ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit130
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.ik = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168: ; preds = %bb.bf
  %i.in = load i64, ptr %i.il, align 8, !tbaa !38
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit170

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit170: ; preds = %bb.bf, %_ZN4absl12lts_202505129MutexLockD2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ip = load i8, ptr %i.k, align 8, !tbaa !53, !range !26, !noundef !27
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.bg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173

bb.bg:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit170
  store i8 0, ptr %i.k, align 8, !tbaa !53
  %i.ir = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171: ; preds = %bb.bg
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !38
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173: ; preds = %bb.bg, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn71.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @grpc_tls_identity_pairs_create() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define void @grpc_tls_identity_pairs_add_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !92
  store ptr %2, ptr %i.b, align 8, !tbaa !92
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %.not.i10 = icmp eq ptr %1, null
  br i1 %.not.i10, label %bb.f, label %bb.e, !prof !45

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull %i.c) #25
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  unreachable

bb.e:                                             ; preds = %bb.b
  %.not.i11 = icmp eq ptr %2, null
  br i1 %.not.i11, label %bb.i, label %bb.h, !prof !45

bb.f:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKcPKvEES4_T_T0_S4_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 333, ptr noundef nonnull %i.e) #25
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit13 unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit13: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.g = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EE12emplace_backIJRPKcS7_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  ret void

bb.i:                                             ; preds = %bb.e
  %i.h = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKcPKvEES4_T_T0_S4_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 334, ptr noundef nonnull %i.h) #25
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit14 unwind label %bb.j

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit14: ; preds = %bb.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN9grpc_core14PemKeyCertPairESaIS1_EE12emplace_backIJRPKcS7_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::variant", align 8      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = load ptr, ptr %1, align 8, !tbaa !92     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !81
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.i, ptr %i.a, align 8, !tbaa !82
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !58
  %i.l = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.l, ptr %i.g, align 8, !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN9grpc_core16PrivateKeySignerEEEEC2IRPKcvvS5_vEEOT_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !38
  store i8 %i.n, ptr %i.m, align 1, !tbaa !38
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN9grpc_core16PrivateKeySignerEEEEC2IRPKcvvS5_vEEOT_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN9grpc_core16PrivateKeySignerEEEEC2IRPKcvvS5_vEEOT_.exit
end_hunk_1
