Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN7rocksdb6DBImpl11SyncWalImplEbRKNS_12WriteOptionsEPNS_10JobContextEPNS_11VersionEditEb:bb.a
  br i1 %.not.i.i.i152, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i153, label %.lr.ph.i.i.i146, !llvm.loop !56

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i153: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i151, %_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit
  %i.nb = load ptr, ptr %i.dw, align 8, !tbaa !645
  %i.nc = load i64, ptr %i.dy, align 8, !tbaa !646
  %i.nd = shl i64 %i.nc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.nb, i8 0, i64 %i.nd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  %i.ne = load ptr, ptr %i.dw, align 8, !tbaa !645 ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.dx
  br i1 %i.nf, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit156, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i153
  %i.ng = load i64, ptr %i.dy, align 8, !tbaa !646
  %i.nh = shl i64 %i.ng, 3
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #40
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit156

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit156: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i153, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cd, %bb.ca
  %.pn68 = phi { ptr, i32 } [ %i.lp, %bb.ca ], [ %i.ls, %bb.cd ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.d)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit126 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #44
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit126:   ; preds = %bb.by, %bb.cj, %bb.bl, %bb.ba, %bb.aw, %bb.ap, %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.am
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.hb, %bb.ba ], [ %.pn65, %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit118 ], [ %i.fr, %bb.am ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn68, %bb.cj ], [ %i.ll, %bb.by ], [ %i.gq, %bb.aw ], [ %i.gb, %bb.ap ], [ %i.hz, %bb.bl ] ; 2 uses
  %i.nk = load ptr, ptr %9, align 8, !tbaa !686   ; 2 uses
  %.not8.i.i127 = icmp eq ptr %i.nk, %9
  br i1 %.not8.i.i127, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit131, label %.lr.ph.i.i128

.lr.ph.i.i128:                                    ; preds = %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit126, %.lr.ph.i.i128
  %.09.i.i129 = phi ptr [ %i.nl, %.lr.ph.i.i128 ], [ %i.nk, %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit126 ] ; 2 uses
  %i.nl = load ptr, ptr %.09.i.i129, align 8, !tbaa !686 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i129, i64 noundef 24) #40
  %.not.i.i130 = icmp eq ptr %i.nl, %9
  br i1 %.not.i.i130, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit131, label %.lr.ph.i.i128, !llvm.loop !2670

_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit131: ; preds = %.lr.ph.i.i128, %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !737 ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i132, label %_ZN7rocksdb6StatusD2Ev.exit134, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133: ; preds = %_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit131
  call void @_ZdaPv(ptr noundef nonnull %i.nn) #40
  br label %_ZN7rocksdb6StatusD2Ev.exit134

_ZN7rocksdb6StatusD2Ev.exit134:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133, %_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit131, %bb.al
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.al ], [ %.pn68.pn.pn, %_ZNSt7__cxx1110_List_baseIPN7rocksdb3log6WriterESaIS4_EED2Ev.exit131 ], [ %.pn68.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i133 ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.dw) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit86

bb.cl:                                            ; preds = %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit156
  %.pr.i.i = load i64, ptr %7, align 8, !tbaa !2672
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %bb.cm, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cl
  store i64 0, ptr %7, align 8, !tbaa !2672
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.preheader.i.i, %bb.cl
  %i.no = load ptr, ptr %i.c, align 8, !tbaa !800 ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !801
  %.not.i.i.i.i135 = icmp eq ptr %i.nq, %i.no
  br i1 %.not.i.i.i.i135, label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i, label %_ZSt8_DestroyIPPN7rocksdb3log6WriterES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb3log6WriterES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.cm
  store ptr %i.no, ptr %i.np, align 8, !tbaa !801
  br label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb3log6WriterES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.cm
  %.not.i.i.i1.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i
  %i.nr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !802
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %i.no to i64
  %i.nv = sub i64 %i.nt, %i.nu
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.nv) #40
  br label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EED2Ev.exit

_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  ret void

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit86:    ; preds = %bb.e, %bb.af, %_ZN7rocksdb6StatusD2Ev.exit134, %bb.ak
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.ak ], [ %.pn68.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit134 ], [ %i.p, %bb.e ], [ %.pn75, %bb.af ]
  %.pr.i.i136 = load i64, ptr %7, align 8, !tbaa !2672
  %.not1.i.i137 = icmp eq i64 %.pr.i.i136, 0
  br i1 %.not1.i.i137, label %bb.co, label %.lr.ph.preheader.i.i138

.lr.ph.preheader.i.i138:                          ; preds = %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit86
  store i64 0, ptr %7, align 8, !tbaa !2672
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph.preheader.i.i138, %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit86
  %i.nw = load ptr, ptr %i.c, align 8, !tbaa !800 ; 5 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !801
  %.not.i.i.i.i139 = icmp eq ptr %i.ny, %i.nw
  br i1 %.not.i.i.i.i139, label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i141, label %_ZSt8_DestroyIPPN7rocksdb3log6WriterES3_EvT_S5_RSaIT0_E.exit.i.i.i.i140

_ZSt8_DestroyIPPN7rocksdb3log6WriterES3_EvT_S5_RSaIT0_E.exit.i.i.i.i140: ; preds = %bb.co
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !801
  br label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i141

_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i141: ; preds = %_ZSt8_DestroyIPPN7rocksdb3log6WriterES3_EvT_S5_RSaIT0_E.exit.i.i.i.i140, %bb.co
  %.not.i.i.i1.i142 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i1.i142, label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EED2Ev.exit143, label %bb.cp

bb.cp:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i141
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !802
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.nw to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.od) #40
  br label %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EED2Ev.exit143

_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EED2Ev.exit143: ; preds = %_ZN7rocksdb10autovectorIPNS_3log6WriterELm1EE5clearEv.exit.i141, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  resume { ptr, i32 } %.pn75.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl18ApplyWALToManifestERKNS_11ReadOptionsERKNS_12WriteOptionsEPNS_11VersionEditE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 2 uses
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !724
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !796
  tail call void @_ZN7rocksdb10VersionSet32LogAndApplyToDefaultColumnFamilyERKNS_11ReadOptionsERKNS_12WriteOptionsEPNS_11VersionEditEPNS_17InstrumentedMutexEPNS_11FSDirectoryEbPKNS_19ColumnFamilyOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(874) %i.c, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef %i.e, i1 noundef zeroext false, ptr noundef null)
  %i.f = load i8, ptr %0, align 8, !tbaa !824
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 16, !tbaa !724
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 760 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !824
  %i.k = icmp eq i8 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2144
  invoke void @_ZN7rocksdb12ErrorHandler10SetBGErrorERKNS_6StatusENS_21BackgroundErrorReasonEb(ptr noundef nonnull align 8 dereferenceable(288) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef 4, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !737  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #40
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.d, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN7rocksdb18WritableFileWriter16PrepareIOOptionsERKNS_12WriteOptionsERNS_9IOOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(84)) local_unnamed_addr #6

declare void @_ZN7rocksdb18WritableFileWriter16SyncWithoutFlushERKNS_9IOOptionsEb(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(258), ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN7rocksdb18WritableFileWriter4SyncERKNS_9IOOptionsEb(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(258), ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN7rocksdb18WritableFileWriter5CloseERKNS_9IOOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(258), ptr noundef nonnull align 8 dereferenceable(84)) local_unnamed_addr #6

declare void @_ZN7rocksdb15DirFsyncOptionsC1ENS0_11FsyncReasonE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #6

declare noundef zeroext i1 @_ZN7rocksdb3log6Writer15PublishIfClosedEv(ptr noundef nonnull align 8 dereferenceable(656)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl14MarkLogsSyncedEmbPNS_11VersionEditE(ptr noundef nonnull align 64 dereferenceable(7336) %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator.161", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.std::_Deque_iterator.161", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3040
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1409
  %i.e = icmp eq i64 %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3304
  store i8 1, ptr %i.f, align 8, !tbaa !665
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1132, !noalias !2703 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3448 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !1132, !noalias !2704 ; 2 uses
  %i.n = icmp eq ptr %i.i, %i.m
  br i1 %i.n, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !1134, !noalias !2703
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1165, !noalias !2703
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 935
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1319
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit
  %i.aa = phi ptr [ %i.m, %.lr.ph ], [ %i.cp, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.24.030 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.24.1, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ] ; 6 uses
  %.sroa.18.029 = phi ptr [ %i.r, %.lr.ph ], [ %.sroa.18.1, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ] ; 4 uses
  %.sroa.018.028 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.018.1, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ] ; 9 uses
  %i.ab = load i64, ptr %.sroa.018.028, align 8, !tbaa !1136 ; 4 uses
  %.not = icmp ugt i64 %i.ab, %1
  br i1 %.not, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3480
  call void @_ZN7rocksdb4port7CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(76) %i.ac)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.k, align 64, !tbaa !1133, !noalias !2705
  %i.ae = icmp eq ptr %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.l, align 16, !tbaa !1134, !noalias !2705
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !806
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 480
  br label %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit

_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit: ; preds = %bb.f, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ %i.aa, %bb.f ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1136
  %i.am = icmp ult i64 %i.ab, %i.al
  br i1 %i.am, label %bb.h, label %bb.t

bb.h:                                             ; preds = %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit
  %i.an = load i8, ptr %i.s, align 1, !tbaa !1148, !range !638, !noundef !639
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1411 ; 3 uses
  %.not14 = icmp eq i64 %i.aq, 0
  br i1 %.not14, label %_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !1413 ; 7 uses
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !1042
  %.not.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.ab, ptr %i.ar, align 8, !tbaa !2708
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.aq, ptr %i.at, align 8, !tbaa !821
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.au, ptr %i.u, align 8, !tbaa !1413
  br label %_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !1041 ; 5 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775792
  br i1 %i.az, label %bb.m, label %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #41
  unreachable

_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ba = ashr exact i64 %i.ay, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 576460752303423487)
  %i.be = select i1 %i.bc, i64 576460752303423487, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #42 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i64 %i.ab, ptr %i.bh, align 8, !tbaa !2708
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.aq, ptr %i.bi, align 8, !tbaa !821
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1414, !alias.scope !2709
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2697

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i34.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJRmNS0_11WalMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !1042
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bo) #40
  br label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJRmNS0_11WalMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJRmNS0_11WalMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i.i
  store ptr %i.bg, ptr %i.t, align 8, !tbaa !1041
  store ptr %i.bl, ptr %i.u, align 8, !tbaa !1413
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bp, ptr %i.v, align 8, !tbaa !1042
  br label %_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit

_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit: ; preds = %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJRmNS0_11WalMetadataEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.k, %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1167
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1191 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit
  %i.bu = load i8, ptr %i.w, align 1, !tbaa !1412, !range !638, !noundef !639
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1411
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bz = load atomic i64, ptr %i.by acquire, align 8
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN7rocksdb11VersionEdit6AddWalEmNS_11WalMetadataE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !1167
  store ptr null, ptr %i.bq, align 8, !tbaa !1167
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !772
  call void @_ZN7rocksdb10autovectorIPNS_3log6WriterELm8EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  store ptr %.sroa.018.028, ptr %4, align 8, !tbaa !1132, !alias.scope !2710, !noalias !2711
  %i.cc = load ptr, ptr %.sroa.24.030, align 8, !tbaa !806, !noalias !2712 ; 2 uses
  store ptr %i.cc, ptr %6, align 8, !tbaa !1133, !alias.scope !2710, !noalias !2711
  %7 = getelementptr inbounds nuw i8, ptr %i.cc, i64 480
  store ptr %7, ptr %i.y, align 8, !tbaa !1165, !alias.scope !2710, !noalias !2711
  store ptr %.sroa.24.030, ptr %i.z, align 8, !tbaa !1134, !alias.scope !2710, !noalias !2711
  call void @_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE8_M_eraseESt15_Deque_iteratorIS2_RS2_PS2_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.161") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.018.0.copyload = load ptr, ptr %5, align 8, !tbaa !806
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !806
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 16
  store i8 0, ptr %i.cd, align 8, !tbaa !1410
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 40 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %.sroa.18.029
  br i1 %i.cf, label %bb.s, label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.24.030, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !806 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 480
  br label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

bb.t:                                             ; preds = %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 16
  store i8 0, ptr %i.cj, align 8, !tbaa !1410
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 40 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %.sroa.18.029
  br i1 %i.cl, label %bb.u, label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.24.030, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !806 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 480
  br label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.018.1 = phi ptr [ %.sroa.018.0.copyload, %bb.q ], [ %i.ce, %bb.r ], [ %i.ch, %bb.s ], [ %i.cn, %bb.u ], [ %i.ck, %bb.t ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0.copyload, %bb.q ], [ %.sroa.18.029, %bb.r ], [ %i.ci, %bb.s ], [ %i.co, %bb.u ], [ %.sroa.18.029, %bb.t ]
  %.sroa.24.1 = phi ptr [ %.sroa.24.0.copyload, %bb.q ], [ %.sroa.24.030, %bb.r ], [ %i.cg, %bb.s ], [ %i.cm, %bb.u ], [ %.sroa.24.030, %bb.t ]
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !1132, !noalias !2704 ; 2 uses
  %i.cq = icmp eq ptr %.sroa.018.1, %i.cp
  br i1 %i.cq, label %.critedge, label %bb.e, !llvm.loop !2702
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl17MarkLogsNotSyncedEm(ptr noundef nonnull align 64 dereferenceable(7336) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3040
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1132, !noalias !2717 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1132, !noalias !2718 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !1134, !noalias !2717
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1165, !noalias !2717
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit
  %.sroa.02.08 = phi ptr [ %.sroa.02.1, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.11.07 = phi ptr [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.14.06 = phi ptr [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.k = load i64, ptr %.sroa.02.08, align 8, !tbaa !1136
  %.not = icmp ugt i64 %i.k, %1
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3480
  tail call void @_ZN7rocksdb4port7CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(76) %i.l)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !1410
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 40 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.sroa.11.07
  br i1 %i.o, label %bb.c, label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.14.06, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !806  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  br label %_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIN7rocksdb6DBImpl15LogWriterNumberERS2_PS2_EppEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.14.1 = phi ptr [ %i.p, %bb.c ], [ %.sroa.14.06, %bb.b ]
  %.sroa.11.1 = phi ptr [ %i.r, %bb.c ], [ %.sroa.11.07, %bb.b ]
  %.sroa.02.1 = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.s = icmp eq ptr %.sroa.02.1, %i.e
  br i1 %i.s, label %.critedge, label %.lr.ph, !llvm.loop !73
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10VersionSet32LogAndApplyToDefaultColumnFamilyERKNS_11ReadOptionsERKNS_12WriteOptionsEPNS_11VersionEditEPNS_17InstrumentedMutexEPNS_11FSDirectoryEbPKNS_19ColumnFamilyOptionsE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(874) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::function.488", align 8 ; 11 uses
  %10 = alloca %"class.std::function.491", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726
  %i.c = tail call noundef ptr @_ZNK7rocksdb15ColumnFamilySet10GetDefaultEv(ptr noundef nonnull align 8 dereferenceable(593) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  invoke void @_ZN7rocksdb10VersionSet11LogAndApplyEPNS_16ColumnFamilyDataERKNS_11ReadOptionsERKNS_12WriteOptionsEPNS_11VersionEditEPNS_17InstrumentedMutexEPNS_11FSDirectoryEbPKNS_19ColumnFamilyOptionsERKSt8functionIFvRKNS_6StatusEEERKSI_IFSJ_vEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(874) %1, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !719  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #44
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !719  ; 2 uses
  %.not.i10 = icmp eq ptr %i.j, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #44
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  ret void

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !719  ; 2 uses
  %.not.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #44
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !719  ; 2 uses
  %.not.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit13
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit15 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #44
  unreachable

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit13, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl7LockWALEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rocksdb::WriteThread::Writer", align 8 ; 19 uses
  %3 = alloca %"struct.rocksdb::WriteThread::Writer", align 8 ; 19 uses
  %4 = alloca %"class.std::unique_ptr.381", align 8 ; 7 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
end_hunk_0
