inline.NumInlined: 6734
inline.NumDeleted: 3043
begin_hunk_0_@_ZN6duckdb13ArrowAppenderC2ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEEmNS_16ClientPropertiesESt13unordered_mapImKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmSA_EEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store ptr %i.bv, ptr %i.ad, align 8, !tbaa !70
  %i.by = invoke ptr @_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.bi, i64 noundef %storemerge51, ptr noundef nonnull %i.bv, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.t

_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.loopexit

bb.t:                                             ; preds = %.noexc18
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.body

.loopexit:                                        ; preds = %bb.r, %_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.q
  %.pn.i.i = phi ptr [ %i.by, %_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bm, %bb.q ], [ %i.br, %bb.r ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.ca = load ptr, ptr %7, align 8, !tbaa !71
  store ptr null, ptr %7, align 8, !tbaa !71
  %i.cb = load ptr, ptr %6, align 8, !tbaa !71    ; 3 uses
  store ptr %i.ca, ptr %6, align 8, !tbaa !71
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.u
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.cb) #34, !inline_history !72
  call void @_ZdlPv(ptr noundef nonnull %i.cb) #36, !inline_history !72
  %.pr = load ptr, ptr %7, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.u, %_ZN6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ag

.loopexit48:                                      ; preds = %bb.f, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %.loopexit.i.i, %.loopexit, %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.v ], [ %i.bz, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ak

_ZNSt13unordered_mapImKN6duckdb10shared_ptrINS0_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.k, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapImKN6duckdb10shared_ptrINS0_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.cd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %storemerge51)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNSt13unordered_mapImKN6duckdb10shared_ptrINS0_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit24 unwind label %bb.ae

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit24: ; preds = %bb.w
  %i.ce = load ptr, ptr %8, align 8, !tbaa !71
  store ptr null, ptr %8, align 8, !tbaa !71
  store ptr %i.ce, ptr %6, align 8, !tbaa !71
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit24
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cf, align 8, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !77
  %i.ck = load ptr, ptr %.pre, align 8, !tbaa !78
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #34, !inline_history !80
  %i.cn = load ptr, ptr %.pre, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i25 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i25, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.ci, %bb.aa ], [ %i.cs, %bb.ab ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.ac, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit24, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt13unordered_mapImKN6duckdb10shared_ptrINS0_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ae ], [ %i.cu, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ak

bb.ag:                                            ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !82 ; 6 uses
  %i.cx = load ptr, ptr %i.ag, align 8, !tbaa !85
  %.not.i.i26 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i26, label %bb.ah, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ag
  %i.cy = load i64, ptr %6, align 8, !tbaa !71
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cz, ptr %i.af, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit32

bb.ah:                                            ; preds = %bb.ag
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !86  ; 10 uses
  %i.db = ptrtoint ptr %i.cw to i64               ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.ai, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #35
          to label %.noexc29 unwind label %.loopexit48 ; 10 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  %i.dn = load i64, ptr %6, align 8, !tbaa !71
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc29
  %10 = add i64 %i.db, -8
  %11 = sub i64 %10, %i.dc                        ; 2 uses
  %i.do = lshr i64 %11, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dl, i64 8
  %i.dq = add i64 %i.db, -8
  %i.dr = sub i64 %i.dq, %i.dc
  %i.ds = and i64 %i.dr, -8                       ; 2 uses
  %scevgep74 = getelementptr i8, ptr %scevgep, i64 %i.ds
  %scevgep75 = getelementptr i8, ptr %i.da, i64 8
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.ds
  %bound0 = icmp ult ptr %i.dl, %scevgep76
  %bound1 = icmp ult ptr %i.da, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 3 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dl, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.da, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.dw ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.da, i64 %i.dw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.dx = getelementptr i8, ptr %next.gep77, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep77, align 8, !tbaa !71, !alias.scope !92, !noalias !87
  %wide.load78 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !71, !alias.scope !92, !noalias !87
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !95, !noalias !92
  store <2 x i64> %wide.load78, ptr %i.dy, align 8, !tbaa !71, !alias.scope !95, !noalias !92
  %i.dz = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep77, align 8, !tbaa !71, !alias.scope !92, !noalias !87
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !71, !alias.scope !92, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader80

.lr.ph.i.i.i.i.i.i.i.preheader80:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dl, %vector.memcheck ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.du, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader80, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader80 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader80 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.eb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !90, !noalias !87
  store i64 %i.eb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !87, !noalias !90
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !90, !noalias !87
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.cw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !100

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dl, %.noexc29 ], [ %i.du, %middle.block ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.da) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.aj
  store ptr %i.dl, ptr %i.g, align 8, !tbaa !86
  store ptr %i.ee, ptr %i.af, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ef, ptr %i.ag, align 8, !tbaa !85
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.eg = add nuw i64 %storemerge51, 1            ; 2 uses
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ei = load ptr, ptr %0, align 8, !tbaa !22
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 24
  %i.en = icmp ult i64 %i.eg, %i.em
  br i1 %i.en, label %bb.f, label %._crit_edge, !llvm.loop !101

bb.ak:                                            ; preds = %.loopexit48, %.loopexit.split-lp, %bb.af, %.body
  %.pn9 = phi { ptr, i32 } [ %.pn, %bb.af ], [ %eh.lpad-body, %.body ], [ %lpad.loopexit, %.loopexit48 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.i
  br i1 %i.ep, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.eo) #36
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %.pn9.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %.pn9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn9, %bb.ak ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #34
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn9.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
end_hunk_0
begin_hunk_1_@_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.aa = add nuw i64 %.08, 1                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aa
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !20
  %i.ae = add nuw i64 %.08, 2                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %i.ai = add nuw i64 %.08, 3                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ai
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  %i.am = add nuw i64 %.08, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !237
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((24, 32), (56, 72)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema, ptr %i.b, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.c, align 8, !tbaa !243
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18, !noalias !244 ; 13 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #35, !noalias !247 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.g, i1 false), !noalias !247
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load ptr, ptr %2, align 8, !tbaa !15, !noalias !244 ; 8 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = sub i64 %i.i, %i.k
  %diff.check = icmp ult i64 %i.l, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.f, 28
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !20, !noalias !244
  %wide.load23 = load <16 x i8>, ptr %i.n, align 1, !tbaa !20, !noalias !244
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %wide.load, ptr %i.o, align 1, !tbaa !20, !noalias !244
  store <16 x i8> %wide.load23, ptr %i.p, align 1, !tbaa !20, !noalias !244
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.f, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.r, align 1, !tbaa !20, !noalias !244
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %index26
  store <4 x i8> %wide.load27, ptr %i.s, align 1, !tbaa !20, !noalias !244
  %index.next28 = add nuw i64 %index26, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next28, %n.vec25
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.f, %n.vec25
  br i1 %cmp.n29, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.08.i.prol
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20, !noalias !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i.prol
  store i8 %i.v, ptr %i.w, align 1, !tbaa !20, !noalias !244
  %i.x = add nuw i64 %.08.i.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !252

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %i.y = sub i64 %.08.i.ph, %i.f
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %.08.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20, !noalias !244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !20, !noalias !244
  %i.ad = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20, !noalias !244
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !20, !noalias !244
  %i.ah = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20, !noalias !244
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !20, !noalias !244
  %i.al = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20, !noalias !244
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20, !noalias !244
  %i.ap = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ap, %i.f
  br i1 %exitcond.not.i.3, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !253

_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.aq, align 1, !tbaa !20, !noalias !244
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !254 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.av = ptrtoint ptr %i.h to i64
  store i64 %i.av, ptr %i.as, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !258 ; 10 uses
  %i.ay = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #35
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = ptrtoint ptr %i.h to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.as
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %3 = add i64 %i.ay, -8
  %4 = sub i64 %3, %i.az                          ; 2 uses
  %i.bl = lshr i64 %4, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %4, 152
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bn = add i64 %i.ay, -8
  %i.bo = sub i64 %i.bn, %i.az
  %i.bp = and i64 %i.bo, -8
  %i.bq = add i64 %i.bp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.bq
  %scevgep31 = getelementptr i8, ptr %i.ax, i64 %i.bq
  %bound0 = icmp ult ptr %i.bi, %scevgep31
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck30
  %n.vec35 = and i64 %i.bm, 4611686018427387900   ; 3 uses
  %i.br = shl i64 %n.vec35, 3                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ax, i64 %i.br
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body36 ] ; 2 uses
  %i.bu = shl i64 %index37, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.ax, i64 %i.bu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.bv = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load39 = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %wide.load40 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load39, ptr %next.gep, align 8, !tbaa !231, !alias.scope !267, !noalias !264
  store <2 x i64> %wide.load40, ptr %i.bw, align 8, !tbaa !231, !alias.scope !267, !noalias !264
  %i.bx = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep38, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.by, label %middle.block42, label %vector.body36, !llvm.loop !269

middle.block42:                                   ; preds = %vector.body36
  %cmp.n43 = icmp eq i64 %i.bm, %n.vec35
  br i1 %cmp.n43, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.preheader47:                 ; preds = %vector.memcheck30, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block42
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck30 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block42 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck30 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block42 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !262, !noalias !259
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !259, !noalias !262
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !262, !noalias !259
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !270

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block42, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc12 ], [ %i.bs, %middle.block42 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !258
  store ptr %i.cc, ptr %i.ar, align 8, !tbaa !254
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cd, ptr %i.at, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !231
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !271
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ci, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  ret void

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #36
  resume { ptr, i32 } %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema(ptr nofree noundef captures(address_is_null) %0) #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !238
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb23DuckDBArrowSchemaHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.d) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE3getILb1EEERS5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.117, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  ret ptr %i.o

end_hunk_1
begin_hunk_2_@_ZN6duckdb20SetArrowStructFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextEb:bb.a
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 56
  %i.ck = icmp ult i64 %i.cd, %i.cj
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !298

._crit_edge72:                                    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %._crit_edge
  br i1 %5, label %bb.o, label %bb.p

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.04371 = phi i64 [ 0, %._crit_edge.i.i.lr.ph ], [ %i.fw, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 5 uses
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !296
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.04371
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr %i.bs, ptr %6, align 8, !tbaa !12
  store i64 0, ptr %i.bt, align 8, !tbaa !18
  store i8 0, ptr %i.bs, align 8, !tbaa !20
  invoke void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.co = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bs
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.co) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.cq = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.04371) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18, !noalias !299 ; 13 uses
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  %i.cu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #35, !noalias !302 ; 13 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cu, i8 0, i64 %i.ct, i1 false), !noalias !302
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = ptrtoaddr ptr %i.cu to i64
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !15, !noalias !299 ; 8 uses
  %min.iters.check108 = icmp ult i64 %i.cs, 4
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %i.cy = sub i64 %i.cv, %i.cx
  %diff.check = icmp ult i64 %i.cy, 32
  %or.cond = select i1 %min.iters.check108, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check109 = icmp ult i64 %i.cs, 32
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf111 = and i64 %i.cs, 28
  %n.vec112 = and i64 %i.cs, -32                  ; 4 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next117, %vector.body113 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %index114 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load115 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !20, !noalias !299
  %wide.load116 = load <16 x i8>, ptr %i.da, align 1, !tbaa !20, !noalias !299
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index114 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <16 x i8> %wide.load115, ptr %i.db, align 1, !tbaa !20, !noalias !299
  store <16 x i8> %wide.load116, ptr %i.dc, align 1, !tbaa !20, !noalias !299
  %index.next117 = add nuw i64 %index114, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.dd, label %middle.block118, label %vector.body113, !llvm.loop !305

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %i.cs, %n.vec112
  br i1 %cmp.n119, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block118
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf111, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec112, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %i.cs, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 %index122
  %wide.load123 = load <4 x i8>, ptr %i.de, align 1, !tbaa !20, !noalias !299
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index122
  store <4 x i8> %wide.load123, ptr %i.df, align 1, !tbaa !20, !noalias !299
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !306

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %i.cs, %n.vec121
  br i1 %cmp.n125, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec112, %vec.epilog.iter.check ], [ %n.vec121, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.dk, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.08.i.prol
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20, !noalias !299
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.08.i.prol
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !20, !noalias !299
  %i.dk = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !307

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dk, %vec.epilog.scalar.ph.prol ]
  %i.dl = sub i64 %.08.i.ph, %i.cs
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.ec, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.08.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20, !noalias !299
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.08.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !20, !noalias !299
  %i.dq = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !20, !noalias !299
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !20, !noalias !299
  %i.du = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20, !noalias !299
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !20, !noalias !299
  %i.dy = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !20, !noalias !299
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !20, !noalias !299
  %i.ec = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ec, %i.cs
  br i1 %exitcond.not.i.3, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !308

_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block118, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.ed, align 1, !tbaa !20, !noalias !299
  %i.ee = load ptr, ptr %i.bv, align 8, !tbaa !254 ; 6 uses
  %i.ef = load ptr, ptr %i.bw, align 8, !tbaa !257
  %.not.i.i49 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eg = ptrtoint ptr %i.cu to i64
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !231
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.eh, ptr %i.bv, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.j:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ei = load ptr, ptr %i.bu, align 8, !tbaa !258 ; 10 uses
  %i.ej = ptrtoint ptr %i.ee to i64               ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc50 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit.split-lp

.noexc50:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #35
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  %i.ev = ptrtoint ptr %i.cu to i64
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.ee
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %7 = add i64 %i.ej, -8
  %8 = sub i64 %7, %i.ek                          ; 2 uses
  %i.ew = lshr i64 %8, 3
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader128, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.et, i64 8
  %i.ey = add i64 %i.ej, -8
  %i.ez = sub i64 %i.ey, %i.ek
  %i.fa = and i64 %i.ez, -8                       ; 2 uses
  %scevgep100 = getelementptr i8, ptr %scevgep, i64 %i.fa
  %scevgep101 = getelementptr i8, ptr %i.ei, i64 8
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %i.fa
  %bound0 = icmp ult ptr %i.et, %scevgep102
  %bound1 = icmp ult ptr %i.ei, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader128, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ex, 4611686018427387900     ; 3 uses
  %i.fb = shl i64 %n.vec, 3                       ; 2 uses
  %i.fc = getelementptr i8, ptr %i.et, i64 %i.fb  ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ei, i64 %i.fb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.et, i64 %i.fe ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ei, i64 %i.fe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.ff = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep103, align 8, !tbaa !231, !alias.scope !314, !noalias !309
  %wide.load104 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !231, !alias.scope !314, !noalias !309
  %i.fg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !317, !noalias !314
  store <2 x i64> %wide.load104, ptr %i.fg, align 8, !tbaa !231, !alias.scope !317, !noalias !314
  %i.fh = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep103, align 8, !tbaa !231, !alias.scope !314, !noalias !309
  store <2 x ptr> splat (ptr null), ptr %i.fh, align 8, !tbaa !231, !alias.scope !314, !noalias !309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader128

.lr.ph.i.i.i.i.i.i.i.preheader128:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.et, %vector.memcheck ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fc, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader128, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader128 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader128 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.fj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !312, !noalias !309
  store i64 %i.fj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !309, !noalias !312
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !312, !noalias !309
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fk, %i.ee
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !320

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.et, %.noexc51 ], [ %i.fc, %middle.block ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.et, ptr %i.bu, align 8, !tbaa !258
  store ptr %i.fm, ptr %i.bv, align 8, !tbaa !254
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fn, ptr %i.bw, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.fo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !231
  %i.fq = load ptr, ptr %i.bp, align 8, !tbaa !296
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.04371
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !297 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fp, ptr %i.ft, align 8, !tbaa !271
  %i.fu = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.04371)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  call void @_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(512) %4)
  %i.fw = add nuw i64 %.04371, 1                  ; 2 uses
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 56
  %i.gd = icmp ult i64 %i.fw, %i.gc
  br i1 %i.gd, label %._crit_edge.i.i, label %._crit_edge72, !llvm.loop !321

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bs
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.gf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.n

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #36
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn46 = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn46

bb.o:                                             ; preds = %._crit_edge72
  %i.gh = load ptr, ptr %i.bp, align 8, !tbaa !296
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !297
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i64 0, ptr %i.gj, align 8, !tbaa !243
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge72
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.e = load ptr, ptr %0, align 8, !tbaa !289    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 72                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #37
          to label %.cont.i.i unwind label %bb.ap

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ar, i64 noundef %i.at)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.an
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !327 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.bg) #36
  br label %common.resume

common.resume:                                    ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694, %bb.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673, %bb.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.avm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.avg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694 ], [ %.pn289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn283.pn.pn, %bb.dc ], [ %i.vy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %.pn269.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ], [ %.pn261.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %.pn249732, %bb.hu ], [ %i.asp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673 ], [ %.pn291.pn735, %bb.im ], [ %i.avm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700 ], [ %i.asp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671 ], [ %i.bf, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !18, !noalias !330 ; 13 uses
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #35
          to label %.noexc unwind label %bb.av    ; 13 uses

.noexc:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !333
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %.loopexit, label %iter.check1251

iter.check1251:                                   ; preds = %.noexc
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %5, align 8, !tbaa !15, !noalias !330 ; 8 uses
  %min.iters.check1237 = icmp ult i64 %i.bj, 4
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = sub i64 %i.bm, %i.bo
  %diff.check1235 = icmp ult i64 %i.bp, 32
  %or.cond1288 = select i1 %min.iters.check1237, i1 true, i1 %diff.check1235
  br i1 %or.cond1288, label %vec.epilog.scalar.ph1252.preheader, label %vector.main.loop.iter.check1238

vector.main.loop.iter.check1238:                  ; preds = %iter.check1251
  %min.iters.check1239 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check1239, label %vec.epilog.ph1255, label %vector.ph1240

vector.ph1240:                                    ; preds = %vector.main.loop.iter.check1238
  %n.mod.vf1241 = and i64 %i.bj, 28
  %n.vec1242 = and i64 %i.bj, -32                 ; 4 uses
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1240
  %index1244 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1247, %vector.body1243 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index1244 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load1245 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !20, !noalias !330
  %wide.load1246 = load <16 x i8>, ptr %i.br, align 1, !tbaa !20, !noalias !330
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index1244 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <16 x i8> %wide.load1245, ptr %i.bs, align 1, !tbaa !20, !noalias !330
  store <16 x i8> %wide.load1246, ptr %i.bt, align 1, !tbaa !20, !noalias !330
  %index.next1247 = add nuw i64 %index1244, 32    ; 2 uses
  %i.bu = icmp eq i64 %index.next1247, %n.vec1242
  br i1 %i.bu, label %middle.block1248, label %vector.body1243, !llvm.loop !336

middle.block1248:                                 ; preds = %vector.body1243
  %cmp.n1249 = icmp eq i64 %i.bj, %n.vec1242
  br i1 %cmp.n1249, label %.loopexit, label %vec.epilog.iter.check1253

vec.epilog.iter.check1253:                        ; preds = %middle.block1248
  %min.epilog.iters.check1254 = icmp eq i64 %n.mod.vf1241, 0
  br i1 %min.epilog.iters.check1254, label %vec.epilog.scalar.ph1252.preheader, label %vec.epilog.ph1255, !prof !233

vec.epilog.ph1255:                                ; preds = %vector.main.loop.iter.check1238, %vec.epilog.iter.check1253
  %vec.epilog.resume.val1250 = phi i64 [ %n.vec1242, %vec.epilog.iter.check1253 ], [ 0, %vector.main.loop.iter.check1238 ]
  %n.vec1257 = and i64 %i.bj, -4                  ; 3 uses
  br label %vec.epilog.vector.body1258

vec.epilog.vector.body1258:                       ; preds = %vec.epilog.vector.body1258, %vec.epilog.ph1255
  %index1259 = phi i64 [ %vec.epilog.resume.val1250, %vec.epilog.ph1255 ], [ %index.next1261, %vec.epilog.vector.body1258 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index1259
  %wide.load1260 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !20, !noalias !330
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index1259
  store <4 x i8> %wide.load1260, ptr %i.bw, align 1, !tbaa !20, !noalias !330
  %index.next1261 = add nuw i64 %index1259, 4     ; 2 uses
  %i.bx = icmp eq i64 %index.next1261, %n.vec1257
  br i1 %i.bx, label %vec.epilog.middle.block1262, label %vec.epilog.vector.body1258, !llvm.loop !337

vec.epilog.middle.block1262:                      ; preds = %vec.epilog.vector.body1258
  %cmp.n1263 = icmp eq i64 %i.bj, %n.vec1257
  br i1 %cmp.n1263, label %.loopexit, label %vec.epilog.scalar.ph1252.preheader

vec.epilog.scalar.ph1252.preheader:               ; preds = %iter.check1251, %vec.epilog.iter.check1253, %vec.epilog.middle.block1262
  %.08.i.ph = phi i64 [ 0, %iter.check1251 ], [ %n.vec1242, %vec.epilog.iter.check1253 ], [ %n.vec1257, %vec.epilog.middle.block1262 ] ; 3 uses
  %xtraiter1334 = and i64 %i.bj, 3                ; 2 uses
  %lcmp.mod1335.not = icmp eq i64 %xtraiter1334, 0
  br i1 %lcmp.mod1335.not, label %vec.epilog.scalar.ph1252.prol.loopexit, label %vec.epilog.scalar.ph1252.prol

vec.epilog.scalar.ph1252.prol:                    ; preds = %vec.epilog.scalar.ph1252.preheader, %vec.epilog.scalar.ph1252.prol
  %.08.i.prol = phi i64 [ %i.cb, %vec.epilog.scalar.ph1252.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph1252.preheader ] ; 3 uses
  %prol.iter1336 = phi i64 [ %prol.iter1336.next, %vec.epilog.scalar.ph1252.prol ], [ 0, %vec.epilog.scalar.ph1252.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.08.i.prol
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20, !noalias !330
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.08.i.prol
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !20, !noalias !330
  %i.cb = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter1336.next = add i64 %prol.iter1336, 1 ; 2 uses
  %prol.iter1336.cmp.not = icmp eq i64 %prol.iter1336.next, %xtraiter1334
  br i1 %prol.iter1336.cmp.not, label %vec.epilog.scalar.ph1252.prol.loopexit, label %vec.epilog.scalar.ph1252.prol, !llvm.loop !338

vec.epilog.scalar.ph1252.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1252.prol, %vec.epilog.scalar.ph1252.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph1252.preheader ], [ %i.cb, %vec.epilog.scalar.ph1252.prol ]
  %i.cc = sub i64 %.08.i.ph, %i.bj
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %.loopexit, label %vec.epilog.scalar.ph1252

vec.epilog.scalar.ph1252:                         ; preds = %vec.epilog.scalar.ph1252.prol.loopexit, %vec.epilog.scalar.ph1252
  %.08.i = phi i64 [ %i.ct, %vec.epilog.scalar.ph1252 ], [ %.08.i.unr, %vec.epilog.scalar.ph1252.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.08.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !20, !noalias !330
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.08.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !20, !noalias !330
  %i.ch = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20, !noalias !330
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !20, !noalias !330
  %i.cl = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20, !noalias !330
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !20, !noalias !330
  %i.cp = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20, !noalias !330
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !20, !noalias !330
  %i.ct = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ct, %i.bj
  br i1 %exitcond.not.i.3, label %.loopexit, label %vec.epilog.scalar.ph1252, !llvm.loop !339

.loopexit:                                        ; preds = %vec.epilog.scalar.ph1252.prol.loopexit, %vec.epilog.scalar.ph1252, %middle.block1248, %vec.epilog.middle.block1262, %.noexc
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.cu, align 1, !tbaa !20, !noalias !330
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !254 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.cz = ptrtoint ptr %i.bl to i64
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !231
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ar:                                            ; preds = %.loopexit
  %i.db = load ptr, ptr %i.bi, align 8, !tbaa !258 ; 10 uses
  %i.dc = ptrtoint ptr %i.cw to i64               ; 3 uses
  %i.dd = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.as, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc306 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit311

.noexc306:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #35
          to label %.noexc307 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit311 ; 10 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  %i.do = ptrtoint ptr %i.bl to i64
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.cw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc307
  %31 = add i64 %i.dc, -8
  %32 = sub i64 %31, %i.dd                        ; 2 uses
  %i.dp = lshr i64 %32, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check1272 = icmp ult i64 %32, 152
  br i1 %min.iters.check1272, label %.lr.ph.i.i.i.i.i.i.i.preheader1297, label %vector.memcheck1265

vector.memcheck1265:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dr = add i64 %i.dc, -8
  %i.ds = sub i64 %i.dr, %i.dd
  %i.dt = and i64 %i.ds, -8
  %i.du = add i64 %i.dt, 8                        ; 2 uses
  %scevgep1266 = getelementptr i8, ptr %i.dm, i64 %i.du
  %scevgep1267 = getelementptr i8, ptr %i.db, i64 %i.du
  %bound01268 = icmp ult ptr %i.dm, %scevgep1267
  %bound11269 = icmp ult ptr %i.db, %scevgep1266
  %found.conflict1270 = and i1 %bound01268, %bound11269
  br i1 %found.conflict1270, label %.lr.ph.i.i.i.i.i.i.i.preheader1297, label %vector.ph1273

vector.ph1273:                                    ; preds = %vector.memcheck1265
  %n.vec1275 = and i64 %i.dq, 4611686018427387900 ; 3 uses
  %i.dv = shl i64 %n.vec1275, 3                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %i.db, i64 %i.dv
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1273
  %index1277 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1282, %vector.body1276 ] ; 2 uses
  %i.dy = shl i64 %index1277, 3                   ; 2 uses
  %next.gep1278 = getelementptr i8, ptr %i.dm, i64 %i.dy ; 2 uses
  %next.gep1279 = getelementptr i8, ptr %i.db, i64 %i.dy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.dz = getelementptr i8, ptr %next.gep1279, i64 16
  %wide.load1280 = load <2 x i64>, ptr %next.gep1279, align 8, !tbaa !231, !alias.scope !345, !noalias !340
  %wide.load1281 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !231, !alias.scope !345, !noalias !340
  %i.ea = getelementptr i8, ptr %next.gep1278, i64 16
  store <2 x i64> %wide.load1280, ptr %next.gep1278, align 8, !tbaa !231, !alias.scope !348, !noalias !345
  store <2 x i64> %wide.load1281, ptr %i.ea, align 8, !tbaa !231, !alias.scope !348, !noalias !345
  %i.eb = getelementptr i8, ptr %next.gep1279, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1279, align 8, !tbaa !231, !alias.scope !345, !noalias !340
  store <2 x ptr> splat (ptr null), ptr %i.eb, align 8, !tbaa !231, !alias.scope !345, !noalias !340
  %index.next1282 = add nuw i64 %index1277, 4     ; 2 uses
  %i.ec = icmp eq i64 %index.next1282, %n.vec1275
  br i1 %i.ec, label %middle.block1283, label %vector.body1276, !llvm.loop !350

middle.block1283:                                 ; preds = %vector.body1276
  %cmp.n1284 = icmp eq i64 %i.dq, %n.vec1275
  br i1 %cmp.n1284, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1297

.lr.ph.i.i.i.i.i.i.i.preheader1297:               ; preds = %vector.memcheck1265, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1283
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dm, %vector.memcheck1265 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dw, %middle.block1283 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.db, %vector.memcheck1265 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dx, %middle.block1283 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1297, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1297 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1297 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.ed = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !343, !noalias !340
  store i64 %i.ed, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !340, !noalias !343
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !343, !noalias !340
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ee, %i.cw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !351

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1283, %.noexc307
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.noexc307 ], [ %i.dw, %middle.block1283 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.db) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dm, ptr %i.bi, align 8, !tbaa !258
  store ptr %i.eg, ptr %i.cv, align 8, !tbaa !254
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.eh, ptr %i.cx, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aq, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !231
  store ptr %i.ej, ptr %1, align 8, !tbaa !274
  %i.ek = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.au
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.ek) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.in

bb.av:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit311: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.as
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #36
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit311, %bb.aw
  %.pn289 = phi { ptr, i32 } [ %i.eo, %bb.aw ], [ %i.en, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit311 ], [ %i.em, %bb.av ]
  %i.ep = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.au
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.ep) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.d
  store ptr @.str.23, ptr %1, align 8, !tbaa !274
  br label %bb.in

bb.az:                                            ; preds = %bb.d
  store ptr @.str.24, ptr %1, align 8, !tbaa !274
  br label %bb.in

bb.ba:                                            ; preds = %bb.d
  store ptr @.str.25, ptr %1, align 8, !tbaa !274
  br label %bb.in

bb.bb:                                            ; preds = %bb.d
  store ptr @.str.26, ptr %1, align 8, !tbaa !274
  br label %bb.in

bb.bc:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.es = load i8, ptr %i.er, align 4, !tbaa !352
  %i.et = icmp ult i8 %i.es, 15
  br i1 %i.et, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !107
  switch i8 %i.ev, label %bb.bg [
    i8 5, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
    i8 7, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
    i8 9, label %bb.be
    i8 -52, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.bf:                                            ; preds = %bb.bd
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.bg:                                            ; preds = %bb.bd
  %i.ew = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.io unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread: ; preds = %bb.bg
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0246 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ez = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_3
begin_hunk_4_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  %i.nz = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.gm
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  call void @_ZdlPv(ptr noundef %i.nz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  %i.ob = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.fj
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  call void @_ZdlPv(ptr noundef %i.ob) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !18, !noalias !377 ; 13 uses
  %i.og = add i64 %i.of, 1                        ; 2 uses
  %i.oh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.og) #35
          to label %.noexc404 unwind label %bb.cz ; 13 uses

.noexc404:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.oh, i8 0, i64 %i.og, i1 false), !noalias !380
  %.not.i400 = icmp eq i64 %i.of, 0
  br i1 %.not.i400, label %.loopexit749, label %iter.check1198

iter.check1198:                                   ; preds = %.noexc404
  %i.oi = ptrtoaddr ptr %i.oh to i64
  %i.oj = load ptr, ptr %8, align 8, !tbaa !15, !noalias !377 ; 8 uses
  %min.iters.check1184 = icmp ult i64 %i.of, 4
  %i.ok = ptrtoaddr ptr %i.oj to i64
  %i.ol = sub i64 %i.oi, %i.ok
  %diff.check1182 = icmp ult i64 %i.ol, 32
  %or.cond1290 = select i1 %min.iters.check1184, i1 true, i1 %diff.check1182
  br i1 %or.cond1290, label %vec.epilog.scalar.ph1199.preheader, label %vector.main.loop.iter.check1185

vector.main.loop.iter.check1185:                  ; preds = %iter.check1198
  %min.iters.check1186 = icmp ult i64 %i.of, 32
  br i1 %min.iters.check1186, label %vec.epilog.ph1202, label %vector.ph1187

vector.ph1187:                                    ; preds = %vector.main.loop.iter.check1185
  %n.mod.vf1188 = and i64 %i.of, 28
  %n.vec1189 = and i64 %i.of, -32                 ; 4 uses
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1187
  %index1191 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1194, %vector.body1190 ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index1191 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load1192 = load <16 x i8>, ptr %i.om, align 1, !tbaa !20, !noalias !377
  %wide.load1193 = load <16 x i8>, ptr %i.on, align 1, !tbaa !20, !noalias !377
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 %index1191 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store <16 x i8> %wide.load1192, ptr %i.oo, align 1, !tbaa !20, !noalias !377
  store <16 x i8> %wide.load1193, ptr %i.op, align 1, !tbaa !20, !noalias !377
  %index.next1194 = add nuw i64 %index1191, 32    ; 2 uses
  %i.oq = icmp eq i64 %index.next1194, %n.vec1189
  br i1 %i.oq, label %middle.block1195, label %vector.body1190, !llvm.loop !383

middle.block1195:                                 ; preds = %vector.body1190
  %cmp.n1196 = icmp eq i64 %i.of, %n.vec1189
  br i1 %cmp.n1196, label %.loopexit749, label %vec.epilog.iter.check1200

vec.epilog.iter.check1200:                        ; preds = %middle.block1195
  %min.epilog.iters.check1201 = icmp eq i64 %n.mod.vf1188, 0
  br i1 %min.epilog.iters.check1201, label %vec.epilog.scalar.ph1199.preheader, label %vec.epilog.ph1202, !prof !233

vec.epilog.ph1202:                                ; preds = %vector.main.loop.iter.check1185, %vec.epilog.iter.check1200
  %vec.epilog.resume.val1197 = phi i64 [ %n.vec1189, %vec.epilog.iter.check1200 ], [ 0, %vector.main.loop.iter.check1185 ]
  %n.vec1204 = and i64 %i.of, -4                  ; 3 uses
  br label %vec.epilog.vector.body1205

vec.epilog.vector.body1205:                       ; preds = %vec.epilog.vector.body1205, %vec.epilog.ph1202
  %index1206 = phi i64 [ %vec.epilog.resume.val1197, %vec.epilog.ph1202 ], [ %index.next1208, %vec.epilog.vector.body1205 ] ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index1206
  %wide.load1207 = load <4 x i8>, ptr %i.or, align 1, !tbaa !20, !noalias !377
  %i.os = getelementptr inbounds nuw i8, ptr %i.oh, i64 %index1206
  store <4 x i8> %wide.load1207, ptr %i.os, align 1, !tbaa !20, !noalias !377
  %index.next1208 = add nuw i64 %index1206, 4     ; 2 uses
  %i.ot = icmp eq i64 %index.next1208, %n.vec1204
  br i1 %i.ot, label %vec.epilog.middle.block1209, label %vec.epilog.vector.body1205, !llvm.loop !384

vec.epilog.middle.block1209:                      ; preds = %vec.epilog.vector.body1205
  %cmp.n1210 = icmp eq i64 %i.of, %n.vec1204
  br i1 %cmp.n1210, label %.loopexit749, label %vec.epilog.scalar.ph1199.preheader

vec.epilog.scalar.ph1199.preheader:               ; preds = %iter.check1198, %vec.epilog.iter.check1200, %vec.epilog.middle.block1209
  %.08.i402.ph = phi i64 [ 0, %iter.check1198 ], [ %n.vec1189, %vec.epilog.iter.check1200 ], [ %n.vec1204, %vec.epilog.middle.block1209 ] ; 3 uses
  %xtraiter1331 = and i64 %i.of, 3                ; 2 uses
  %lcmp.mod1332.not = icmp eq i64 %xtraiter1331, 0
  br i1 %lcmp.mod1332.not, label %vec.epilog.scalar.ph1199.prol.loopexit, label %vec.epilog.scalar.ph1199.prol

vec.epilog.scalar.ph1199.prol:                    ; preds = %vec.epilog.scalar.ph1199.preheader, %vec.epilog.scalar.ph1199.prol
  %.08.i402.prol = phi i64 [ %i.ox, %vec.epilog.scalar.ph1199.prol ], [ %.08.i402.ph, %vec.epilog.scalar.ph1199.preheader ] ; 3 uses
  %prol.iter1333 = phi i64 [ %prol.iter1333.next, %vec.epilog.scalar.ph1199.prol ], [ 0, %vec.epilog.scalar.ph1199.preheader ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.08.i402.prol
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !20, !noalias !377
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.08.i402.prol
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !20, !noalias !377
  %i.ox = add nuw i64 %.08.i402.prol, 1           ; 2 uses
  %prol.iter1333.next = add i64 %prol.iter1333, 1 ; 2 uses
  %prol.iter1333.cmp.not = icmp eq i64 %prol.iter1333.next, %xtraiter1331
  br i1 %prol.iter1333.cmp.not, label %vec.epilog.scalar.ph1199.prol.loopexit, label %vec.epilog.scalar.ph1199.prol, !llvm.loop !385

vec.epilog.scalar.ph1199.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1199.prol, %vec.epilog.scalar.ph1199.preheader
  %.08.i402.unr = phi i64 [ %.08.i402.ph, %vec.epilog.scalar.ph1199.preheader ], [ %i.ox, %vec.epilog.scalar.ph1199.prol ]
  %i.oy = sub i64 %.08.i402.ph, %i.of
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.loopexit749, label %vec.epilog.scalar.ph1199

vec.epilog.scalar.ph1199:                         ; preds = %vec.epilog.scalar.ph1199.prol.loopexit, %vec.epilog.scalar.ph1199
  %.08.i402 = phi i64 [ %i.pp, %vec.epilog.scalar.ph1199 ], [ %.08.i402.unr, %vec.epilog.scalar.ph1199.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.08.i402
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !20, !noalias !377
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.08.i402
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !20, !noalias !377
  %i.pd = add nuw i64 %.08.i402, 1                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !20, !noalias !377
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.pd
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !20, !noalias !377
  %i.ph = add nuw i64 %.08.i402, 2                ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !20, !noalias !377
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ph
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !20, !noalias !377
  %i.pl = add nuw i64 %.08.i402, 3                ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !20, !noalias !377
  %i.po = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.pl
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !20, !noalias !377
  %i.pp = add nuw i64 %.08.i402, 4                ; 2 uses
  %exitcond.not.i403.3 = icmp eq i64 %i.pp, %i.of
  br i1 %exitcond.not.i403.3, label %.loopexit749, label %vec.epilog.scalar.ph1199, !llvm.loop !386

.loopexit749:                                     ; preds = %vec.epilog.scalar.ph1199.prol.loopexit, %vec.epilog.scalar.ph1199, %middle.block1195, %vec.epilog.middle.block1209, %.noexc404
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.of
  store i8 0, ptr %i.pq, align 1, !tbaa !20, !noalias !377
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !254 ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !257
  %.not.i.i406 = icmp eq ptr %i.ps, %i.pu
  br i1 %.not.i.i406, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.loopexit749
  %i.pv = ptrtoint ptr %i.oh to i64
  store i64 %i.pv, ptr %i.ps, align 8, !tbaa !231
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store ptr %i.pw, ptr %i.pr, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit424

bb.cq:                                            ; preds = %.loopexit749
  %i.px = load ptr, ptr %i.od, align 8, !tbaa !258 ; 10 uses
  %i.py = ptrtoint ptr %i.ps to i64               ; 3 uses
  %i.pz = ptrtoint ptr %i.px to i64               ; 3 uses
  %i.qa = sub i64 %i.py, %i.pz                    ; 3 uses
  %i.qb = icmp eq i64 %i.qa, 9223372036854775800
  br i1 %i.qb, label %bb.cr, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i407

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc419 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit451

.noexc419:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i407: ; preds = %bb.cq
  %i.qc = ashr exact i64 %i.qa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i408 = call i64 @llvm.umax.i64(i64 %i.qc, i64 1)
  %i.qd = add nsw i64 %.sroa.speculated.i.i.i.i408, %i.qc ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %i.qc
  %i.qf = call i64 @llvm.umin.i64(i64 %i.qd, i64 1152921504606846975)
  %i.qg = select i1 %i.qe, i64 1152921504606846975, i64 %i.qf ; 3 uses
  %.not.i.i.i.i409 = icmp ne i64 %i.qg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i409)
  %i.qh = shl nuw nsw i64 %i.qg, 3
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qh) #35
          to label %.noexc420 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit451 ; 10 uses

.noexc420:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i407
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qa
  %i.qk = ptrtoint ptr %i.oh to i64
  store i64 %i.qk, ptr %i.qj, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i410 = icmp eq ptr %i.px, %i.ps
  br i1 %.not10.i.i.i.i.i.i.i410, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i415, label %.lr.ph.i.i.i.i.i.i.i411.preheader

.lr.ph.i.i.i.i.i.i.i411.preheader:                ; preds = %.noexc420
  %33 = add i64 %i.py, -8
  %34 = sub i64 %33, %i.pz                        ; 2 uses
  %i.ql = lshr i64 %34, 3
  %i.qm = add nuw nsw i64 %i.ql, 1                ; 2 uses
  %min.iters.check1219 = icmp ult i64 %34, 152
  br i1 %min.iters.check1219, label %.lr.ph.i.i.i.i.i.i.i411.preheader1298, label %vector.memcheck1212

vector.memcheck1212:                              ; preds = %.lr.ph.i.i.i.i.i.i.i411.preheader
  %i.qn = add i64 %i.py, -8
  %i.qo = sub i64 %i.qn, %i.pz
  %i.qp = and i64 %i.qo, -8
  %i.qq = add i64 %i.qp, 8                        ; 2 uses
  %scevgep1213 = getelementptr i8, ptr %i.qi, i64 %i.qq
  %scevgep1214 = getelementptr i8, ptr %i.px, i64 %i.qq
  %bound01215 = icmp ult ptr %i.qi, %scevgep1214
  %bound11216 = icmp ult ptr %i.px, %scevgep1213
  %found.conflict1217 = and i1 %bound01215, %bound11216
  br i1 %found.conflict1217, label %.lr.ph.i.i.i.i.i.i.i411.preheader1298, label %vector.ph1220

vector.ph1220:                                    ; preds = %vector.memcheck1212
  %n.vec1222 = and i64 %i.qm, 4611686018427387900 ; 3 uses
  %i.qr = shl i64 %n.vec1222, 3                   ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qi, i64 %i.qr  ; 2 uses
  %i.qt = getelementptr i8, ptr %i.px, i64 %i.qr
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1220
  %index1224 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1229, %vector.body1223 ] ; 2 uses
  %i.qu = shl i64 %index1224, 3                   ; 2 uses
  %next.gep1225 = getelementptr i8, ptr %i.qi, i64 %i.qu ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.px, i64 %i.qu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.qv = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <2 x i64>, ptr %next.gep1226, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %wide.load1228 = load <2 x i64>, ptr %i.qv, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %i.qw = getelementptr i8, ptr %next.gep1225, i64 16
  store <2 x i64> %wide.load1227, ptr %next.gep1225, align 8, !tbaa !231, !alias.scope !395, !noalias !392
  store <2 x i64> %wide.load1228, ptr %i.qw, align 8, !tbaa !231, !alias.scope !395, !noalias !392
  %i.qx = getelementptr i8, ptr %next.gep1226, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1226, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  store <2 x ptr> splat (ptr null), ptr %i.qx, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %index.next1229 = add nuw i64 %index1224, 4     ; 2 uses
  %i.qy = icmp eq i64 %index.next1229, %n.vec1222
  br i1 %i.qy, label %middle.block1230, label %vector.body1223, !llvm.loop !397

middle.block1230:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %i.qm, %n.vec1222
  br i1 %cmp.n1231, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i415, label %.lr.ph.i.i.i.i.i.i.i411.preheader1298

.lr.ph.i.i.i.i.i.i.i411.preheader1298:            ; preds = %vector.memcheck1212, %.lr.ph.i.i.i.i.i.i.i411.preheader, %middle.block1230
  %.012.i.i.i.i.i.i.i412.ph = phi ptr [ %i.qi, %vector.memcheck1212 ], [ %i.qi, %.lr.ph.i.i.i.i.i.i.i411.preheader ], [ %i.qs, %middle.block1230 ]
  %.0911.i.i.i.i.i.i.i413.ph = phi ptr [ %i.px, %vector.memcheck1212 ], [ %i.px, %.lr.ph.i.i.i.i.i.i.i411.preheader ], [ %i.qt, %middle.block1230 ]
  br label %.lr.ph.i.i.i.i.i.i.i411

.lr.ph.i.i.i.i.i.i.i411:                          ; preds = %.lr.ph.i.i.i.i.i.i.i411.preheader1298, %.lr.ph.i.i.i.i.i.i.i411
  %.012.i.i.i.i.i.i.i412 = phi ptr [ %i.rb, %.lr.ph.i.i.i.i.i.i.i411 ], [ %.012.i.i.i.i.i.i.i412.ph, %.lr.ph.i.i.i.i.i.i.i411.preheader1298 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i413 = phi ptr [ %i.ra, %.lr.ph.i.i.i.i.i.i.i411 ], [ %.0911.i.i.i.i.i.i.i413.ph, %.lr.ph.i.i.i.i.i.i.i411.preheader1298 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.qz = load i64, ptr %.0911.i.i.i.i.i.i.i413, align 8, !tbaa !231, !alias.scope !390, !noalias !387
  store i64 %i.qz, ptr %.012.i.i.i.i.i.i.i412, align 8, !tbaa !231, !alias.scope !387, !noalias !390
  store ptr null, ptr %.0911.i.i.i.i.i.i.i413, align 8, !tbaa !231, !alias.scope !390, !noalias !387
  %i.ra = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i413, i64 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i412, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i414 = icmp eq ptr %i.ra, %i.ps
  br i1 %.not.i.i.i.i.i.i.i414, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i415, label %.lr.ph.i.i.i.i.i.i.i411, !llvm.loop !398

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i415: ; preds = %.lr.ph.i.i.i.i.i.i.i411, %middle.block1230, %.noexc420
  %.0.lcssa.i.i.i.i.i.i.i416 = phi ptr [ %i.qi, %.noexc420 ], [ %i.qs, %middle.block1230 ], [ %i.rb, %.lr.ph.i.i.i.i.i.i.i411 ]
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i416, i64 8
  %.not.i23.i.i.i417 = icmp eq ptr %i.px, null
  br i1 %.not.i23.i.i.i417, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i418, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i415
  call void @_ZdlPv(ptr noundef nonnull %i.px) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i418

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i418: ; preds = %bb.cs, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i415
  store ptr %i.qi, ptr %i.od, align 8, !tbaa !258
  store ptr %i.rc, ptr %i.pr, align 8, !tbaa !254
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qg
  store ptr %i.rd, ptr %i.pt, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit424

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit424: ; preds = %bb.cp, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i418
  %i.re = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.od)
          to label %bb.ct unwind label %bb.da

bb.ct:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit424
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !231
  store ptr %i.rf, ptr %1, align 8, !tbaa !274
  %i.rg = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %bb.ct
  call void @_ZdlPv(ptr noundef %i.rg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.in

bb.cu:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.br
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.cc, %.critedge.i
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i344, %bb.ce
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i367, %bb.cn, %.critedge.i372
  %i.rn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ro = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.lc
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %bb.cy
  call void @_ZdlPv(ptr noundef %i.ro) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.rq = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.kq
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  call void @_ZdlPv(ptr noundef %i.rq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431, %bb.cx
  %.pn276 = phi { ptr, i32 } [ %i.rm, %bb.cx ], [ %i.rn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431 ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ] ; 2 uses
  %i.rs = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433
  call void @_ZdlPv(ptr noundef %i.rs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434, %bb.cw
  %.pn276.pn = phi { ptr, i32 } [ %i.rl, %bb.cw ], [ %.pn276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434 ], [ %.pn276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433 ] ; 2 uses
  %i.rv = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.hs
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  call void @_ZdlPv(ptr noundef %i.rv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.rx = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.hb
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  call void @_ZdlPv(ptr noundef %i.rx) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440, %bb.cv
  %.pn276.pn.pn = phi { ptr, i32 } [ %i.rk, %bb.cv ], [ %.pn276.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ], [ %.pn276.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ] ; 2 uses
  %i.rz = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.gm
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  call void @_ZdlPv(ptr noundef %i.rz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443, %bb.cu
  %.pn276.pn.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.cu ], [ %.pn276.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443 ], [ %.pn276.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442 ]
  %i.sb = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.fj
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  call void @_ZdlPv(ptr noundef %i.sb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
end_hunk_4
begin_hunk_5_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %.noexc479
  store ptr %i.xu, ptr %17, align 8, !tbaa !15, !alias.scope !406
  %i.yb = load i64, ptr %i.xv, align 8, !tbaa !20
  store i64 %i.yb, ptr %i.xt, align 8, !tbaa !20, !alias.scope !406
  %.phi.trans.insert.i476 = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %.pre.i477 = load i64, ptr %.phi.trans.insert.i476, align 8, !tbaa !18
  br label %bb.em

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475, %bb.el
  %i.yc = phi i64 [ %i.xy, %bb.el ], [ %.pre.i477, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475 ]
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.yc, ptr %i.ye, align 8, !tbaa !18, !alias.scope !406
  store ptr %i.xv, ptr %i.xs, align 8, !tbaa !15
  store i64 0, ptr %i.yd, align 8, !tbaa !18
  store i8 0, ptr %i.xv, align 8, !tbaa !20
  %i.yf = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.wo
  br i1 %i.yg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.em
  call void @_ZdlPv(ptr noundef %i.yf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.yi = load i64, ptr %i.ye, align 8, !tbaa !18, !noalias !409 ; 13 uses
  %i.yj = add i64 %i.yi, 1                        ; 2 uses
  %i.yk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yj) #35
          to label %.noexc488 unwind label %bb.fh ; 13 uses

.noexc488:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yk, i8 0, i64 %i.yj, i1 false), !noalias !412
  %.not.i484 = icmp eq i64 %i.yi, 0
  br i1 %.not.i484, label %.loopexit750, label %iter.check1145

iter.check1145:                                   ; preds = %.noexc488
  %i.yl = ptrtoaddr ptr %i.yk to i64
  %i.ym = load ptr, ptr %17, align 8, !tbaa !15, !noalias !409 ; 8 uses
  %min.iters.check1131 = icmp ult i64 %i.yi, 4
  %i.yn = ptrtoaddr ptr %i.ym to i64
  %i.yo = sub i64 %i.yl, %i.yn
  %diff.check1129 = icmp ult i64 %i.yo, 32
  %or.cond1292 = select i1 %min.iters.check1131, i1 true, i1 %diff.check1129
  br i1 %or.cond1292, label %vec.epilog.scalar.ph1146.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %iter.check1145
  %min.iters.check1133 = icmp ult i64 %i.yi, 32
  br i1 %min.iters.check1133, label %vec.epilog.ph1149, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %n.mod.vf1135 = and i64 %i.yi, 28
  %n.vec1136 = and i64 %i.yi, -32                 ; 4 uses
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1134
  %index1138 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1141, %vector.body1137 ] ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 %index1138 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %wide.load1139 = load <16 x i8>, ptr %i.yp, align 1, !tbaa !20, !noalias !409
  %wide.load1140 = load <16 x i8>, ptr %i.yq, align 1, !tbaa !20, !noalias !409
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yk, i64 %index1138 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  store <16 x i8> %wide.load1139, ptr %i.yr, align 1, !tbaa !20, !noalias !409
  store <16 x i8> %wide.load1140, ptr %i.ys, align 1, !tbaa !20, !noalias !409
  %index.next1141 = add nuw i64 %index1138, 32    ; 2 uses
  %i.yt = icmp eq i64 %index.next1141, %n.vec1136
  br i1 %i.yt, label %middle.block1142, label %vector.body1137, !llvm.loop !415

middle.block1142:                                 ; preds = %vector.body1137
  %cmp.n1143 = icmp eq i64 %i.yi, %n.vec1136
  br i1 %cmp.n1143, label %.loopexit750, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1142
  %min.epilog.iters.check1148 = icmp eq i64 %n.mod.vf1135, 0
  br i1 %min.epilog.iters.check1148, label %vec.epilog.scalar.ph1146.preheader, label %vec.epilog.ph1149, !prof !233

vec.epilog.ph1149:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1147
  %vec.epilog.resume.val1144 = phi i64 [ %n.vec1136, %vec.epilog.iter.check1147 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1151 = and i64 %i.yi, -4                  ; 3 uses
  br label %vec.epilog.vector.body1152

vec.epilog.vector.body1152:                       ; preds = %vec.epilog.vector.body1152, %vec.epilog.ph1149
  %index1153 = phi i64 [ %vec.epilog.resume.val1144, %vec.epilog.ph1149 ], [ %index.next1155, %vec.epilog.vector.body1152 ] ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ym, i64 %index1153
  %wide.load1154 = load <4 x i8>, ptr %i.yu, align 1, !tbaa !20, !noalias !409
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yk, i64 %index1153
  store <4 x i8> %wide.load1154, ptr %i.yv, align 1, !tbaa !20, !noalias !409
  %index.next1155 = add nuw i64 %index1153, 4     ; 2 uses
  %i.yw = icmp eq i64 %index.next1155, %n.vec1151
  br i1 %i.yw, label %vec.epilog.middle.block1156, label %vec.epilog.vector.body1152, !llvm.loop !416

vec.epilog.middle.block1156:                      ; preds = %vec.epilog.vector.body1152
  %cmp.n1157 = icmp eq i64 %i.yi, %n.vec1151
  br i1 %cmp.n1157, label %.loopexit750, label %vec.epilog.scalar.ph1146.preheader

vec.epilog.scalar.ph1146.preheader:               ; preds = %iter.check1145, %vec.epilog.iter.check1147, %vec.epilog.middle.block1156
  %.08.i486.ph = phi i64 [ 0, %iter.check1145 ], [ %n.vec1136, %vec.epilog.iter.check1147 ], [ %n.vec1151, %vec.epilog.middle.block1156 ] ; 3 uses
  %xtraiter1328 = and i64 %i.yi, 3                ; 2 uses
  %lcmp.mod1329.not = icmp eq i64 %xtraiter1328, 0
  br i1 %lcmp.mod1329.not, label %vec.epilog.scalar.ph1146.prol.loopexit, label %vec.epilog.scalar.ph1146.prol

vec.epilog.scalar.ph1146.prol:                    ; preds = %vec.epilog.scalar.ph1146.preheader, %vec.epilog.scalar.ph1146.prol
  %.08.i486.prol = phi i64 [ %i.za, %vec.epilog.scalar.ph1146.prol ], [ %.08.i486.ph, %vec.epilog.scalar.ph1146.preheader ] ; 3 uses
  %prol.iter1330 = phi i64 [ %prol.iter1330.next, %vec.epilog.scalar.ph1146.prol ], [ 0, %vec.epilog.scalar.ph1146.preheader ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.08.i486.prol
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !20, !noalias !409
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.08.i486.prol
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !20, !noalias !409
  %i.za = add nuw i64 %.08.i486.prol, 1           ; 2 uses
  %prol.iter1330.next = add i64 %prol.iter1330, 1 ; 2 uses
  %prol.iter1330.cmp.not = icmp eq i64 %prol.iter1330.next, %xtraiter1328
  br i1 %prol.iter1330.cmp.not, label %vec.epilog.scalar.ph1146.prol.loopexit, label %vec.epilog.scalar.ph1146.prol, !llvm.loop !417

vec.epilog.scalar.ph1146.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1146.prol, %vec.epilog.scalar.ph1146.preheader
  %.08.i486.unr = phi i64 [ %.08.i486.ph, %vec.epilog.scalar.ph1146.preheader ], [ %i.za, %vec.epilog.scalar.ph1146.prol ]
  %i.zb = sub i64 %.08.i486.ph, %i.yi
  %i.zc = icmp ugt i64 %i.zb, -4
  br i1 %i.zc, label %.loopexit750, label %vec.epilog.scalar.ph1146

vec.epilog.scalar.ph1146:                         ; preds = %vec.epilog.scalar.ph1146.prol.loopexit, %vec.epilog.scalar.ph1146
  %.08.i486 = phi i64 [ %i.zs, %vec.epilog.scalar.ph1146 ], [ %.08.i486.unr, %vec.epilog.scalar.ph1146.prol.loopexit ] ; 6 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.08.i486
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !20, !noalias !409
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.08.i486
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !20, !noalias !409
  %i.zg = add nuw i64 %.08.i486, 1                ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !20, !noalias !409
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.zg
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !20, !noalias !409
  %i.zk = add nuw i64 %.08.i486, 2                ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !20, !noalias !409
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.zk
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !20, !noalias !409
  %i.zo = add nuw i64 %.08.i486, 3                ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !20, !noalias !409
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.zo
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !20, !noalias !409
  %i.zs = add nuw i64 %.08.i486, 4                ; 2 uses
  %exitcond.not.i487.3 = icmp eq i64 %i.zs, %i.yi
  br i1 %exitcond.not.i487.3, label %.loopexit750, label %vec.epilog.scalar.ph1146, !llvm.loop !418

.loopexit750:                                     ; preds = %vec.epilog.scalar.ph1146.prol.loopexit, %vec.epilog.scalar.ph1146, %middle.block1142, %vec.epilog.middle.block1156, %.noexc488
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yi
  store i8 0, ptr %i.zt, align 1, !tbaa !20, !noalias !409
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !254 ; 6 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !257
  %.not.i.i490 = icmp eq ptr %i.zv, %i.zx
  br i1 %.not.i.i490, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.loopexit750
  %i.zy = ptrtoint ptr %i.yk to i64
  store i64 %i.zy, ptr %i.zv, align 8, !tbaa !231
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  store ptr %i.zz, ptr %i.zu, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit508

bb.eo:                                            ; preds = %.loopexit750
  %i.aaa = load ptr, ptr %i.yh, align 8, !tbaa !258 ; 10 uses
  %i.aab = ptrtoint ptr %i.zv to i64              ; 3 uses
  %i.aac = ptrtoint ptr %i.aaa to i64             ; 3 uses
  %i.aad = sub i64 %i.aab, %i.aac                 ; 3 uses
  %i.aae = icmp eq i64 %i.aad, 9223372036854775800
  br i1 %i.aae, label %bb.ep, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i491

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc503 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit540

.noexc503:                                        ; preds = %bb.ep
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i491: ; preds = %bb.eo
  %i.aaf = ashr exact i64 %i.aad, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i492 = call i64 @llvm.umax.i64(i64 %i.aaf, i64 1)
  %i.aag = add nsw i64 %.sroa.speculated.i.i.i.i492, %i.aaf ; 2 uses
  %i.aah = icmp ult i64 %i.aag, %i.aaf
  %i.aai = call i64 @llvm.umin.i64(i64 %i.aag, i64 1152921504606846975)
  %i.aaj = select i1 %i.aah, i64 1152921504606846975, i64 %i.aai ; 3 uses
  %.not.i.i.i.i493 = icmp ne i64 %i.aaj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i493)
  %i.aak = shl nuw nsw i64 %i.aaj, 3
  %i.aal = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aak) #35
          to label %.noexc504 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit540 ; 10 uses

.noexc504:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i491
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aad
  %i.aan = ptrtoint ptr %i.yk to i64
  store i64 %i.aan, ptr %i.aam, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i494 = icmp eq ptr %i.aaa, %i.zv
  br i1 %.not10.i.i.i.i.i.i.i494, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i499, label %.lr.ph.i.i.i.i.i.i.i495.preheader

.lr.ph.i.i.i.i.i.i.i495.preheader:                ; preds = %.noexc504
  %35 = add i64 %i.aab, -8
  %36 = sub i64 %35, %i.aac                       ; 2 uses
  %i.aao = lshr i64 %36, 3
  %i.aap = add nuw nsw i64 %i.aao, 1              ; 2 uses
  %min.iters.check1166 = icmp ult i64 %36, 152
  br i1 %min.iters.check1166, label %.lr.ph.i.i.i.i.i.i.i495.preheader1300, label %vector.memcheck1159

vector.memcheck1159:                              ; preds = %.lr.ph.i.i.i.i.i.i.i495.preheader
  %i.aaq = add i64 %i.aab, -8
  %i.aar = sub i64 %i.aaq, %i.aac
  %i.aas = and i64 %i.aar, -8
  %i.aat = add i64 %i.aas, 8                      ; 2 uses
  %scevgep1160 = getelementptr i8, ptr %i.aal, i64 %i.aat
  %scevgep1161 = getelementptr i8, ptr %i.aaa, i64 %i.aat
  %bound01162 = icmp ult ptr %i.aal, %scevgep1161
  %bound11163 = icmp ult ptr %i.aaa, %scevgep1160
  %found.conflict1164 = and i1 %bound01162, %bound11163
  br i1 %found.conflict1164, label %.lr.ph.i.i.i.i.i.i.i495.preheader1300, label %vector.ph1167

vector.ph1167:                                    ; preds = %vector.memcheck1159
  %n.vec1169 = and i64 %i.aap, 4611686018427387900 ; 3 uses
  %i.aau = shl i64 %n.vec1169, 3                  ; 2 uses
  %i.aav = getelementptr i8, ptr %i.aal, i64 %i.aau ; 2 uses
  %i.aaw = getelementptr i8, ptr %i.aaa, i64 %i.aau
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %vector.ph1167
  %index1171 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1176, %vector.body1170 ] ; 2 uses
  %i.aax = shl i64 %index1171, 3                  ; 2 uses
  %next.gep1172 = getelementptr i8, ptr %i.aal, i64 %i.aax ; 2 uses
  %next.gep1173 = getelementptr i8, ptr %i.aaa, i64 %i.aax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.aay = getelementptr i8, ptr %next.gep1173, i64 16
  %wide.load1174 = load <2 x i64>, ptr %next.gep1173, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %wide.load1175 = load <2 x i64>, ptr %i.aay, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %i.aaz = getelementptr i8, ptr %next.gep1172, i64 16
  store <2 x i64> %wide.load1174, ptr %next.gep1172, align 8, !tbaa !231, !alias.scope !427, !noalias !424
  store <2 x i64> %wide.load1175, ptr %i.aaz, align 8, !tbaa !231, !alias.scope !427, !noalias !424
  %i.aba = getelementptr i8, ptr %next.gep1173, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1173, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  store <2 x ptr> splat (ptr null), ptr %i.aba, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %index.next1176 = add nuw i64 %index1171, 4     ; 2 uses
  %i.abb = icmp eq i64 %index.next1176, %n.vec1169
  br i1 %i.abb, label %middle.block1177, label %vector.body1170, !llvm.loop !429

middle.block1177:                                 ; preds = %vector.body1170
  %cmp.n1178 = icmp eq i64 %i.aap, %n.vec1169
  br i1 %cmp.n1178, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i499, label %.lr.ph.i.i.i.i.i.i.i495.preheader1300

.lr.ph.i.i.i.i.i.i.i495.preheader1300:            ; preds = %vector.memcheck1159, %.lr.ph.i.i.i.i.i.i.i495.preheader, %middle.block1177
  %.012.i.i.i.i.i.i.i496.ph = phi ptr [ %i.aal, %vector.memcheck1159 ], [ %i.aal, %.lr.ph.i.i.i.i.i.i.i495.preheader ], [ %i.aav, %middle.block1177 ]
  %.0911.i.i.i.i.i.i.i497.ph = phi ptr [ %i.aaa, %vector.memcheck1159 ], [ %i.aaa, %.lr.ph.i.i.i.i.i.i.i495.preheader ], [ %i.aaw, %middle.block1177 ]
  br label %.lr.ph.i.i.i.i.i.i.i495

.lr.ph.i.i.i.i.i.i.i495:                          ; preds = %.lr.ph.i.i.i.i.i.i.i495.preheader1300, %.lr.ph.i.i.i.i.i.i.i495
  %.012.i.i.i.i.i.i.i496 = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i.i.i495 ], [ %.012.i.i.i.i.i.i.i496.ph, %.lr.ph.i.i.i.i.i.i.i495.preheader1300 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i497 = phi ptr [ %i.abd, %.lr.ph.i.i.i.i.i.i.i495 ], [ %.0911.i.i.i.i.i.i.i497.ph, %.lr.ph.i.i.i.i.i.i.i495.preheader1300 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.abc = load i64, ptr %.0911.i.i.i.i.i.i.i497, align 8, !tbaa !231, !alias.scope !422, !noalias !419
  store i64 %i.abc, ptr %.012.i.i.i.i.i.i.i496, align 8, !tbaa !231, !alias.scope !419, !noalias !422
  store ptr null, ptr %.0911.i.i.i.i.i.i.i497, align 8, !tbaa !231, !alias.scope !422, !noalias !419
  %i.abd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i497, i64 8 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i496, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i498 = icmp eq ptr %i.abd, %i.zv
  br i1 %.not.i.i.i.i.i.i.i498, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i499, label %.lr.ph.i.i.i.i.i.i.i495, !llvm.loop !430

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i499: ; preds = %.lr.ph.i.i.i.i.i.i.i495, %middle.block1177, %.noexc504
  %.0.lcssa.i.i.i.i.i.i.i500 = phi ptr [ %i.aal, %.noexc504 ], [ %i.aav, %middle.block1177 ], [ %i.abe, %.lr.ph.i.i.i.i.i.i.i495 ]
  %i.abf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i500, i64 8
  %.not.i23.i.i.i501 = icmp eq ptr %i.aaa, null
  br i1 %.not.i23.i.i.i501, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i502, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i499
  call void @_ZdlPv(ptr noundef nonnull %i.aaa) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i502

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i502: ; preds = %bb.eq, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i499
  store ptr %i.aal, ptr %i.yh, align 8, !tbaa !258
  store ptr %i.abf, ptr %i.zu, align 8, !tbaa !254
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %i.aaj
  store ptr %i.abg, ptr %i.zw, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit508

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit508: ; preds = %bb.en, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i502
  %i.abh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yh)
          to label %bb.er unwind label %bb.fi

bb.er:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit508
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !231
  store ptr %i.abi, ptr %1, align 8, !tbaa !274
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.abj, align 8, !tbaa !279
  %i.abk = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.es unwind label %bb.fi     ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abm, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.abk, ptr noundef nonnull align 8 dereferenceable(24) %i.abl) #34
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !280
  %i.abp = add i64 %i.abo, 1
  store i64 %i.abp, ptr %i.abn, align 8, !tbaa !280
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !286 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 24 ; 2 uses
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !287 ; 3 uses
  %i.abv = load ptr, ptr %i.abs, align 8, !tbaa !289 ; 3 uses
  %i.abw = ptrtoint ptr %i.abu to i64
  %i.abx = ptrtoint ptr %i.abv to i64
  %i.aby = sub i64 %i.abw, %i.abx
  %i.abz = sdiv exact i64 %i.aby, 72              ; 2 uses
  %i.aca = icmp eq ptr %i.abu, %i.abv
  br i1 %i.aca, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.acb = sub nuw nsw i64 1, %i.abz
  invoke void @_ZNSt6vectorI11ArrowSchemaSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.abs, i64 noundef %i.acb)
          to label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit513 unwind label %bb.fi

bb.eu:                                            ; preds = %bb.es
  %i.acc = icmp ugt i64 %i.abz, 1
  br i1 %i.acc, label %bb.ev, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit513

bb.ev:                                            ; preds = %bb.eu
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abv, i64 72 ; 2 uses
  %.not.i.i510 = icmp eq ptr %i.abu, %i.acd
  br i1 %.not.i.i510, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit513, label %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i511

_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i511: ; preds = %bb.ev
  store ptr %i.acd, ptr %i.abt, align 8, !tbaa !287
  br label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit513

_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit513: ; preds = %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i511, %bb.ev, %bb.eu, %bb.et
  %i.ace = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.ew unwind label %bb.fi     ; 2 uses

bb.ew:                                            ; preds = %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit513
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acg, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ace, ptr noundef nonnull align 8 dereferenceable(24) %i.acf) #34
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !290
  %i.acj = add i64 %i.aci, 1
  store i64 %i.acj, ptr %i.ach, align 8, !tbaa !290
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !286 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 16 ; 2 uses
  %i.acn = load ptr, ptr %i.abq, align 8, !tbaa !286
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acp = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aco, i64 noundef 0)
          to label %bb.ex unwind label %bb.fj     ; 2 uses

bb.ex:                                            ; preds = %bb.ew
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acl, i64 24 ; 3 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !293 ; 4 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acl, i64 32 ; 2 uses
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !400
  %.not.i.i515 = icmp eq ptr %i.acr, %i.act
  br i1 %.not.i.i515, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  store ptr %i.acp, ptr %i.acr, align 8, !tbaa !297
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  store ptr %i.acu, ptr %i.acq, align 8, !tbaa !293
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE9push_backEOS1_.exit524

bb.ez:                                            ; preds = %bb.ex
  %i.acv = load ptr, ptr %i.acm, align 8, !tbaa !295 ; 4 uses
  %i.acw = ptrtoint ptr %i.acr to i64
  %i.acx = ptrtoint ptr %i.acv to i64
  %i.acy = sub i64 %i.acw, %i.acx                 ; 5 uses
  %i.acz = icmp eq i64 %i.acy, 9223372036854775800
  br i1 %i.acz, label %bb.fa, label %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i516

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc522 unwind label %bb.fj

.noexc522:                                        ; preds = %bb.fa
  unreachable

_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i516: ; preds = %bb.ez
  %i.ada = ashr exact i64 %i.acy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i517 = call i64 @llvm.umax.i64(i64 %i.ada, i64 1)
  %i.adb = add nsw i64 %.sroa.speculated.i.i.i.i517, %i.ada ; 2 uses
  %i.adc = icmp ult i64 %i.adb, %i.ada
  %i.add = call i64 @llvm.umin.i64(i64 %i.adb, i64 1152921504606846975)
  %i.ade = select i1 %i.adc, i64 1152921504606846975, i64 %i.add ; 3 uses
  %.not.i.i.i.i518 = icmp ne i64 %i.ade, 0
  call void @llvm.assume(i1 %.not.i.i.i.i518)
  %i.adf = shl nuw nsw i64 %i.ade, 3
  %i.adg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adf) #35
          to label %.noexc523 unwind label %bb.fj ; 4 uses

.noexc523:                                        ; preds = %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i516
  %i.adh = getelementptr inbounds i8, ptr %i.adg, i64 %i.acy ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  br i1 %exitcond.not.i565.3, label %.loopexit751, label %vec.epilog.scalar.ph1093, !llvm.loop !441

._crit_edge.i.i568:                               ; preds = %._crit_edge.i.i568.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
  %.0213818 = phi i64 [ 0, %._crit_edge.i.i568.lr.ph ], [ %i.apq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630 ] ; 10 uses
  %i.ajv = load ptr, ptr %i.aht, align 8, !tbaa !296
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.ajv, i64 %.0213818
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  store ptr %i.ahw, ptr %22, align 8, !tbaa !12
  store i64 0, ptr %i.ahx, align 8, !tbaa !18
  store i8 0, ptr %i.ahw, align 8, !tbaa !20
  invoke void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ajx, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.gd unwind label %bb.gz

bb.gd:                                            ; preds = %._crit_edge.i.i568
  %i.ajy = load ptr, ptr %22, align 8, !tbaa !15  ; 2 uses
  %i.ajz = icmp eq ptr %i.ajy, %i.ahw
  br i1 %i.ajz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572: ; preds = %bb.gd
  call void @_ZdlPv(ptr noundef %i.ajy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.aka = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %.0213818)
          to label %bb.ge unwind label %bb.ha     ; 2 uses

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !18, !noalias !442 ; 13 uses
  %i.akd = add i64 %i.akc, 1                      ; 2 uses
  %i.ake = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.akd) #35
          to label %.noexc579 unwind label %bb.ha ; 13 uses

.noexc579:                                        ; preds = %bb.ge
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ake, i8 0, i64 %i.akd, i1 false), !noalias !445
  %.not.i575 = icmp eq i64 %i.akc, 0
  br i1 %.not.i575, label %.loopexit752, label %iter.check

iter.check:                                       ; preds = %.noexc579
  %i.akf = ptrtoaddr ptr %i.ake to i64
  %i.akg = load ptr, ptr %i.aka, align 8, !tbaa !15, !noalias !442 ; 8 uses
  %min.iters.check1056 = icmp ult i64 %i.akc, 4
  %i.akh = ptrtoaddr ptr %i.akg to i64
  %i.aki = sub i64 %i.akf, %i.akh
  %diff.check = icmp ult i64 %i.aki, 32
  %or.cond1296 = select i1 %min.iters.check1056, i1 true, i1 %diff.check
  br i1 %or.cond1296, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1057 = icmp ult i64 %i.akc, 32
  br i1 %min.iters.check1057, label %vec.epilog.ph, label %vector.ph1058

vector.ph1058:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf1059 = and i64 %i.akc, 28
  %n.vec1060 = and i64 %i.akc, -32                ; 4 uses
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %vector.ph1058
  %index1062 = phi i64 [ 0, %vector.ph1058 ], [ %index.next1065, %vector.body1061 ] ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 %index1062 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 16
  %wide.load1063 = load <16 x i8>, ptr %i.akj, align 1, !tbaa !20, !noalias !442
  %wide.load1064 = load <16 x i8>, ptr %i.akk, align 1, !tbaa !20, !noalias !442
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ake, i64 %index1062 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  store <16 x i8> %wide.load1063, ptr %i.akl, align 1, !tbaa !20, !noalias !442
  store <16 x i8> %wide.load1064, ptr %i.akm, align 1, !tbaa !20, !noalias !442
  %index.next1065 = add nuw i64 %index1062, 32    ; 2 uses
  %i.akn = icmp eq i64 %index.next1065, %n.vec1060
  br i1 %i.akn, label %middle.block1066, label %vector.body1061, !llvm.loop !448

middle.block1066:                                 ; preds = %vector.body1061
  %cmp.n1067 = icmp eq i64 %i.akc, %n.vec1060
  br i1 %cmp.n1067, label %.loopexit752, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1066
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf1059, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1060, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1069 = and i64 %i.akc, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1070 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1072, %vec.epilog.vector.body ] ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akg, i64 %index1070
  %wide.load1071 = load <4 x i8>, ptr %i.ako, align 1, !tbaa !20, !noalias !442
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ake, i64 %index1070
  store <4 x i8> %wide.load1071, ptr %i.akp, align 1, !tbaa !20, !noalias !442
  %index.next1072 = add nuw i64 %index1070, 4     ; 2 uses
  %i.akq = icmp eq i64 %index.next1072, %n.vec1069
  br i1 %i.akq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !449

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1073 = icmp eq i64 %i.akc, %n.vec1069
  br i1 %cmp.n1073, label %.loopexit752, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i577.ph = phi i64 [ 0, %iter.check ], [ %n.vec1060, %vec.epilog.iter.check ], [ %n.vec1069, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.akc, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i577.prol = phi i64 [ %i.aku, %vec.epilog.scalar.ph.prol ], [ %.08.i577.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akg, i64 %.08.i577.prol
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !20, !noalias !442
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ake, i64 %.08.i577.prol
  store i8 %i.aks, ptr %i.akt, align 1, !tbaa !20, !noalias !442
  %i.aku = add nuw i64 %.08.i577.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !450

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i577.unr = phi i64 [ %.08.i577.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aku, %vec.epilog.scalar.ph.prol ]
  %i.akv = sub i64 %.08.i577.ph, %i.akc
  %i.akw = icmp ugt i64 %i.akv, -4
  br i1 %i.akw, label %.loopexit752, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i577 = phi i64 [ %i.alm, %vec.epilog.scalar.ph ], [ %.08.i577.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akg, i64 %.08.i577
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !20, !noalias !442
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ake, i64 %.08.i577
  store i8 %i.aky, ptr %i.akz, align 1, !tbaa !20, !noalias !442
  %i.ala = add nuw i64 %.08.i577, 1               ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !20, !noalias !442
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.ala
  store i8 %i.alc, ptr %i.ald, align 1, !tbaa !20, !noalias !442
  %i.ale = add nuw i64 %.08.i577, 2               ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.ale
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !20, !noalias !442
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.ale
  store i8 %i.alg, ptr %i.alh, align 1, !tbaa !20, !noalias !442
  %i.ali = add nuw i64 %.08.i577, 3               ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !20, !noalias !442
  %i.all = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.ali
  store i8 %i.alk, ptr %i.all, align 1, !tbaa !20, !noalias !442
  %i.alm = add nuw i64 %.08.i577, 4               ; 2 uses
  %exitcond.not.i578.3 = icmp eq i64 %i.alm, %i.akc
  br i1 %exitcond.not.i578.3, label %.loopexit752, label %vec.epilog.scalar.ph, !llvm.loop !451

.loopexit752:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block1066, %vec.epilog.middle.block, %.noexc579
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.akc
  store i8 0, ptr %i.aln, align 1, !tbaa !20, !noalias !442
  %i.alo = load ptr, ptr %i.ahz, align 8, !tbaa !254 ; 6 uses
  %i.alp = load ptr, ptr %i.aia, align 8, !tbaa !257
  %.not.i.i581 = icmp eq ptr %i.alo, %i.alp
  br i1 %.not.i.i581, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %.loopexit752
  %i.alq = ptrtoint ptr %i.ake to i64
  store i64 %i.alq, ptr %i.alo, align 8, !tbaa !231
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  store ptr %i.alr, ptr %i.ahz, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit599

bb.gg:                                            ; preds = %.loopexit752
  %i.als = load ptr, ptr %i.ahy, align 8, !tbaa !258 ; 10 uses
  %i.alt = ptrtoint ptr %i.alo to i64             ; 3 uses
  %i.alu = ptrtoint ptr %i.als to i64             ; 3 uses
  %i.alv = sub i64 %i.alt, %i.alu                 ; 3 uses
  %i.alw = icmp eq i64 %i.alv, 9223372036854775800
  br i1 %i.alw, label %bb.gh, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i582

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc594 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit.split-lp

.noexc594:                                        ; preds = %bb.gh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i582: ; preds = %bb.gg
  %i.alx = ashr exact i64 %i.alv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i583 = call i64 @llvm.umax.i64(i64 %i.alx, i64 1)
  %i.aly = add nsw i64 %.sroa.speculated.i.i.i.i583, %i.alx ; 2 uses
  %i.alz = icmp ult i64 %i.aly, %i.alx
  %i.ama = call i64 @llvm.umin.i64(i64 %i.aly, i64 1152921504606846975)
  %i.amb = select i1 %i.alz, i64 1152921504606846975, i64 %i.ama ; 3 uses
  %.not.i.i.i.i584 = icmp ne i64 %i.amb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i584)
  %i.amc = shl nuw nsw i64 %i.amb, 3
  %i.amd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amc) #35
          to label %.noexc595 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit ; 10 uses

.noexc595:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i582
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.alv
  %i.amf = ptrtoint ptr %i.ake to i64
  store i64 %i.amf, ptr %i.ame, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i585 = icmp eq ptr %i.als, %i.alo
  br i1 %.not10.i.i.i.i.i.i.i585, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i590, label %.lr.ph.i.i.i.i.i.i.i586.preheader

.lr.ph.i.i.i.i.i.i.i586.preheader:                ; preds = %.noexc595
  %37 = add i64 %i.alt, -8
  %38 = sub i64 %37, %i.alu                       ; 2 uses
  %i.amg = lshr i64 %38, 3
  %i.amh = add nuw nsw i64 %i.amg, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %38, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i586.preheader1309, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i586.preheader
  %scevgep = getelementptr i8, ptr %i.amd, i64 8
  %i.ami = add i64 %i.alt, -8
  %i.amj = sub i64 %i.ami, %i.alu
  %i.amk = and i64 %i.amj, -8                     ; 2 uses
  %scevgep1048 = getelementptr i8, ptr %scevgep, i64 %i.amk
  %scevgep1049 = getelementptr i8, ptr %i.als, i64 8
  %scevgep1050 = getelementptr i8, ptr %scevgep1049, i64 %i.amk
  %bound0 = icmp ult ptr %i.amd, %scevgep1050
  %bound1 = icmp ult ptr %i.als, %scevgep1048
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i586.preheader1309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amh, 4611686018427387900    ; 3 uses
  %i.aml = shl i64 %n.vec, 3                      ; 2 uses
  %i.amm = getelementptr i8, ptr %i.amd, i64 %i.aml ; 2 uses
  %i.amn = getelementptr i8, ptr %i.als, i64 %i.aml
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amo = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.amd, i64 %i.amo ; 2 uses
  %next.gep1051 = getelementptr i8, ptr %i.als, i64 %i.amo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.amp = getelementptr i8, ptr %next.gep1051, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1051, align 8, !tbaa !231, !alias.scope !457, !noalias !452
  %wide.load1052 = load <2 x i64>, ptr %i.amp, align 8, !tbaa !231, !alias.scope !457, !noalias !452
  %i.amq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !460, !noalias !457
  store <2 x i64> %wide.load1052, ptr %i.amq, align 8, !tbaa !231, !alias.scope !460, !noalias !457
  %i.amr = getelementptr i8, ptr %next.gep1051, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1051, align 8, !tbaa !231, !alias.scope !457, !noalias !452
  store <2 x ptr> splat (ptr null), ptr %i.amr, align 8, !tbaa !231, !alias.scope !457, !noalias !452
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ams = icmp eq i64 %index.next, %n.vec
  br i1 %i.ams, label %middle.block, label %vector.body, !llvm.loop !462

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i590, label %.lr.ph.i.i.i.i.i.i.i586.preheader1309

.lr.ph.i.i.i.i.i.i.i586.preheader1309:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i586.preheader, %middle.block
  %.012.i.i.i.i.i.i.i587.ph = phi ptr [ %i.amd, %vector.memcheck ], [ %i.amd, %.lr.ph.i.i.i.i.i.i.i586.preheader ], [ %i.amm, %middle.block ]
  %.0911.i.i.i.i.i.i.i588.ph = phi ptr [ %i.als, %vector.memcheck ], [ %i.als, %.lr.ph.i.i.i.i.i.i.i586.preheader ], [ %i.amn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i586

.lr.ph.i.i.i.i.i.i.i586:                          ; preds = %.lr.ph.i.i.i.i.i.i.i586.preheader1309, %.lr.ph.i.i.i.i.i.i.i586
  %.012.i.i.i.i.i.i.i587 = phi ptr [ %i.amv, %.lr.ph.i.i.i.i.i.i.i586 ], [ %.012.i.i.i.i.i.i.i587.ph, %.lr.ph.i.i.i.i.i.i.i586.preheader1309 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i588 = phi ptr [ %i.amu, %.lr.ph.i.i.i.i.i.i.i586 ], [ %.0911.i.i.i.i.i.i.i588.ph, %.lr.ph.i.i.i.i.i.i.i586.preheader1309 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.amt = load i64, ptr %.0911.i.i.i.i.i.i.i588, align 8, !tbaa !231, !alias.scope !455, !noalias !452
  store i64 %i.amt, ptr %.012.i.i.i.i.i.i.i587, align 8, !tbaa !231, !alias.scope !452, !noalias !455
  store ptr null, ptr %.0911.i.i.i.i.i.i.i588, align 8, !tbaa !231, !alias.scope !455, !noalias !452
  %i.amu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i588, i64 8 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i587, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i589 = icmp eq ptr %i.amu, %i.alo
  br i1 %.not.i.i.i.i.i.i.i589, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i590, label %.lr.ph.i.i.i.i.i.i.i586, !llvm.loop !463

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i590: ; preds = %.lr.ph.i.i.i.i.i.i.i586, %middle.block, %.noexc595
  %.0.lcssa.i.i.i.i.i.i.i591 = phi ptr [ %i.amd, %.noexc595 ], [ %i.amm, %middle.block ], [ %i.amv, %.lr.ph.i.i.i.i.i.i.i586 ]
  %i.amw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i591, i64 8
  %.not.i23.i.i.i592 = icmp eq ptr %i.als, null
  br i1 %.not.i23.i.i.i592, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i593, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i590
  call void @_ZdlPv(ptr noundef nonnull %i.als) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i593

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i593: ; preds = %bb.gi, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i590
  store ptr %i.amd, ptr %i.ahy, align 8, !tbaa !258
  store ptr %i.amw, ptr %i.ahz, align 8, !tbaa !254
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.amb
  store ptr %i.amx, ptr %i.aia, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit599

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit599: ; preds = %bb.gf, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i593
  %i.amy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahy)
          to label %bb.gj unwind label %bb.hb

bb.gj:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit599
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !231
  %i.ana = load ptr, ptr %i.aht, align 8, !tbaa !296
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %.0213818
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !297 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  store ptr %i.amz, ptr %i.and, align 8, !tbaa !271
  %i.ane = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %.0213818)
          to label %bb.gk unwind label %bb.hb

bb.gk:                                            ; preds = %bb.gj
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 32
  invoke void @_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.anc, ptr noundef nonnull align 8 dereferenceable(24) %i.anf, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(512) %4)
          to label %bb.gl unwind label %bb.hb

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.ang = icmp ult i64 %.0213818, 10
  br i1 %i.ang, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603, label %.lr.ph.i.i600

.lr.ph.i.i600:                                    ; preds = %bb.gl, %bb.gr
  %.02229.i.i601 = phi i64 [ %i.ann, %bb.gr ], [ %.0213818, %bb.gl ] ; 5 uses
  %.02328.i.i602 = phi i32 [ %i.ano, %bb.gr ], [ 1, %bb.gl ] ; 4 uses
  %i.anh = icmp ult i64 %.02229.i.i601, 100
  br i1 %i.anh, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.lr.ph.i.i600
  %i.ani = add i32 %.02328.i.i602, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603

bb.gn:                                            ; preds = %.lr.ph.i.i600
  %i.anj = icmp ult i64 %.02229.i.i601, 1000
  br i1 %i.anj, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.ank = add i32 %.02328.i.i602, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603

bb.gp:                                            ; preds = %bb.gn
  %i.anl = icmp ult i64 %.02229.i.i601, 10000
  br i1 %i.anl, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.anm = add i32 %.02328.i.i602, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603

bb.gr:                                            ; preds = %bb.gp
  %i.ann = udiv i64 %.02229.i.i601, 10000
  %i.ano = add i32 %.02328.i.i602, 4              ; 2 uses
  %i.anp = icmp ult i64 %.02229.i.i601, 100000
  br i1 %i.anp, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603, label %.lr.ph.i.i600, !llvm.loop !404

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603: ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gm, %bb.gl
  %.0.i.i604 = phi i32 [ %i.anm, %bb.gq ], [ %i.ani, %bb.gm ], [ %i.ank, %bb.go ], [ 1, %bb.gl ], [ %i.ano, %bb.gr ]
  %i.anq = zext i32 %.0.i.i604 to i64
  store ptr %i.aib, ptr %24, align 8, !tbaa !12, !alias.scope !464
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.anq, i8 noundef signext 0)
          to label %.noexc612 unwind label %bb.hc

.noexc612:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603
  %i.anr = load ptr, ptr %24, align 8, !tbaa !15, !alias.scope !464 ; 4 uses
  %i.ans = icmp ugt i64 %.0213818, 99
  br i1 %i.ans, label %.lr.ph.preheader.i.i608, label %._crit_edge.i.i605

.lr.ph.preheader.i.i608:                          ; preds = %.noexc612
  %i.ant = load i64, ptr %i.aic, align 8, !tbaa !18, !alias.scope !464
  %i.anu = trunc i64 %i.ant to i32
  %i.anv = add i32 %i.anu, -1
  br label %.lr.ph.i6.i609

.lr.ph.i6.i609:                                   ; preds = %.lr.ph.i6.i609, %.lr.ph.preheader.i.i608
  %.020.i.i610 = phi i64 [ %i.any, %.lr.ph.i6.i609 ], [ %.0213818, %.lr.ph.preheader.i.i608 ] ; 3 uses
  %.01819.i.i611 = phi i32 [ %i.aoi, %.lr.ph.i6.i609 ], [ %i.anv, %.lr.ph.preheader.i.i608 ] ; 3 uses
  %i.anw = urem i64 %.020.i.i610, 100
  %i.anx = shl nuw nsw i64 %i.anw, 1
  %i.any = udiv i64 %.020.i.i610, 100             ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.anx ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 1
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !20, !noalias !464
  %i.aoc = zext i32 %.01819.i.i611 to i64
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anr, i64 %i.aoc
  store i8 %i.aob, ptr %i.aod, align 1, !tbaa !20
  %i.aoe = load i8, ptr %i.anz, align 2, !tbaa !20, !noalias !464
  %i.aof = add i32 %.01819.i.i611, -1
  %i.aog = zext i32 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anr, i64 %i.aog
  store i8 %i.aoe, ptr %i.aoh, align 1, !tbaa !20
  %i.aoi = add i32 %.01819.i.i611, -2
  %i.aoj = icmp ugt i64 %.020.i.i610, 9999
  br i1 %i.aoj, label %.lr.ph.i6.i609, label %._crit_edge.i.i605, !llvm.loop !405

._crit_edge.i.i605:                               ; preds = %.lr.ph.i6.i609, %.noexc612
  %.0.lcssa.i.i606 = phi i64 [ %.0213818, %.noexc612 ], [ %i.any, %.lr.ph.i6.i609 ] ; 3 uses
  %i.aok = icmp samesign ugt i64 %.0.lcssa.i.i606, 9
  br i1 %i.aok, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %._crit_edge.i.i605
  %i.aol = shl nuw nsw i64 %.0.lcssa.i.i606, 1
  %i.aom = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aol ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !20, !noalias !464
  %i.aop = getelementptr inbounds nuw i8, ptr %i.anr, i64 1
  store i8 %i.aoo, ptr %i.aop, align 1, !tbaa !20
  %i.aoq = load i8, ptr %i.aom, align 2, !tbaa !20, !noalias !464
  br label %bb.gu

bb.gt:                                            ; preds = %._crit_edge.i.i605
  %i.aor = trunc nuw nsw i64 %.0.lcssa.i.i606 to i8
  %i.aos = or disjoint i8 %i.aor, 48
  br label %bb.gu
end_hunk_6
begin_hunk_7_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
bb.gx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615, %bb.gw
  %i.ape = phi i64 [ %i.apa, %bb.gw ], [ %.pre.i617, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615 ]
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  store i64 %i.ape, ptr %i.aie, align 8, !tbaa !18, !alias.scope !467
  store ptr %i.aox, ptr %i.aov, align 8, !tbaa !15
  store i64 0, ptr %i.apf, align 8, !tbaa !18
  store i8 0, ptr %i.aox, align 8, !tbaa !20
  %i.apg = load i64, ptr %i.aie, align 8, !tbaa !18 ; 2 uses
  %i.aph = load i64, ptr %i.aem, align 8, !tbaa !18
  %i.api = sub i64 4611686018427387903, %i.aph
  %i.apj = icmp ult i64 %i.api, %i.apg
  br i1 %i.apj, label %bb.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i622

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #37
          to label %.noexc623 unwind label %.loopexit.split-lp758

.noexc623:                                        ; preds = %bb.gy
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i622: ; preds = %bb.gx
  %i.apk = load ptr, ptr %23, align 8, !tbaa !15
  %i.apl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.apk, i64 noundef %i.apg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit757 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i622
  %i.apm = load ptr, ptr %23, align 8, !tbaa !15  ; 2 uses
  %i.apn = icmp eq ptr %i.apm, %i.aid
  br i1 %i.apn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.apm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
  %i.apo = load ptr, ptr %24, align 8, !tbaa !15  ; 2 uses
  %i.app = icmp eq ptr %i.apo, %i.aib
  br i1 %i.app, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627
  call void @_ZdlPv(ptr noundef %i.apo) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  %i.apq = add nuw i64 %.0213818, 1               ; 2 uses
  %i.apr = load ptr, ptr %i.aeo, align 8, !tbaa !275
  %i.aps = load ptr, ptr %21, align 8, !tbaa !278
  %i.apt = ptrtoint ptr %i.apr to i64
  %i.apu = ptrtoint ptr %i.aps to i64
  %i.apv = sub i64 %i.apt, %i.apu
  %i.apw = sdiv exact i64 %i.apv, 56
  %i.apx = icmp ult i64 %i.apq, %i.apw
  br i1 %i.apx, label %._crit_edge.i.i568, label %._crit_edge819, !llvm.loop !470

bb.gz:                                            ; preds = %._crit_edge.i.i568
  %i.apy = landingpad { ptr, i32 }
          cleanup
  %i.apz = load ptr, ptr %22, align 8, !tbaa !15  ; 2 uses
  %i.aqa = icmp eq ptr %i.apz, %i.ahw
  br i1 %i.aqa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %bb.gz
  call void @_ZdlPv(ptr noundef %i.apz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.hl

bb.ha:                                            ; preds = %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i582
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit.split-lp: ; preds = %bb.gh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.ake) #36
  br label %bb.hl

bb.hb:                                            ; preds = %bb.gk, %bb.gj, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit599
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hc:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i603
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

.loopexit753:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i614
  %lpad.loopexit754 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

.loopexit.split-lp:                               ; preds = %bb.gv
  %lpad.loopexit.split-lp755 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

.loopexit757:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i622
  %lpad.loopexit759 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

.loopexit.split-lp758:                            ; preds = %bb.gy
  %lpad.loopexit.split-lp760 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hd:                                            ; preds = %.loopexit.split-lp758, %.loopexit757
  %lpad.phi761 = phi { ptr, i32 } [ %lpad.loopexit759, %.loopexit757 ], [ %lpad.loopexit.split-lp760, %.loopexit.split-lp758 ] ; 2 uses
  %i.aqe = load ptr, ptr %23, align 8, !tbaa !15  ; 2 uses
  %i.aqf = icmp eq ptr %i.aqe, %i.aid
  br i1 %i.aqf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %bb.hd
  call void @_ZdlPv(ptr noundef %i.aqe) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %bb.hd, %.loopexit753, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  %.pn257 = phi { ptr, i32 } [ %lpad.phi761, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637 ], [ %lpad.loopexit.split-lp755, %.loopexit.split-lp ], [ %lpad.loopexit754, %.loopexit753 ], [ %lpad.phi761, %bb.hd ] ; 2 uses
  %i.aqg = load ptr, ptr %24, align 8, !tbaa !15  ; 2 uses
  %i.aqh = icmp eq ptr %i.aqg, %i.aib
  br i1 %i.aqh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
  call void @_ZdlPv(ptr noundef %i.aqg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640, %bb.hc
  %.pn257.pn = phi { ptr, i32 } [ %i.aqd, %bb.hc ], [ %.pn257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640 ], [ %.pn257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.hl

.loopexit751:                                     ; preds = %vec.epilog.scalar.ph1093.prol.loopexit, %vec.epilog.scalar.ph1093, %middle.block1089, %vec.epilog.middle.block1103, %.noexc566
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aim, i64 %i.aik
  store i8 0, ptr %i.aqi, align 1, !tbaa !20, !noalias !432
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !254 ; 6 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !257
  %.not.i.i643 = icmp eq ptr %i.aqk, %i.aqm
  br i1 %.not.i.i643, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.loopexit751
  %i.aqn = ptrtoint ptr %i.aim to i64
  store i64 %i.aqn, ptr %i.aqk, align 8, !tbaa !231
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  store ptr %i.aqo, ptr %i.aqj, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661

bb.hf:                                            ; preds = %.loopexit751
  %i.aqp = load ptr, ptr %i.aij, align 8, !tbaa !258 ; 10 uses
  %i.aqq = ptrtoint ptr %i.aqk to i64             ; 3 uses
  %i.aqr = ptrtoint ptr %i.aqp to i64             ; 3 uses
  %i.aqs = sub i64 %i.aqq, %i.aqr                 ; 3 uses
  %i.aqt = icmp eq i64 %i.aqs, 9223372036854775800
  br i1 %i.aqt, label %bb.hg, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i644

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc656 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit667

.noexc656:                                        ; preds = %bb.hg
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i644: ; preds = %bb.hf
  %i.aqu = ashr exact i64 %i.aqs, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i645 = call i64 @llvm.umax.i64(i64 %i.aqu, i64 1)
  %i.aqv = add nsw i64 %.sroa.speculated.i.i.i.i645, %i.aqu ; 2 uses
  %i.aqw = icmp ult i64 %i.aqv, %i.aqu
  %i.aqx = call i64 @llvm.umin.i64(i64 %i.aqv, i64 1152921504606846975)
  %i.aqy = select i1 %i.aqw, i64 1152921504606846975, i64 %i.aqx ; 3 uses
  %.not.i.i.i.i646 = icmp ne i64 %i.aqy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i646)
  %i.aqz = shl nuw nsw i64 %i.aqy, 3
  %i.ara = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqz) #35
          to label %.noexc657 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit667 ; 10 uses

.noexc657:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i644
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqs
  %i.arc = ptrtoint ptr %i.aim to i64
  store i64 %i.arc, ptr %i.arb, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i647 = icmp eq ptr %i.aqp, %i.aqk
  br i1 %.not10.i.i.i.i.i.i.i647, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i652, label %.lr.ph.i.i.i.i.i.i.i648.preheader

.lr.ph.i.i.i.i.i.i.i648.preheader:                ; preds = %.noexc657
  %39 = add i64 %i.aqq, -8
  %40 = sub i64 %39, %i.aqr                       ; 2 uses
  %i.ard = lshr i64 %40, 3
  %i.are = add nuw nsw i64 %i.ard, 1              ; 2 uses
  %min.iters.check1113 = icmp ult i64 %40, 152
  br i1 %min.iters.check1113, label %.lr.ph.i.i.i.i.i.i.i648.preheader1307, label %vector.memcheck1106

vector.memcheck1106:                              ; preds = %.lr.ph.i.i.i.i.i.i.i648.preheader
  %i.arf = add i64 %i.aqq, -8
  %i.arg = sub i64 %i.arf, %i.aqr
  %i.arh = and i64 %i.arg, -8
  %i.ari = add i64 %i.arh, 8                      ; 2 uses
  %scevgep1107 = getelementptr i8, ptr %i.ara, i64 %i.ari
  %scevgep1108 = getelementptr i8, ptr %i.aqp, i64 %i.ari
  %bound01109 = icmp ult ptr %i.ara, %scevgep1108
  %bound11110 = icmp ult ptr %i.aqp, %scevgep1107
  %found.conflict1111 = and i1 %bound01109, %bound11110
  br i1 %found.conflict1111, label %.lr.ph.i.i.i.i.i.i.i648.preheader1307, label %vector.ph1114

vector.ph1114:                                    ; preds = %vector.memcheck1106
  %n.vec1116 = and i64 %i.are, 4611686018427387900 ; 3 uses
  %i.arj = shl i64 %n.vec1116, 3                  ; 2 uses
  %i.ark = getelementptr i8, ptr %i.ara, i64 %i.arj ; 2 uses
  %i.arl = getelementptr i8, ptr %i.aqp, i64 %i.arj
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %vector.ph1114
  %index1118 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1123, %vector.body1117 ] ; 2 uses
  %i.arm = shl i64 %index1118, 3                  ; 2 uses
  %next.gep1119 = getelementptr i8, ptr %i.ara, i64 %i.arm ; 2 uses
  %next.gep1120 = getelementptr i8, ptr %i.aqp, i64 %i.arm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.arn = getelementptr i8, ptr %next.gep1120, i64 16
  %wide.load1121 = load <2 x i64>, ptr %next.gep1120, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  %wide.load1122 = load <2 x i64>, ptr %i.arn, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  %i.aro = getelementptr i8, ptr %next.gep1119, i64 16
  store <2 x i64> %wide.load1121, ptr %next.gep1119, align 8, !tbaa !231, !alias.scope !479, !noalias !476
  store <2 x i64> %wide.load1122, ptr %i.aro, align 8, !tbaa !231, !alias.scope !479, !noalias !476
  %i.arp = getelementptr i8, ptr %next.gep1120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1120, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  store <2 x ptr> splat (ptr null), ptr %i.arp, align 8, !tbaa !231, !alias.scope !476, !noalias !471
  %index.next1123 = add nuw i64 %index1118, 4     ; 2 uses
  %i.arq = icmp eq i64 %index.next1123, %n.vec1116
  br i1 %i.arq, label %middle.block1124, label %vector.body1117, !llvm.loop !481

middle.block1124:                                 ; preds = %vector.body1117
  %cmp.n1125 = icmp eq i64 %i.are, %n.vec1116
  br i1 %cmp.n1125, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i652, label %.lr.ph.i.i.i.i.i.i.i648.preheader1307

.lr.ph.i.i.i.i.i.i.i648.preheader1307:            ; preds = %vector.memcheck1106, %.lr.ph.i.i.i.i.i.i.i648.preheader, %middle.block1124
  %.012.i.i.i.i.i.i.i649.ph = phi ptr [ %i.ara, %vector.memcheck1106 ], [ %i.ara, %.lr.ph.i.i.i.i.i.i.i648.preheader ], [ %i.ark, %middle.block1124 ]
  %.0911.i.i.i.i.i.i.i650.ph = phi ptr [ %i.aqp, %vector.memcheck1106 ], [ %i.aqp, %.lr.ph.i.i.i.i.i.i.i648.preheader ], [ %i.arl, %middle.block1124 ]
  br label %.lr.ph.i.i.i.i.i.i.i648

.lr.ph.i.i.i.i.i.i.i648:                          ; preds = %.lr.ph.i.i.i.i.i.i.i648.preheader1307, %.lr.ph.i.i.i.i.i.i.i648
  %.012.i.i.i.i.i.i.i649 = phi ptr [ %i.art, %.lr.ph.i.i.i.i.i.i.i648 ], [ %.012.i.i.i.i.i.i.i649.ph, %.lr.ph.i.i.i.i.i.i.i648.preheader1307 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i650 = phi ptr [ %i.ars, %.lr.ph.i.i.i.i.i.i.i648 ], [ %.0911.i.i.i.i.i.i.i650.ph, %.lr.ph.i.i.i.i.i.i.i648.preheader1307 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.arr = load i64, ptr %.0911.i.i.i.i.i.i.i650, align 8, !tbaa !231, !alias.scope !474, !noalias !471
  store i64 %i.arr, ptr %.012.i.i.i.i.i.i.i649, align 8, !tbaa !231, !alias.scope !471, !noalias !474
  store ptr null, ptr %.0911.i.i.i.i.i.i.i650, align 8, !tbaa !231, !alias.scope !474, !noalias !471
  %i.ars = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i650, i64 8 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i649, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i651 = icmp eq ptr %i.ars, %i.aqk
  br i1 %.not.i.i.i.i.i.i.i651, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i652, label %.lr.ph.i.i.i.i.i.i.i648, !llvm.loop !482

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i652: ; preds = %.lr.ph.i.i.i.i.i.i.i648, %middle.block1124, %.noexc657
  %.0.lcssa.i.i.i.i.i.i.i653 = phi ptr [ %i.ara, %.noexc657 ], [ %i.ark, %middle.block1124 ], [ %i.art, %.lr.ph.i.i.i.i.i.i.i648 ]
  %i.aru = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i653, i64 8
  %.not.i23.i.i.i654 = icmp eq ptr %i.aqp, null
  br i1 %.not.i23.i.i.i654, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i655, label %bb.hh

bb.hh:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i652
  call void @_ZdlPv(ptr noundef nonnull %i.aqp) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i655

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i655: ; preds = %bb.hh, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i652
  store ptr %i.ara, ptr %i.aij, align 8, !tbaa !258
  store ptr %i.aru, ptr %i.aqj, align 8, !tbaa !254
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.ara, i64 %i.aqy
  store ptr %i.arv, ptr %i.aql, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661: ; preds = %bb.he, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i655
  %i.arw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aij)
          to label %bb.hi unwind label %bb.fx

bb.hi:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit661
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !231
  store ptr %i.arx, ptr %1, align 8, !tbaa !274
  %i.ary = load ptr, ptr %21, align 8, !tbaa !278 ; 3 uses
  %i.arz = load ptr, ptr %i.aeo, align 8, !tbaa !275 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ary, %i.arz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.hi, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ase, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.ary, %bb.hi ] ; 4 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.asa) #34
  %i.asb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.asd = icmp eq ptr %i.asb, %i.asc
  br i1 %i.asd, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.asb) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ase = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ase, %i.arz
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !483

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.hi
  %i.asf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ary, %bb.hi ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.asf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.asf) #36
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %i.asg = load ptr, ptr %20, align 8, !tbaa !15  ; 2 uses
  %i.ash = icmp eq ptr %i.asg, %i.ael
  br i1 %i.ash, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.asg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.in

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit667: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i644, %bb.hg
  %i.asj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.aim) #36
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit667, %bb.ha, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %bb.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, %bb.ga, %bb.fx
  %.pn261 = phi { ptr, i32 } [ %i.ahs, %bb.ga ], [ %i.aqb, %bb.ha ], [ %i.ahd, %bb.fx ], [ %.pn257.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642 ], [ %i.aqc, %bb.hb ], [ %i.apy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633 ], [ %lpad.phi, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit636 ], [ %i.asj, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit667 ], [ %i.asi, %bb.hk ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.fw
  %.pn261.pn = phi { ptr, i32 } [ %.pn261, %bb.hl ], [ %i.ahc, %bb.fw ]
  %i.ask = load ptr, ptr %20, align 8, !tbaa !15  ; 2 uses
  %i.asl = icmp eq ptr %i.ask, %i.ael
  br i1 %i.asl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668: ; preds = %bb.hm
  call void @_ZdlPv(ptr noundef %i.ask) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %common.resume

bb.hn:                                            ; preds = %bb.d
  %i.asm = tail call noundef zeroext i8 @_ZN6duckdb8EnumType15GetPhysicalTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %2)
  switch i8 %i.asm, label %bb.hq [
    i8 2, label %bb.hv
    i8 4, label %bb.ho
    i8 6, label %bb.hp
  ]

bb.ho:                                            ; preds = %bb.hn
  br label %bb.hv

bb.hp:                                            ; preds = %bb.hn
  br label %bb.hv

bb.hq:                                            ; preds = %bb.hn
  %i.asn = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.hr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673.thread

bb.hr:                                            ; preds = %bb.hq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.asn, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.hs unwind label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  invoke void @__cxa_throw(ptr nonnull %i.asn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.io unwind label %bb.ht

end_hunk_7
begin_hunk_8_@_ZN6duckdb18ArrowTypeExtension19PopulateArrowSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKS0_:bb.a

.noexc.i.i47:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %.thread166 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i47
  store ptr %i.ag, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !20, !alias.scope !499
  br label %._crit_edge.i.i.i46

._crit_edge.i.i.i46:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = phi ptr [ %i.ag, %.noexc ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ae, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i46
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !20
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i46
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18, !alias.scope !499
  %i.am = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34, !noalias !499
  %i.ao = load ptr, ptr %6, align 8, !tbaa !15    ; 10 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !18 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %.not176179 = icmp samesign eq i64 %i.aq, 0
  br i1 %.not176179, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.as = ptrtoaddr ptr %i.ao to i64
  %min.iters.check = icmp ult i64 %i.aq, 4
  %i.at = sub i64 %i.y, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, -32                     ; 5 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load227 = load <16 x i8>, ptr %i.av, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !20
  store <16 x i8> %wide.load227, ptr %i.ax, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.aq, -4                   ; 4 uses
  %i.az = getelementptr i8, ptr %i.ao, i64 %n.vec229
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.ao, i64 %index230
  %wide.load232 = load <4 x i8>, ptr %next.gep231, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %index230
  store <4 x i8> %wide.load232, ptr %i.ba, align 1, !tbaa !20
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n234 = icmp eq i64 %i.aq, %n.vec229
  br i1 %cmp.n234, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033181.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0151.0180.ph = phi ptr [ %i.ao, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 3 uses
  %i.bc = add i64 %i.aq, %i.ap                    ; 2 uses
  %.sroa.0151.0180.ph279 = ptrtoint ptr %.sroa.0151.0180.ph to i64 ; 2 uses
  %i.bd = sub i64 %i.bc, %.sroa.0151.0180.ph279
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.033181.prol = phi i64 [ %i.bf, %.lr.ph.prol ], [ %.033181.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0151.0180.prol = phi ptr [ %i.bh, %.lr.ph.prol ], [ %.sroa.0151.0180.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.be = load i8, ptr %.sroa.0151.0180.prol, align 1, !tbaa !20
  %i.bf = add nuw i64 %.033181.prol, 1            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181.prol
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !504

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.033181.unr = phi i64 [ %.033181.ph, %.lr.ph.preheader ], [ %i.bf, %.lr.ph.prol ]
  %.sroa.0151.0180.unr = phi ptr [ %.sroa.0151.0180.ph, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = sub i64 %.sroa.0151.0180.ph279, %i.bc
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.bk = icmp eq ptr %i.ao, %i.ac
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50: ; preds = %._crit_edge
  %i.bl = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.bl)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef %i.ao) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aq
  store i8 0, ptr %i.bm, align 1, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !254 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bs = ptrtoint ptr %i.x to i64
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !231
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !254
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !258 ; 10 uses
  %i.bv = ptrtoint ptr %i.bp to i64               ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc52 unwind label %.thread172

.noexc52:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #35
          to label %.noexc53 unwind label %.thread172 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %i.ch = ptrtoint ptr %i.x to i64
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc53
  %13 = add i64 %i.bv, -8
  %14 = sub i64 %13, %i.bw                        ; 2 uses
  %i.ci = lshr i64 %14, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check239 = icmp ult i64 %14, 152
  br i1 %min.iters.check239, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ck = add i64 %i.bv, -8
  %i.cl = sub i64 %i.ck, %i.bw
  %i.cm = and i64 %i.cl, -8
  %i.cn = add i64 %i.cm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.cn
  %scevgep238 = getelementptr i8, ptr %i.bu, i64 %i.cn
  %bound0 = icmp ult ptr %i.cf, %scevgep238
  %bound1 = icmp ult ptr %i.bu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck237
  %n.vec242 = and i64 %i.cj, 4611686018427387900  ; 3 uses
  %i.co = shl i64 %n.vec242, 3                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bu, i64 %i.co
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph240
  %index244 = phi i64 [ 0, %vector.ph240 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %i.cr = shl i64 %index244, 3                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.cf, i64 %i.cr ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.bu, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cs = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load247 = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %wide.load248 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %i.ct = getelementptr i8, ptr %next.gep245, i64 16
  store <2 x i64> %wide.load247, ptr %next.gep245, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  store <2 x i64> %wide.load248, ptr %i.ct, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  %i.cu = getelementptr i8, ptr %next.gep246, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %index.next249 = add nuw i64 %index244, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.cv, label %middle.block250, label %vector.body243, !llvm.loop !515

middle.block250:                                  ; preds = %vector.body243
  %cmp.n251 = icmp eq i64 %i.cj, %n.vec242
  br i1 %cmp.n251, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader277

.lr.ph.i.i.i.i.i.i.preheader277:                  ; preds = %vector.memcheck237, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block250
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck237 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block250 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck237 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block250 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader277, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !505, !noalias !508
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bp
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !516

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block250, %.noexc53
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cf, %.noexc53 ], [ %i.cp, %middle.block250 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !258
  store ptr %i.cz, ptr %i.bo, align 8, !tbaa !254
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.da, ptr %i.bq, align 8, !tbaa !257
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.n:                                             ; preds = %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.i
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %bb.n
  %i.de = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.de)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.dc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

.thread166:                                       ; preds = %.noexc.i.i47
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.033181 = phi i64 [ %i.ds, %.lr.ph ], [ %.033181.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.sroa.0151.0180 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0151.0180.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dg = load i8, ptr %.sroa.0151.0180, align 1, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20
  %i.ds = add nuw i64 %.033181, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  store i8 %i.dr, ptr %i.du, align 1, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180, i64 4 ; 2 uses
  %.not176.3 = icmp eq ptr %i.dv, %i.ar
  br i1 %.not176.3, label %._crit_edge, label %.lr.ph, !llvm.loop !517

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.j
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !231
  store ptr %i.dx, ptr %1, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZN6duckdb19ArrowSchemaMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !18
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.eb, ptr %9, align 8, !tbaa !12, !alias.scope !518
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !15, !noalias !518 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !18, !noalias !518 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34, !noalias !518
  store i64 %i.ee, ptr %i.c, align 8, !tbaa !19, !noalias !518
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %.noexc.i.i58, label %._crit_edge.i.i.i57

.noexc.i.i58:                                     ; preds = %bb.p
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc59 unwind label %bb.x   ; 2 uses

.noexc59:                                         ; preds = %.noexc.i.i58
  store ptr %i.eg, ptr %9, align 8, !tbaa !15, !alias.scope !518
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !518
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !20, !alias.scope !518
  br label %._crit_edge.i.i.i57

._crit_edge.i.i.i57:                              ; preds = %.noexc59, %bb.p
  %i.ei = phi ptr [ %i.eg, %.noexc59 ], [ %i.eb, %bb.p ] ; 2 uses
  switch i64 %i.ee, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i57
  %i.ej = load i8, ptr %i.ec, align 1, !tbaa !20
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !20
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ec, i64 %i.ee, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i57
  %i.ek = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !518 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !18, !alias.scope !518
  %i.em = load ptr, ptr %9, align 8, !tbaa !15, !alias.scope !518
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34, !noalias !518
  invoke void @_ZN6duckdb19ArrowSchemaMetadata18ArrowCanonicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ArrowSchemaMetadata") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
end_hunk_8
begin_hunk_9_@_ZN6duckdb18ArrowTypeExtension19PopulateArrowSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKS0_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  %i.hp = load ptr, ptr %10, align 8, !tbaa !528  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i88
  call void @_ZdlPv(ptr noundef %i.hp) #36
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91:       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i88, %bb.ai
  %i.hs = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.gi
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91
  call void @_ZdlPv(ptr noundef %i.hs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.hu = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.fu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZdlPv(ptr noundef %i.hu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.am

bb.aj:                                            ; preds = %.noexc.i.i68
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ak:                                            ; preds = %.noexc.i.i71
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.al:                                            ; preds = %bb.af
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gi
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.hz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.hx, %bb.ak ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.hy, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ib = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.fu
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  call void @_ZdlPv(ptr noundef %i.ib) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.aw

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !525, !noalias !536 ; 3 uses
  %.not43.i = icmp eq ptr %i.if, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ig = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ir) #35
          to label %.noexc105 unwind label %bb.au ; 4 uses

.noexc105:                                        ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ig, i8 0, i64 %i.ir, i1 false), !noalias !539
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !542, !noalias !536
  %i.ij = trunc i64 %i.ii to i32
  store i32 %i.ij, ptr %i.ig, align 1, !noalias !536
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.am, %.lr.ph.i
  %.045.i = phi i64 [ %i.ir, %.lr.ph.i ], [ 4, %bb.am ]
  %.sroa.039.044.i = phi ptr [ %i.is, %.lr.ph.i ], [ %i.if, %bb.am ] ; 3 uses
  %i.il = add i64 %.045.i, 8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !18, !noalias !536
  %i.io = add i64 %i.il, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !18, !noalias !536
  %i.ir = add i64 %i.io, %i.iq                    ; 3 uses
  %i.is = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !536 ; 2 uses
  %.not.i104 = icmp eq ptr %i.is, null
  br i1 %.not.i104, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %bb.am
  %i.it = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc106 unwind label %bb.au ; 2 uses

.noexc106:                                        ; preds = %._crit_edge51.critedge.i
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !542, !noalias !536
  %i.iw = trunc i64 %i.iv to i32
  store i32 %i.iw, ptr %i.it, align 1, !noalias !536
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc105
  %.03348.i = phi ptr [ %i.jo, %.lr.ph50.i ], [ %i.ik, %.noexc105 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.jp, %.lr.ph50.i ], [ %i.if, %.noexc105 ] ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !18, !noalias !536 ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  store i32 %i.ja, ptr %.03348.i, align 1, !noalias !536
  %i.jb = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.jc = load ptr, ptr %i.ix, align 8, !tbaa !15, !noalias !536
  %i.jd = load i64, ptr %i.iy, align 8, !tbaa !18, !noalias !536
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jb, ptr align 1 %i.jc, i64 %i.jd, i1 false), !noalias !536
  %sext.i = shl i64 %i.iz, 32
  %i.je = ashr exact i64 %sext.i, 32
  %i.jf = getelementptr inbounds i8, ptr %i.jb, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !18, !noalias !536 ; 2 uses
  %i.jj = trunc i64 %i.ji to i32
  store i32 %i.jj, ptr %i.jf, align 1, !noalias !536
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 4 ; 2 uses
  %i.jl = load ptr, ptr %i.jg, align 8, !tbaa !15, !noalias !536
  %i.jm = load i64, ptr %i.jh, align 8, !tbaa !18, !noalias !536
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jk, ptr align 1 %i.jl, i64 %i.jm, i1 false), !noalias !536
  %sext34.i = shl i64 %i.ji, 32
  %i.jn = ashr exact i64 %sext34.i, 32
  %i.jo = getelementptr inbounds i8, ptr %i.jk, i64 %i.jn
  %i.jp = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !536 ; 2 uses
  %.not42.i = icmp eq ptr %i.jp, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc106
  %.sroa.0.0 = phi ptr [ %i.it, %.noexc106 ], [ %i.ig, %.lr.ph50.i ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !254 ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !257
  %.not.i107 = icmp eq ptr %i.jr, %i.jt
  br i1 %.not.i107, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.ju = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.ju, ptr %i.jr, align 8, !tbaa !231
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.jv, ptr %i.jq, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ao:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.jw = load ptr, ptr %i.id, align 8, !tbaa !258 ; 10 uses
  %i.jx = ptrtoint ptr %i.jr to i64               ; 3 uses
  %i.jy = ptrtoint ptr %i.jw to i64               ; 3 uses
  %i.jz = sub i64 %i.jx, %i.jy                    ; 3 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %bb.ap, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc120 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144

.noexc120:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108: ; preds = %bb.ao
  %i.kb = ashr exact i64 %i.jz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i109, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i.i110 = icmp ne i64 %i.kf, 0
  call void @llvm.assume(i1 %.not.i.i.i110)
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #35
          to label %.noexc121 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144 ; 10 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jz
  %i.kj = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i111 = icmp eq ptr %i.jw, %i.jr
  br i1 %.not10.i.i.i.i.i.i111, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116, label %.lr.ph.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i112.preheader:                  ; preds = %.noexc121
  %15 = add i64 %i.jx, -8
  %16 = sub i64 %15, %i.jy                        ; 2 uses
  %i.kk = lshr i64 %16, 3
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check260 = icmp ult i64 %16, 152
  br i1 %min.iters.check260, label %.lr.ph.i.i.i.i.i.i112.preheader275, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i.i.i.i.i.i112.preheader
  %i.km = add i64 %i.jx, -8
  %i.kn = sub i64 %i.km, %i.jy
  %i.ko = and i64 %i.kn, -8
  %i.kp = add i64 %i.ko, 8                        ; 2 uses
  %scevgep254 = getelementptr i8, ptr %i.kh, i64 %i.kp
  %scevgep255 = getelementptr i8, ptr %i.jw, i64 %i.kp
  %bound0256 = icmp ult ptr %i.kh, %scevgep255
  %bound1257 = icmp ult ptr %i.jw, %scevgep254
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %.lr.ph.i.i.i.i.i.i112.preheader275, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck253
  %n.vec263 = and i64 %i.kl, 4611686018427387900  ; 3 uses
  %i.kq = shl i64 %n.vec263, 3                    ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kh, i64 %i.kq  ; 2 uses
  %i.ks = getelementptr i8, ptr %i.jw, i64 %i.kq
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph261
  %index265 = phi i64 [ 0, %vector.ph261 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.kt = shl i64 %index265, 3                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.kh, i64 %i.kt ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.jw, i64 %i.kt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ku = getelementptr i8, ptr %next.gep267, i64 16
  %wide.load268 = load <2 x i64>, ptr %next.gep267, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  %wide.load269 = load <2 x i64>, ptr %i.ku, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  %i.kv = getelementptr i8, ptr %next.gep266, i64 16
  store <2 x i64> %wide.load268, ptr %next.gep266, align 8, !tbaa !231, !alias.scope !551, !noalias !548
  store <2 x i64> %wide.load269, ptr %i.kv, align 8, !tbaa !231, !alias.scope !551, !noalias !548
  %i.kw = getelementptr i8, ptr %next.gep267, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep267, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  store <2 x ptr> splat (ptr null), ptr %i.kw, align 8, !tbaa !231, !alias.scope !548, !noalias !543
  %index.next270 = add nuw i64 %index265, 4       ; 2 uses
  %i.kx = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.kx, label %middle.block271, label %vector.body264, !llvm.loop !553

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.kl, %n.vec263
  br i1 %cmp.n272, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116, label %.lr.ph.i.i.i.i.i.i112.preheader275

.lr.ph.i.i.i.i.i.i112.preheader275:               ; preds = %vector.memcheck253, %.lr.ph.i.i.i.i.i.i112.preheader, %middle.block271
  %.012.i.i.i.i.i.i113.ph = phi ptr [ %i.kh, %vector.memcheck253 ], [ %i.kh, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.kr, %middle.block271 ]
  %.0911.i.i.i.i.i.i114.ph = phi ptr [ %i.jw, %vector.memcheck253 ], [ %i.jw, %.lr.ph.i.i.i.i.i.i112.preheader ], [ %i.ks, %middle.block271 ]
  br label %.lr.ph.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i112:                            ; preds = %.lr.ph.i.i.i.i.i.i112.preheader275, %.lr.ph.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i113 = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i112.preheader275 ] ; 2 uses
  %.0911.i.i.i.i.i.i114 = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i.i112 ], [ %.0911.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i112.preheader275 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ky = load i64, ptr %.0911.i.i.i.i.i.i114, align 8, !tbaa !231, !alias.scope !546, !noalias !543
  store i64 %i.ky, ptr %.012.i.i.i.i.i.i113, align 8, !tbaa !231, !alias.scope !543, !noalias !546
  store ptr null, ptr %.0911.i.i.i.i.i.i114, align 8, !tbaa !231, !alias.scope !546, !noalias !543
  %i.kz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i114, i64 8 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i113, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i115 = icmp eq ptr %i.kz, %i.jr
  br i1 %.not.i.i.i.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116, label %.lr.ph.i.i.i.i.i.i112, !llvm.loop !554

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116: ; preds = %.lr.ph.i.i.i.i.i.i112, %middle.block271, %.noexc121
  %.0.lcssa.i.i.i.i.i.i117 = phi ptr [ %i.kh, %.noexc121 ], [ %i.kr, %middle.block271 ], [ %i.la, %.lr.ph.i.i.i.i.i.i112 ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i117, i64 8
  %.not.i23.i.i118 = icmp eq ptr %i.jw, null
  br i1 %.not.i23.i.i118, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116
  call void @_ZdlPv(ptr noundef nonnull %i.jw) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119: ; preds = %bb.aq, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i116
  store ptr %i.kh, ptr %i.id, align 8, !tbaa !258
  store ptr %i.lb, ptr %i.jq, align 8, !tbaa !254
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kf
  store ptr %i.lc, ptr %i.js, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i119
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !231
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !272
  %i.lg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !521 ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i124, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i125

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i125: ; preds = %bb.ar
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.lh) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.lh) #36, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i125, %bb.ar
  %i.li = load ptr, ptr %i.ie, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i127 = icmp eq ptr %i.li, null
  br i1 %.not5.i.i.i.i.i127, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133
  %.06.i.i.i.i.i129 = phi ptr [ %i.lj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133 ], [ %i.li, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126 ] ; 6 uses
  %i.lj = load ptr, ptr %.06.i.i.i.i.i129, align 8, !tbaa !53 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 40
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !15 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 56
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i130: ; preds = %.lr.ph.i.i.i.i.i128
  call void @_ZdlPv(ptr noundef %i.lm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131: ; preds = %.lr.ph.i.i.i.i.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i130
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !15 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i129, i64 24
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131
  call void @_ZdlPv(ptr noundef %i.lp) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i132
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i129) #36
  %.not.i.i.i.i.i134 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i.i134, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135, label %.lr.ph.i.i.i.i.i128, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i133, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i126
  %i.ls = load ptr, ptr %7, align 8, !tbaa !528
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !529
  %i.lv = shl i64 %i.lu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ls, i8 0, i64 %i.lv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false)
  %i.lw = load ptr, ptr %7, align 8, !tbaa !528   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141, label %bb.as

bb.as:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135
  call void @_ZdlPv(ptr noundef %i.lw) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141: ; preds = %bb.as, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit141, %bb.b
  ret void

bb.au:                                            ; preds = %._crit_edge51.critedge.i, %._crit_edge.i
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i108, %bb.ap
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn41 = phi { ptr, i32 } [ %i.mb, %bb.av ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.ma, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit144 ], [ %i.lz, %bb.au ]
  call void @_ZN6duckdb19ArrowSchemaMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #34
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.aw
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %bb.aw ], [ %i.fo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

.thread172:                                       ; preds = %bb.l, %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146: ; preds = %.thread172, %.thread166
  %.pn41.pn.pn171 = phi { ptr, i32 } [ %i.df, %.thread166 ], [ %lpad.thr_comm, %.thread172 ]
  call void @_ZdaPv(ptr noundef nonnull %i.x) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn41.pn, %.thread ], [ %.pn41.pn.pn171, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i146 ]
  resume { ptr, i32 } %.pn41.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_9
begin_hunk_10_@_ZN6duckdb14ArrowConverter13ToArrowSchemaEP11ArrowSchemaRKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERKNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEERNS_16ClientPropertiesE:bb.a
  store ptr null, ptr %i.bf, align 8, !tbaa !484
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb23DuckDBArrowSchemaHolderESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.r

_ZNSt10unique_ptrIN6duckdb23DuckDBArrowSchemaHolderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ag, %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.bh = load ptr, ptr %4, align 8, !tbaa !568
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !238
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema, ptr %i.bj, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.r:                                             ; preds = %.lr.ph64, %bb.ag
  %.03363 = phi i64 [ 0, %.lr.ph64 ], [ %i.et, %bb.ag ] ; 5 uses
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.ah      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 120 ; 2 uses
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.03363)
          to label %bb.t unwind label %bb.ai      ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18, !noalias !571 ; 13 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #35
          to label %.noexc48 unwind label %bb.ai  ; 13 uses

.noexc48:                                         ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.bp, i1 false), !noalias !574
  %.not.i47 = icmp eq i64 %i.bo, 0
  br i1 %.not.i47, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc48
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !15, !noalias !571 ; 8 uses
  %min.iters.check102 = icmp ult i64 %i.bo, 4
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = sub i64 %i.br, %i.bt
  %diff.check = icmp ult i64 %i.bu, 32
  %or.cond = select i1 %min.iters.check102, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i64 %i.bo, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf105 = and i64 %i.bo, 28
  %n.vec106 = and i64 %i.bo, -32                  ; 4 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next111, %vector.body107 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index108 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load109 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !20, !noalias !571
  %wide.load110 = load <16 x i8>, ptr %i.bw, align 1, !tbaa !20, !noalias !571
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index108 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <16 x i8> %wide.load109, ptr %i.bx, align 1, !tbaa !20, !noalias !571
  store <16 x i8> %wide.load110, ptr %i.by, align 1, !tbaa !20, !noalias !571
  %index.next111 = add nuw i64 %index108, 32      ; 2 uses
  %i.bz = icmp eq i64 %index.next111, %n.vec106
  br i1 %i.bz, label %middle.block112, label %vector.body107, !llvm.loop !577

middle.block112:                                  ; preds = %vector.body107
  %cmp.n113 = icmp eq i64 %i.bo, %n.vec106
  br i1 %cmp.n113, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block112
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf105, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec106, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.bo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index116
  %wide.load117 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !20, !noalias !571
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index116
  store <4 x i8> %wide.load117, ptr %i.cb, align 1, !tbaa !20, !noalias !571
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next118, %n.vec115
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !578

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.bo, %n.vec115
  br i1 %cmp.n119, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec106, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.cg, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.08.i.prol
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20, !noalias !571
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.08.i.prol
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !20, !noalias !571
  %i.cg = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !579

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cg, %vec.epilog.scalar.ph.prol ]
  %i.ch = sub i64 %.08.i.ph, %i.bo
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.cy, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.08.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20, !noalias !571
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.08.i
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !20, !noalias !571
  %i.cm = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20, !noalias !571
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !20, !noalias !571
  %i.cq = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20, !noalias !571
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !20, !noalias !571
  %i.cu = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20, !noalias !571
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !20, !noalias !571
  %i.cy = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %i.bo
  br i1 %exitcond.not.i.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !580

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block112, %vec.epilog.middle.block, %.noexc48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.cz, align 1, !tbaa !20, !noalias !571
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 128 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !254 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bk, i64 136 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !257
  %.not.i.i49 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.de = ptrtoint ptr %i.bq to i64
  store i64 %i.de, ptr %i.db, align 8, !tbaa !231
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.da, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.v:                                             ; preds = %.loopexit
  %i.dg = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.dh = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc50 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit.split-lp

.noexc50:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #35
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  %i.dt = ptrtoint ptr %i.bq to i64
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.db
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %5 = add i64 %i.dh, -8
  %6 = sub i64 %5, %i.di                          ; 2 uses
  %i.du = lshr i64 %6, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dr, i64 8
  %i.dw = add i64 %i.dh, -8
  %i.dx = sub i64 %i.dw, %i.di
  %i.dy = and i64 %i.dx, -8                       ; 2 uses
  %scevgep94 = getelementptr i8, ptr %scevgep, i64 %i.dy
  %scevgep95 = getelementptr i8, ptr %i.dg, i64 8
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.dy
  %bound0 = icmp ult ptr %i.dr, %scevgep96
  %bound1 = icmp ult ptr %i.dg, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.dz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dr, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dg, i64 %i.dz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ec = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dr, i64 %i.ec ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.dg, i64 %i.ec ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.ed = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !231, !alias.scope !586, !noalias !581
  %wide.load98 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !231, !alias.scope !586, !noalias !581
  %i.ee = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !589, !noalias !586
  store <2 x i64> %wide.load98, ptr %i.ee, align 8, !tbaa !231, !alias.scope !589, !noalias !586
  %i.ef = getelementptr i8, ptr %next.gep97, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep97, align 8, !tbaa !231, !alias.scope !586, !noalias !581
  store <2 x ptr> splat (ptr null), ptr %i.ef, align 8, !tbaa !231, !alias.scope !586, !noalias !581
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader122

.lr.ph.i.i.i.i.i.i.i.preheader122:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dr, %vector.memcheck ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader122, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader122 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.eh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !584, !noalias !581
  store i64 %i.eh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !581, !noalias !584
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !584, !noalias !581
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.db
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !592

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.noexc51 ], [ %i.ea, %middle.block ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dr, ptr %i.bl, align 8, !tbaa !258
  store ptr %i.ek, ptr %i.da, align 8, !tbaa !254
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.el, ptr %i.dc, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.u, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.em = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.en = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 noundef %.03363)
          to label %bb.z unwind label %bb.aj      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.eo = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.ep = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.03363)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.en, ptr noundef nonnull align 8 dereferenceable(192) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.eq = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.er = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.03363)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNK6duckdb12optional_ptrINS_13ClientContextELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.es = load ptr, ptr %i.bg, align 8, !tbaa !171
  invoke void @_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %i.eq, ptr noundef nonnull align 8 dereferenceable(72) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(512) %i.es)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.et = add nuw i64 %.03363, 1                  ; 2 uses
  %exitcond71.not = icmp eq i64 %i.et, %i.h
  br i1 %exitcond71.not, label %_ZNSt10unique_ptrIN6duckdb23DuckDBArrowSchemaHolderESt14default_deleteIS1_EED2Ev.exit, label %bb.r, !llvm.loop !593

bb.ah:                                            ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %bb.t, %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit.split-lp: ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #36
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56, %bb.ah, %bb.aj, %bb.p, %bb.k, %bb.j
  %.pn42 = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.aq, %bb.k ], [ %i.ap, %bb.j ], [ %i.ew, %bb.aj ], [ %i.eu, %bb.ah ], [ %lpad.phi, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56 ], [ %i.ev, %bb.ai ]
  call void @_ZNSt10unique_ptrIN6duckdb23DuckDBArrowSchemaHolderESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !568    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_10
begin_hunk_11_@_ZN6duckdb13ArrowGeometry14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:.noexc.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cc, ptr %11, align 8, !tbaa !12
  store i16 32123, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.cd, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 18
  store i8 0, ptr %i.ce, align 2, !tbaa !20
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc99 unwind label %bb.y

.noexc99:                                         ; preds = %.noexc93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101 unwind label %bb.y

_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101: ; preds = %.noexc99
  %i.cg = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.cc
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101
  call void @_ZdlPv(ptr noundef %i.cg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN6duckdb19ArrowSchemaMetadata9AddOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.ci = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @_ZdlPv(ptr noundef %i.ci) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.z

bb.x:                                             ; preds = %.noexc.i92
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.y:                                             ; preds = %.noexc99, %.noexc93
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cc
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.cm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.co = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bw
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  call void @_ZdlPv(ptr noundef %i.co) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.x
  %.pn35.pn = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !525, !noalias !778 ; 3 uses
  %.not43.i = icmp eq ptr %i.cs, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ct = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #35
          to label %.noexc115 unwind label %bb.ah ; 4 uses

.noexc115:                                        ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.de, i1 false), !noalias !781
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !542, !noalias !778
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.ct, align 1, !noalias !778
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  %.045.i = phi i64 [ %i.de, %.lr.ph.i ], [ 4, %bb.z ]
  %.sroa.039.044.i = phi ptr [ %i.df, %.lr.ph.i ], [ %i.cs, %bb.z ] ; 3 uses
  %i.cy = add i64 %.045.i, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !18, !noalias !778
  %i.db = add i64 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18, !noalias !778
  %i.de = add i64 %i.db, %i.dd                    ; 3 uses
  %i.df = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !778 ; 2 uses
  %.not.i114 = icmp eq ptr %i.df, null
  br i1 %.not.i114, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %bb.z
  %i.dg = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc116 unwind label %bb.ah ; 2 uses

.noexc116:                                        ; preds = %._crit_edge51.critedge.i
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !542, !noalias !778
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dg, align 1, !noalias !778
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc115
  %.03348.i = phi ptr [ %i.eb, %.lr.ph50.i ], [ %i.cx, %.noexc115 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.ec, %.lr.ph50.i ], [ %i.cs, %.noexc115 ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !18, !noalias !778 ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  store i32 %i.dn, ptr %.03348.i, align 1, !noalias !778
  %i.do = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !15, !noalias !778
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !18, !noalias !778
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.dp, i64 %i.dq, i1 false), !noalias !778
  %sext.i = shl i64 %i.dm, 32
  %i.dr = ashr exact i64 %sext.i, 32
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !18, !noalias !778 ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.ds, align 1, !noalias !778
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !15, !noalias !778
  %i.dz = load i64, ptr %i.du, align 8, !tbaa !18, !noalias !778
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr align 1 %i.dy, i64 %i.dz, i1 false), !noalias !778
  %sext34.i = shl i64 %i.dv, 32
  %i.ea = ashr exact i64 %sext34.i, 32
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  %i.ec = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !778 ; 2 uses
  %.not42.i = icmp eq ptr %i.ec, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc116
  %.sroa.0.0 = phi ptr [ %i.dg, %.noexc116 ], [ %i.ct, %.lr.ph50.i ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !254 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !257
  %.not.i117 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i117, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.eh = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.eh, ptr %i.ee, align 8, !tbaa !231
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ab:                                            ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.ej = load ptr, ptr %i.cq, align 8, !tbaa !258 ; 10 uses
  %i.ek = ptrtoint ptr %i.ee to i64               ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 3 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775800
  br i1 %i.en, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc118 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123

.noexc118:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.eo = ashr exact i64 %i.em, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 1152921504606846975)
  %i.es = select i1 %i.eq, i64 1152921504606846975, i64 %i.er ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #35
          to label %.noexc119 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123 ; 10 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.em
  %i.ew = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.ew, ptr %i.ev, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.ee
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc119
  %13 = add i64 %i.ek, -8
  %14 = sub i64 %13, %i.el                        ; 2 uses
  %i.ex = lshr i64 %14, 3
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ez = add i64 %i.ek, -8
  %i.fa = sub i64 %i.ez, %i.el
  %i.fb = and i64 %i.fa, -8
  %i.fc = add i64 %i.fb, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.fc
  %scevgep170 = getelementptr i8, ptr %i.ej, i64 %i.fc
  %bound0 = icmp ult ptr %i.eu, %scevgep170
  %bound1 = icmp ult ptr %i.ej, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ey, 4611686018427387900     ; 3 uses
  %i.fd = shl i64 %n.vec, 3                       ; 2 uses
  %i.fe = getelementptr i8, ptr %i.eu, i64 %i.fd  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ej, i64 %i.fd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eu, i64 %i.fg ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ej, i64 %i.fg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.fh = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  %wide.load172 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  %i.fi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !792, !noalias !789
  store <2 x i64> %wide.load172, ptr %i.fi, align 8, !tbaa !231, !alias.scope !792, !noalias !789
  %i.fj = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep171, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  store <2 x ptr> splat (ptr null), ptr %i.fj, align 8, !tbaa !231, !alias.scope !789, !noalias !784
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader174

.lr.ph.i.i.i.i.i.i.preheader174:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.eu, %vector.memcheck ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fe, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader174, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader174 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.fl = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !787, !noalias !784
  store i64 %i.fl, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !784, !noalias !787
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !787, !noalias !784
  %i.fm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fm, %i.ee
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !795

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc119
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eu, %.noexc119 ], [ %i.fe, %middle.block ], [ %i.fn, %.lr.ph.i.i.i.i.i.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.eu, ptr %i.cq, align 8, !tbaa !258
  store ptr %i.fo, ptr %i.ed, align 8, !tbaa !254
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  store ptr %i.fp, ptr %i.ef, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.ae unwind label %bb.t

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !231
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %12, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !323
  %i.fv = icmp eq i8 %i.fu, 1
  %.str.32..str.33 = select i1 %i.fv, ptr @.str.32, ptr @.str.33
  store ptr %.str.32..str.33, ptr %1, align 8, !tbaa !274
  %i.fw = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.fw) #36
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.ga) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.ga) #36, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.gb = load ptr, ptr %i.cr, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.gc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.gb, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.gc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !15 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !15 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gi) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #36
  %.not.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i
  %i.gl = load ptr, ptr %5, align 8, !tbaa !528
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !529
  %i.go = shl i64 %i.gn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gl, i8 0, i64 %i.go, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  %i.gp = load ptr, ptr %5, align 8, !tbaa !528   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.gp) #36
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.ah:                                            ; preds = %._crit_edge51.critedge.i, %._crit_edge.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.ac
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.t
  %.pn43 = phi { ptr, i32 } [ %i.gu, %bb.ai ], [ %i.bo, %bb.t ], [ %.pn35.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.gt, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit123 ], [ %i.gs, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.j, %bb.n, %bb.aj, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
end_hunk_11
begin_hunk_12_@_ZN6duckdb9ArrowJson14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:bb.a
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !830 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18, !alias.scope !830
  %i.n = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !830
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !830
  invoke void @_ZN6duckdb19ArrowSchemaMetadata18ArrowCanonicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ArrowSchemaMetadata") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.w) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.aa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ad = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.ad) #36
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !525, !noalias !833 ; 3 uses
  %.not43.i = icmp eq ptr %i.ai, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #35
          to label %.noexc19 unwind label %bb.n   ; 4 uses

.noexc19:                                         ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.au, i1 false), !noalias !836
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !542, !noalias !833
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.aj, align 1, !noalias !833
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %.lr.ph.i
  %.045.i = phi i64 [ %i.au, %.lr.ph.i ], [ 4, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit ]
  %.sroa.039.044.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ai, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit ] ; 3 uses
  %i.ao = add i64 %.045.i, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18, !noalias !833
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !833
  %i.au = add i64 %i.ar, %i.at                    ; 3 uses
  %i.av = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !833 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  %i.aw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc20 unwind label %bb.n   ; 2 uses

.noexc20:                                         ; preds = %._crit_edge51.critedge.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !542, !noalias !833
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 1, !noalias !833
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc19
  %.03348.i = phi ptr [ %i.br, %.lr.ph50.i ], [ %i.an, %.noexc19 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.bs, %.lr.ph50.i ], [ %i.ai, %.noexc19 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18, !noalias !833 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %.03348.i, align 1, !noalias !833
  %i.be = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !15, !noalias !833
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !18, !noalias !833
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.bf, i64 %i.bg, i1 false), !noalias !833
  %sext.i = shl i64 %i.bc, 32
  %i.bh = ashr exact i64 %sext.i, 32
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18, !noalias !833 ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %i.bi, align 1, !noalias !833
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !15, !noalias !833
  %i.bp = load i64, ptr %i.bk, align 8, !tbaa !18, !noalias !833
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bo, i64 %i.bp, i1 false), !noalias !833
  %sext34.i = shl i64 %i.bl, 32
  %i.bq = ashr exact i64 %sext34.i, 32
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !833 ; 2 uses
  %.not42.i = icmp eq ptr %i.bs, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc20
  %.sroa.0.0 = phi ptr [ %i.aw, %.noexc20 ], [ %i.aj, %.lr.ph50.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !254 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !257
  %.not.i21 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.bx = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !231
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.g:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !258 ; 10 uses
  %i.ca = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc22 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit30

.noexc22:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #35
          to label %.noexc23 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit30 ; 10 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bu
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc23
  %9 = add i64 %i.ca, -8
  %10 = sub i64 %9, %i.cb                         ; 2 uses
  %i.cn = lshr i64 %10, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cp = add i64 %i.ca, -8
  %i.cq = sub i64 %i.cp, %i.cb
  %i.cr = and i64 %i.cq, -8
  %i.cs = add i64 %i.cr, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ck, i64 %i.cs
  %scevgep56 = getelementptr i8, ptr %i.bz, i64 %i.cs
  %bound0 = icmp ult ptr %i.ck, %scevgep56
  %bound1 = icmp ult ptr %i.bz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.ct = shl i64 %n.vec, 3                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ck, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bz, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cw ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.bz, i64 %i.cw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.cx = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  %wide.load58 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !847, !noalias !844
  store <2 x i64> %wide.load58, ptr %i.cy, align 8, !tbaa !231, !alias.scope !847, !noalias !844
  %i.cz = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !231, !alias.scope !844, !noalias !839
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !849

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.preheader60:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader60 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.db = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !842, !noalias !839
  store i64 %i.db, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !839, !noalias !842
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !842, !noalias !839
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.bu
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !850

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc23 ], [ %i.cu, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ck, ptr %i.ag, align 8, !tbaa !258
  store ptr %i.de, ptr %i.bt, align 8, !tbaa !254
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.df, ptr %i.bv, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !231
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %8, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 34
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !322, !range !43, !noundef !44
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dn = load i8, ptr %i.dm, align 8
  %i.do = icmp eq i8 %i.dn, 1
  %.str.17..str.18 = select i1 %i.do, ptr @.str.17, ptr @.str.18
  %.str.17.sink = select i1 %i.dl, ptr @.str.16, ptr %.str.17..str.18
  store ptr %.str.17.sink, ptr %1, align 8, !tbaa !274
  %i.dp = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

bb.l:                                             ; preds = %.noexc.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.m:                                             ; preds = %bb.d
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.c
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.du) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.l ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.dt, %bb.m ]
  call void @_ZN6duckdb22ArrowExtensionMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.s

bb.n:                                             ; preds = %._crit_edge51.critedge.i, %._crit_edge.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit30: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.dp) #36
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.eb) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #36, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.ec = load ptr, ptr %i.ah, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ed, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ec, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ed = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !15 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.eg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !15 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ej) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

end_hunk_12
begin_hunk_13_@_ZN6duckdb8ArrowBit14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:bb.a
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.ap) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.as = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.as) #36
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.av = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.av) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31
  call void @_ZdlPv(ptr noundef %i.bb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33
  call void @_ZdlPv(ptr noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34
  %i.bi = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35
  call void @_ZdlPv(ptr noundef %i.bi) #36
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !525, !noalias !875 ; 3 uses
  %.not43.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #35
          to label %.noexc42 unwind label %bb.u   ; 4 uses

.noexc42:                                         ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 0, i64 %i.bz, i1 false), !noalias !878
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !542, !noalias !875
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bo, align 1, !noalias !875
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, %.lr.ph.i
  %.045.i = phi i64 [ %i.bz, %.lr.ph.i ], [ 4, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ]
  %.sroa.039.044.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.bn, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ] ; 3 uses
  %i.bt = add i64 %.045.i, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18, !noalias !875
  %i.bw = add i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18, !noalias !875
  %i.bz = add i64 %i.bw, %i.by                    ; 3 uses
  %i.ca = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !875 ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41
  %i.cb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc43 unwind label %bb.u   ; 2 uses

.noexc43:                                         ; preds = %._crit_edge51.critedge.i
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !542, !noalias !875
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.cb, align 1, !noalias !875
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc42
  %.03348.i = phi ptr [ %i.cw, %.lr.ph50.i ], [ %i.bs, %.noexc42 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.cx, %.lr.ph50.i ], [ %i.bn, %.noexc42 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !875 ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %.03348.i, align 1, !noalias !875
  %i.cj = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !15, !noalias !875
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cl, i1 false), !noalias !875
  %sext.i = shl i64 %i.ch, 32
  %i.cm = ashr exact i64 %sext.i, 32
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !875 ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.cn, align 1, !noalias !875
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !15, !noalias !875
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !875
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.ct, i64 %i.cu, i1 false), !noalias !875
  %sext34.i = shl i64 %i.cq, 32
  %i.cv = ashr exact i64 %sext34.i, 32
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %i.cx = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !875 ; 2 uses
  %.not42.i = icmp eq ptr %i.cx, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc43
  %.sroa.0.0 = phi ptr [ %i.cb, %.noexc43 ], [ %i.bo, %.lr.ph50.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !254 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !257
  %.not.i44 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.dc = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.j:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.df = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc45 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59

.noexc45:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #35
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59 ; 10 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc46
  %11 = add i64 %i.df, -8
  %12 = sub i64 %11, %i.dg                        ; 2 uses
  %i.ds = lshr i64 %12, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.du = add i64 %i.df, -8
  %i.dv = sub i64 %i.du, %i.dg
  %i.dw = and i64 %i.dv, -8
  %i.dx = add i64 %i.dw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dp, i64 %i.dx
  %scevgep88 = getelementptr i8, ptr %i.de, i64 %i.dx
  %bound0 = icmp ult ptr %i.dp, %scevgep88
  %bound1 = icmp ult ptr %i.de, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4611686018427387900     ; 3 uses
  %i.dy = shl i64 %n.vec, 3                       ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dp, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.de, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.eb ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.de, i64 %i.eb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.ec = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  %wide.load90 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !889, !noalias !886
  store <2 x i64> %wide.load90, ptr %i.ed, align 8, !tbaa !231, !alias.scope !889, !noalias !886
  %i.ee = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep89, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  store <2 x ptr> splat (ptr null), ptr %i.ee, align 8, !tbaa !231, !alias.scope !886, !noalias !881
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !891

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.i.preheader92:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.eg = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !884, !noalias !881
  store i64 %i.eg, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !881, !noalias !884
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !884, !noalias !881
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !892

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc46
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %.noexc46 ], [ %i.dz, %middle.block ], [ %i.ei, %.lr.ph.i.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.dp, ptr %i.bl, align 8, !tbaa !258
  store ptr %i.ej, ptr %i.cy, align 8, !tbaa !254
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.ek, ptr %i.da, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !231
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !323
  %i.eq = icmp eq i8 %i.ep, 1
  %.str.32..str.33 = select i1 %i.eq, ptr @.str.32, ptr @.str.33
  store ptr %.str.32..str.33, ptr %1, align 8, !tbaa !274
  %i.er = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.er) #36
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.ev) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.ev) #36, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.ew = load ptr, ptr %i.bm, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ex, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ew, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ex = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !15 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !15 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fd) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #36
  %.not.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i
  %i.fg = load ptr, ptr %5, align 8, !tbaa !528
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !529
  %i.fj = shl i64 %i.fi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.fk = load ptr, ptr %5, align 8, !tbaa !528   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.fk) #36
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.p:                                             ; preds = %.noexc.i.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.q:                                             ; preds = %bb.d
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i.i25
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.s:                                             ; preds = %bb.g
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.s
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.fr) #36
end_hunk_13
begin_hunk_14_@_ZN6duckdb11ArrowBignum14PopulateSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKNS_18ArrowTypeExtensionE:bb.a
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.ap) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.as = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.as) #36
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.av = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.av) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31
  call void @_ZdlPv(ptr noundef %i.bb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i32
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33
  call void @_ZdlPv(ptr noundef %i.bf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i34
  %i.bi = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35
  call void @_ZdlPv(ptr noundef %i.bi) #36
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !525, !noalias !911 ; 3 uses
  %.not43.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i, label %._crit_edge51.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #35
          to label %.noexc42 unwind label %bb.u   ; 4 uses

.noexc42:                                         ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 0, i64 %i.bz, i1 false), !noalias !914
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !542, !noalias !911
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bo, align 1, !noalias !911
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  br label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41, %.lr.ph.i
  %.045.i = phi i64 [ %i.bz, %.lr.ph.i ], [ 4, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ]
  %.sroa.039.044.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.bn, %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41 ] ; 3 uses
  %i.bt = add i64 %.045.i, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18, !noalias !911
  %i.bw = add i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.039.044.i, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18, !noalias !911
  %i.bz = add i64 %i.bw, %i.by                    ; 3 uses
  %i.ca = load ptr, ptr %.sroa.039.044.i, align 8, !tbaa !53, !noalias !911 ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge51.critedge.i:                         ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit41
  %i.cb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #35
          to label %.noexc43 unwind label %bb.u   ; 2 uses

.noexc43:                                         ; preds = %._crit_edge51.critedge.i
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !542, !noalias !911
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.cb, align 1, !noalias !911
  br label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit

.lr.ph50.i:                                       ; preds = %.lr.ph50.i, %.noexc42
  %.03348.i = phi ptr [ %i.cw, %.lr.ph50.i ], [ %i.bs, %.noexc42 ] ; 2 uses
  %.sroa.035.047.i = phi ptr [ %i.cx, %.lr.ph50.i ], [ %i.bn, %.noexc42 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !911 ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %.03348.i, align 1, !noalias !911
  %i.cj = getelementptr inbounds nuw i8, ptr %.03348.i, i64 4 ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !15, !noalias !911
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !911
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cl, i1 false), !noalias !911
  %sext.i = shl i64 %i.ch, 32
  %i.cm = ashr exact i64 %sext.i, 32
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.035.047.i, i64 48 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !911 ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.cn, align 1, !noalias !911
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !15, !noalias !911
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !18, !noalias !911
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.ct, i64 %i.cu, i1 false), !noalias !911
  %sext34.i = shl i64 %i.cq, 32
  %i.cv = ashr exact i64 %sext34.i, 32
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %i.cx = load ptr, ptr %.sroa.035.047.i, align 8, !tbaa !53, !noalias !911 ; 2 uses
  %.not42.i = icmp eq ptr %i.cx, null
  br i1 %.not42.i, label %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit, label %.lr.ph50.i

_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit: ; preds = %.lr.ph50.i, %.noexc43
  %.sroa.0.0 = phi ptr [ %i.cb, %.noexc43 ], [ %i.bo, %.lr.ph50.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !254 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !257
  %.not.i44 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.dc = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.j:                                             ; preds = %_ZNK6duckdb19ArrowSchemaMetadata17SerializeMetadataEv.exit
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.df = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc45 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59

.noexc45:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #35
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit59 ; 10 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = ptrtoint ptr %.sroa.0.0 to i64
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc46
  %11 = add i64 %i.df, -8
  %12 = sub i64 %11, %i.dg                        ; 2 uses
  %i.ds = lshr i64 %12, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.du = add i64 %i.df, -8
  %i.dv = sub i64 %i.du, %i.dg
  %i.dw = and i64 %i.dv, -8
  %i.dx = add i64 %i.dw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dp, i64 %i.dx
  %scevgep88 = getelementptr i8, ptr %i.de, i64 %i.dx
  %bound0 = icmp ult ptr %i.dp, %scevgep88
  %bound1 = icmp ult ptr %i.de, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4611686018427387900     ; 3 uses
  %i.dy = shl i64 %n.vec, 3                       ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dp, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.de, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.eb ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.de, i64 %i.eb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.ec = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  %wide.load90 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !925, !noalias !922
  store <2 x i64> %wide.load90, ptr %i.ed, align 8, !tbaa !231, !alias.scope !925, !noalias !922
  %i.ee = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep89, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  store <2 x ptr> splat (ptr null), ptr %i.ee, align 8, !tbaa !231, !alias.scope !922, !noalias !917
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.i.preheader92:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.eg = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !920, !noalias !917
  store i64 %i.eg, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !917, !noalias !920
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !920, !noalias !917
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !928

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc46
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %.noexc46 ], [ %i.dz, %middle.block ], [ %i.ei, %.lr.ph.i.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.dp, ptr %i.bl, align 8, !tbaa !258
  store ptr %i.ej, ptr %i.cy, align 8, !tbaa !254
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.ek, ptr %i.da, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !231
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !323
  %i.eq = icmp eq i8 %i.ep, 1
  %.str.32..str.33 = select i1 %i.eq, ptr @.str.32, ptr @.str.33
  store ptr %.str.32..str.33, ptr %1, align 8, !tbaa !274
  %i.er = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZN6duckdb16ClientPropertiesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.er) #36
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit

_ZN6duckdb16ClientPropertiesD2Ev.exit:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !521 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb16ClientPropertiesD2Ev.exit
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.ev) #34, !inline_history !524
  call void @_ZdlPv(ptr noundef nonnull %i.ev) #36, !inline_history !524
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i, %_ZN6duckdb16ClientPropertiesD2Ev.exit
  %i.ew = load ptr, ptr %i.bm, align 8, !tbaa !525 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ex, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ew, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i ] ; 6 uses
  %i.ex = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !15 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !15 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fd) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #36
  %.not.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !527

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit.i
  %i.fg = load ptr, ptr %5, align 8, !tbaa !528
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !529
  %i.fj = shl i64 %i.fi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.fk = load ptr, ptr %5, align 8, !tbaa !528   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.fk) #36
  br label %_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit

_ZN6duckdb19ArrowSchemaMetadataD2Ev.exit:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.p:                                             ; preds = %.noexc.i.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.q:                                             ; preds = %bb.d
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i.i25
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.s:                                             ; preds = %bb.g
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.s
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.fr) #36
end_hunk_14
begin_hunk_15_@_ZN6duckdb23enable_shared_from_thisINS_5EventEE16shared_from_thisEv:bb.a

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %.06.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f, !llvm.loop !1220

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.f, %_ZN6duckdb8weak_ptrINS_5EventELb1EEC2ERKS2_.exit
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #37
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  store ptr %i.a, ptr %0, align 8, !tbaa !947
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i2 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.u, %bb.j ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.k, label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !1221
  br label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit

_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit:     ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i4 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i6 = phi i32 [ %i.ac, %bb.n ], [ %i.ae, %bb.o ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i6, 1
  br i1 %i.af, label %bb.p, label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !1221
  br label %_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7

_ZN6duckdb8weak_ptrINS_5EventELb1EED2Ev.exit7:    ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5, %bb.p
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !77
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1222
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1222
  br label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb29BatchCollectionChunkScanStateD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1087 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1090   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1203
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !1223
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1087
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #37
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #35 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !1223
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1233, !noalias !1230
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1091, !alias.scope !1233, !noalias !1230
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1091, !alias.scope !1230, !noalias !1225
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1228, !noalias !1225
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1225, !noalias !1228
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1228, !noalias !1225
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1236

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #36
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1090
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1087
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1203
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.au) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #36
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1087
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb16ArrowQueryResult12SetArrowDataENS_6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) initializes((408, 416)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1090 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1087 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !1204
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !1204
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1203
  store ptr %i.h, ptr %i.e, align 8, !tbaa !1203
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.i) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #36
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  ret void
}

declare void @_ZN6duckdb5Event8SetTasksENS_6vectorINS_10shared_ptrINS_4TaskELb1EEELb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1192   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1188 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_4TaskELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !77
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #34, !inline_history !1237
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #34, !inline_history !1237
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_4TaskELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
end_hunk_15
begin_hunk_16_@_ZN6duckdb29ResultArrowArrayStreamWrapperC2ENS_10unique_ptrINS_11QueryResultESt14default_deleteIS2_ELb1EEEm:bb.a
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #34
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #34
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.c) #34
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.s, %bb.g ]
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !1282 ; 3 uses
  %.not.i13 = icmp eq ptr %i.bn, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i: ; preds = %bb.z
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(392) %i.bn) #34, !inline_history !1296
  br label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.z, %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i
  resume { ptr, i32 } %.pn.pn.pn

bb.aa:                                            ; preds = %bb.f
  unreachable
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb22PhysicalArrowCollector6CreateERNS_13ClientContextERNS_21PreparedStatementDataEm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(266) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1307 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb21PhysicalPlanGenerator22PreserveInsertionOrderERNS_13ClientContextERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.g)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i8 1, ptr %i.b, align 1, !tbaa !745
  %i.i = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_22PhysicalArrowCollectorEJRNS_21PreparedStatementDataEbRmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb21PhysicalPlanGenerator13UseBatchIndexERNS_13ClientContextERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.g)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i8 0, ptr %i.c, align 1, !tbaa !745
  %i.k = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_22PhysicalArrowCollectorEJRNS_21PreparedStatementDataEbRmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_27PhysicalArrowBatchCollectorEJRNS_21PreparedStatementDataERmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.i, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1308   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN6duckdb21PhysicalPlanGenerator22PreserveInsertionOrderERNS_13ClientContextERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_22PhysicalArrowCollectorEJRNS_21PreparedStatementDataEbRmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 336) ; 7 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !745, !range !43, !noundef !44
  %i.c = load i64, ptr %3, align 8, !tbaa !19
  tail call void @_ZN6duckdb23PhysicalResultCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(329) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(266) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN6duckdb22PhysicalArrowCollectorE, i64 16), ptr %i.a, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 %i.c, ptr %i.d, align 8, !tbaa !1310
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i8 %i.b, ptr %i.e, align 8, !tbaa !1335
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1336 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1337
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.a to i64
  store i64 %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1336
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !1336
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !1338 ; 7 uses
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #35 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %i.a to i64
  store i64 %i.aa, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %4 = add i64 %i.o, -8
  %5 = sub i64 %4, %i.p                           ; 2 uses
  %i.ac = lshr i64 %5, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  %i.ae = sub i64 %i.ab, %i.p
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.aj = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !alias.scope !1342, !noalias !1339
  %wide.load10 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !1342, !noalias !1339
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1339, !noalias !1342
  store <2 x i64> %wide.load10, ptr %i.ak, align 8, !alias.scope !1339, !noalias !1342
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.preheader12:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader12 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1342, !noalias !1339
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1339, !noalias !1342
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1345

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !1338
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !1336
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !1337
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN6duckdb21PhysicalPlanGenerator13UseBatchIndexERNS_13ClientContextERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_27PhysicalArrowBatchCollectorEJRNS_21PreparedStatementDataERmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(266) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 328) ; 6 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !19
  tail call void @_ZN6duckdb22PhysicalBatchCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(266) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN6duckdb27PhysicalArrowBatchCollectorE, i64 16), ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 %i.b, ptr %i.c, align 8, !tbaa !1346
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1336 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1337
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1336
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1336
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1338 ; 7 uses
  %i.m = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #35 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.n                           ; 2 uses
  %i.aa = lshr i64 %4, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  %i.ac = sub i64 %i.z, %i.n
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.ah = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !1352, !noalias !1349
  %wide.load9 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !1352, !noalias !1349
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1349, !noalias !1352
  store <2 x i64> %wide.load9, ptr %i.ai, align 8, !alias.scope !1349, !noalias !1352
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1352, !noalias !1349
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1349, !noalias !1352
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1355

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1338
  store ptr %i.an, ptr %i.e, align 8, !tbaa !1336
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !1337
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalArrowCollector4SinkERNS_16ExecutionContextERNS_9DataChunkERNS_17OperatorSinkInputE(ptr noundef nonnull align 8 dereferenceable(329) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ClientProperties", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.850", align 8 ; 7 uses
  %6 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1356, !nonnull !44, !align !1011 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !209  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.r, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bf, %bb.r ]    ; 4 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !1360
  %.not36 = icmp eq ptr %i.m, null
  br i1 %.not36, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = sub i64 %i.e, %.0
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.n = load ptr, ptr %1, align 8, !tbaa !1362, !nonnull !44, !align !1011
  call void @_ZN6duckdb13ClientContext19GetClientPropertiesEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ClientProperties") align 8 %4, ptr noundef nonnull align 8 dereferenceable(512) %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.o = load i64, ptr %i.g, align 8, !tbaa !1310
  %i.p = sub i64 %i.e, %.0                        ; 2 uses
  %i.q = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.p)
  store i64 %i.q, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.r = load ptr, ptr %1, align 8, !tbaa !1362, !nonnull !44, !align !1011
  invoke void @_ZN6duckdb22ArrowTypeExtensionData17GetExtensionTypesERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb9make_uniqINS_13ArrowAppenderEJRKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEERmRNS_16ClientPropertiesESt13unordered_mapImKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmSF_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.850") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %5, align 8, !tbaa !1360
  store ptr null, ptr %5, align 8, !tbaa !1360
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !1360 ; 3 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !1360
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13ArrowAppenderESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.e
  call void @_ZN6duckdb13ArrowAppenderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.t) #34
  call void @_ZdlPv(ptr noundef nonnull %i.t) #36
  %.pr = load ptr, ptr %5, align 8, !tbaa !1360   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ArrowAppenderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb13ArrowAppenderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #34
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36
  br label %_ZNSt10unique_ptrIN6duckdb13ArrowAppenderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ArrowAppenderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !225  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb13ArrowAppenderESt14default_deleteIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.v, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i ], [ %i.u, %_ZNSt10unique_ptrIN6duckdb13ArrowAppenderESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.06.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.y, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !77
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #34, !inline_history !226
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #34, !inline_history !226
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.i ], [ %i.al, %bb.j ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i, !prof !81

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmKN6duckdb10shared_ptrINS4_22ArrowTypeExtensionDataELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i

end_hunk_16
begin_hunk_17_@_ZN6duckdb9make_uniqINS_13ArrowAppenderEJRKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEERmRNS_16ClientPropertiesESt13unordered_mapImKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmSF_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit12

bb.s:                                             ; preds = %_ZNSt13unordered_mapImKN6duckdb10shared_ptrINS0_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEC2EOSD_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #34
  %i.bw = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.d
  br i1 %i.bx, label %_ZN6duckdb16ClientPropertiesD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bw) #36
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit12

_ZN6duckdb16ClientPropertiesD2Ev.exit12:          ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10 ], [ %i.bv, %bb.s ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN6duckdb16ClientPropertiesD2Ev.exit12
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6duckdb16ClientPropertiesD2Ev.exit12 ], [ %i.bt, %bb.q ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1360   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb24ArrowCollectorLocalState11FinishArrayEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.661", align 8 ; 10 uses
  %2 = alloca %struct.ArrowArray, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35, !noalias !1366 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !1207, !noalias !1366
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.b, align 8, !tbaa !1212, !noalias !1366
  store ptr %i.a, ptr %1, align 8, !tbaa !1091, !alias.scope !1366
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !163  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.g = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb13ArrowAppender8FinalizeEv(ptr dead_on_unwind nonnull writable sret(%struct.ArrowArray) align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1360 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1360
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i.i.i: ; preds = %bb.e
  call void @_ZN6duckdb13ArrowAppenderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.i) #34
  call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb13ArrowAppenderEEclEPS1_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1087 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1203
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.f, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.o = load i64, ptr %1, align 8, !tbaa !1091
  store i64 %i.o, ptr %i.l, align 8, !tbaa !1091
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !1087
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1369
  %i.s = add i64 %i.r, %i.f
  store i64 %i.s, ptr %i.q, align 8, !tbaa !1369
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZN6duckdb10unique_ptrINS_13ArrowAppenderESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !1090 ; 10 uses
  %i.u = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #35
          to label %.noexc5 unwind label %bb.i    ; 10 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %i.ag = load i64, ptr %1, align 8, !tbaa !1091
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1091
  store ptr null, ptr %1, align 8, !tbaa !1091
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %3 = add i64 %i.u, -8
  %4 = sub i64 %3, %i.v                           ; 2 uses
  %i.ah = lshr i64 %4, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aj = add i64 %i.u, -8
  %i.ak = sub i64 %i.aj, %i.v
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.am
  %scevgep14 = getelementptr i8, ptr %i.t, i64 %i.am
  %bound0 = icmp ult ptr %i.ae, %scevgep14
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.t, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.aq ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.t, i64 %i.aq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.ar = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %wide.load16 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1395, !noalias !1392
  store <2 x i64> %wide.load16, ptr %i.as, align 8, !tbaa !1091, !alias.scope !1395, !noalias !1392
  %i.at = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !1091, !alias.scope !1392, !noalias !1387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.i.i.preheader18:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader18 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.av = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1390, !noalias !1387
  store i64 %i.av, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1387, !noalias !1390
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1091, !alias.scope !1390, !noalias !1387
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1398

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc5 ], [ %i.ao, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.h
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !1090
  store ptr %i.ay, ptr %i.k, align 8, !tbaa !1087
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.az, ptr %i.m, align 8, !tbaa !1203
  %.pr = load ptr, ptr %1, align 8, !tbaa !1091   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1369
  %i.bc = add i64 %i.bb, %i.f
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !1369
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #34
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g, %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.be, %bb.j ]
  %i.bf = load ptr, ptr %1, align 8, !tbaa !1091  ; 3 uses
  %.not.i6 = icmp eq ptr %i.bf, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7: ; preds = %bb.k
  call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bf) #34
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #36
  br label %_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb17ArrowArrayWrapperESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb22PhysicalArrowCollector7CombineERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !1399, !nonnull !44, !align !1011 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1401, !nonnull !44, !align !1011 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1204
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1204
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !1360
  %.not25 = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.i, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  tail call void @_ZN6duckdb24ArrowCollectorLocalState11FinishArrayEv(ptr noundef nonnull align 8 dereferenceable(88) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.l) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1204
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1204
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !1204
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !1204 ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  invoke void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.v, ptr %i.p, ptr %i.q)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1090 ; 3 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1087 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.y) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #36
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.w, ptr %i.g, align 8, !tbaa !1087
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
end_hunk_17
begin_hunk_18_@_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterEiE15AppendTemplatedILb1EEEvRNS_15ArrowAppendDataERNS_6VectorEmmm:bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.eb, align 8 ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.0.0.copyload, ptr %5, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.bo, align 8
  %i.en = trunc i64 %.sroa.0.0.copyload to i32
  %i.eo = icmp ult i32 %i.en, 13
  %i.ep = select i1 %i.eo, ptr %i.bp, ptr %.sroa.2.0.copyload
  %i.eq = and i64 %.sroa.0.0.copyload, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.165 = phi i32 [ %i.ef, %bb.ak ], [ %.06489, %bb.ag ]
  %i.er = add i64 %.06688, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.ae, !llvm.loop !1608

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.m, %bb.o, %bb.q, %bb.am, %bb.p, %bb.n, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.be, %bb.o ], [ %i.bf, %bb.p ], [ %i.bg, %bb.q ], [ %i.es, %bb.am ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIhE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %2) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.c) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.c) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !153
  store i64 %i.c, ptr %i.d, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
  %i.i = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !77
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34, !inline_history !80
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.l, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ab = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb8EnumType20GetValuesInsertOrderERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ad = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb13ArrowEnumDataIhE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ab, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ad)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !82 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i13, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.aj = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !86 ; 10 uses
  %i.am = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #35
          to label %.noexc15 unwind label %bb.w   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ag
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %6 = add i64 %i.am, -8
  %7 = sub i64 %6, %i.an                          ; 2 uses
  %i.az = lshr i64 %7, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bb = add i64 %i.am, -8
  %i.bc = sub i64 %i.bb, %i.an
  %i.bd = and i64 %i.bc, -8
  %i.be = add i64 %i.bd, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.be
  %scevgep23 = getelementptr i8, ptr %i.al, i64 %i.be
  %bound0 = icmp ult ptr %i.aw, %scevgep23
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.al, i64 %i.bi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.bj = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  %wide.load25 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1617, !noalias !1614
  store <2 x i64> %wide.load25, ptr %i.bk, align 8, !tbaa !71, !alias.scope !1617, !noalias !1614
  %i.bl = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !71, !alias.scope !1614, !noalias !1609
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !1619

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1612, !noalias !1609
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1609, !noalias !1612
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1612, !noalias !1609
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1620

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc15 ], [ %i.bg, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.aw, ptr %i.ae, align 8, !tbaa !86
  store ptr %i.bq, ptr %i.af, align 8, !tbaa !82
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.br, ptr %i.ah, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.t:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.u ], [ %i.bs, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.o, %bb.n, %bb.m, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIhE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef ptr @_ZN6duckdb13ArrowAppender13FinalizeChildERKNS_11LogicalTypeENS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !tbaa.struct !202
  %i.n = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.n) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %i.n) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext) unnamed_addr #3

declare noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIhE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2) ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 9 uses
end_hunk_18
begin_hunk_19_@_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %i.k = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataItE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 1
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !153
  store i64 %i.d, ptr %i.e, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
  %i.j = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !77
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !80
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.j ], [ %i.aa, %bb.k ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.l, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ac = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb8EnumType20GetValuesInsertOrderERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb13ArrowEnumDataItE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 noundef %i.ae)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  %.not.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i13, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.ak = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !86 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #35
          to label %.noexc15 unwind label %bb.w   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %6 = add i64 %i.an, -8
  %7 = sub i64 %6, %i.ao                          ; 2 uses
  %i.ba = lshr i64 %7, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bc = add i64 %i.an, -8
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bf
  %scevgep23 = getelementptr i8, ptr %i.am, i64 %i.bf
  %bound0 = icmp ult ptr %i.ax, %scevgep23
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ax, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bj ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.am, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.bk = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  %wide.load25 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1634, !noalias !1631
  store <2 x i64> %wide.load25, ptr %i.bl, align 8, !tbaa !71, !alias.scope !1634, !noalias !1631
  %i.bm = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !71, !alias.scope !1631, !noalias !1626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1629, !noalias !1626
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1626, !noalias !1629
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1629, !noalias !1626
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1637

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc15 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !86
  store ptr %i.br, ptr %i.ag, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.t:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.u ], [ %i.bt, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.o, %bb.n, %bb.m, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataItE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef ptr @_ZN6duckdb13ArrowAppender13FinalizeChildERKNS_11LogicalTypeENS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !tbaa.struct !202
  %i.n = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.n) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %i.n) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataItE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2) ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 9 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !195
  %i.f = add i64 %2, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = lshr i64 %i.g, 3                         ; 6 uses
end_hunk_19
begin_hunk_20_@_ZN6duckdb13ArrowEnumDataItE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm:bb.a
bb.m:                                             ; preds = %bb.k
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.bq) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41: ; preds = %bb.m, %bb.l
  %storemerge.i.i.i42 = phi ptr [ %i.bt, %bb.m ], [ %i.bs, %bb.l ] ; 2 uses
  store ptr %storemerge.i.i.i42, ptr %i.c, align 8, !tbaa !153
  store i64 %i.bq, ptr %i.bb, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer6resizeEm.exit43

_ZN6duckdb11ArrowBuffer6resizeEm.exit43:          ; preds = %bb.j, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41
  %i.bu = phi ptr [ %.pre, %bb.j ], [ %storemerge.i.i.i42, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i41 ]
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !1501
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bk
  %.sroa.0.0.copyload = load i64, ptr %i.bi, align 8 ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload, ptr %3, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.bd, align 8
  %i.bw = trunc i64 %.sroa.0.0.copyload to i32
  %i.bx = icmp ult i32 %i.bw, 13
  %i.by = select i1 %i.bx, ptr %i.be, ptr %.sroa.2.0.copyload
  %i.bz = and i64 %.sroa.0.0.copyload, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.bz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ca = add nuw i64 %.03644, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !1639
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIjE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !153
  store i64 %i.d, ptr %i.e, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
  %i.j = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !77
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !80
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.j ], [ %i.aa, %bb.k ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.l, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ac = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb8EnumType20GetValuesInsertOrderERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef i64 @_ZN6duckdb8EnumType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb13ArrowEnumDataIjE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 noundef %i.ae)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  %.not.i.i13 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i13, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.ak = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !86 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #35
          to label %.noexc15 unwind label %bb.w   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %6 = add i64 %i.an, -8
  %7 = sub i64 %6, %i.ao                          ; 2 uses
  %i.ba = lshr i64 %7, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bc = add i64 %i.an, -8
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bf
  %scevgep23 = getelementptr i8, ptr %i.am, i64 %i.bf
  %bound0 = icmp ult ptr %i.ax, %scevgep23
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ax, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bj ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.am, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.bk = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  %wide.load25 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1648, !noalias !1645
  store <2 x i64> %wide.load25, ptr %i.bl, align 8, !tbaa !71, !alias.scope !1648, !noalias !1645
  %i.bm = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !71, !alias.scope !1645, !noalias !1640
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1650

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1643, !noalias !1640
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1640, !noalias !1643
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1643, !noalias !1640
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1651

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc15 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !86
  store ptr %i.br, ptr %i.ag, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.t:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.u ], [ %i.bt, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.o, %bb.n, %bb.m, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn11 = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIjE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.a, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef ptr @_ZN6duckdb13ArrowAppender13FinalizeChildERKNS_11LogicalTypeENS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS5_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !tbaa.struct !202
  %i.n = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.n) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %i.n) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowEnumDataIjE16EnumAppendVectorERNS_15ArrowAppendDataERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2) ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 9 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !195
  %i.f = add i64 %2, 7
  %i.g = add i64 %i.f, %i.e
  %i.h = lshr i64 %i.g, 3                         ; 6 uses
end_hunk_20
begin_hunk_21_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv:bb.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb14ArrowUnionData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb14ArrowUnionData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb14ArrowUnionData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

declare void @_ZN6duckdb15ArrowStructData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb15ArrowStructData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb15ArrowStructData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) #3

declare void @_ZN6duckdb22ArrowFixedSizeListData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 3                            ; 2 uses
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !153
  store i64 %i.e, ptr %i.f, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 2) ; 3 uses
  %i.l = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !151
  %.not.i12 = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i12, label %bb.e, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !153  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.l) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.l) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14: ; preds = %bb.g, %bb.f
  %storemerge.i.i15 = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  store ptr %storemerge.i.i15, ptr %i.k, align 8, !tbaa !153
  store i64 %i.l, ptr %i.m, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

_ZN6duckdb11ArrowBuffer7reserveEm.exit16:         ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !77
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !80
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not.i.i17 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i17, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ao = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !86 ; 10 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i18 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i18)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #35
          to label %.noexc19 unwind label %bb.s   ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %5 = add i64 %i.ar, -8
  %6 = sub i64 %5, %i.as                          ; 2 uses
  %i.be = lshr i64 %6, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bg = add i64 %i.ar, -8
  %i.bh = sub i64 %i.bg, %i.as
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bj
  %scevgep29 = getelementptr i8, ptr %i.aq, i64 %i.bj
  %bound0 = icmp ult ptr %i.bb, %scevgep29
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.aq, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.aq, i64 %i.bn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.bo = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  %wide.load31 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1663, !noalias !1660
  store <2 x i64> %wide.load31, ptr %i.bp, align 8, !tbaa !71, !alias.scope !1663, !noalias !1660
  %i.bq = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !71, !alias.scope !1660, !noalias !1655
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1665

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1658, !noalias !1655
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1655, !noalias !1658
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1658, !noalias !1655
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1666

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc19 ], [ %i.bl, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !86
  store ptr %i.bv, ptr %i.ak, align 8, !tbaa !82
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bw, ptr %i.am, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.r:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bx, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIlE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17ArrowListViewDataIlE18AppendListMetadataERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !195
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !195
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
end_hunk_21
begin_hunk_22_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 2                            ; 2 uses
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !153
  store i64 %i.e, ptr %i.f, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 2) ; 3 uses
  %i.l = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !151
  %.not.i12 = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i12, label %bb.e, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !153  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.l) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.l) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14: ; preds = %bb.g, %bb.f
  %storemerge.i.i15 = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  store ptr %storemerge.i.i15, ptr %i.k, align 8, !tbaa !153
  store i64 %i.l, ptr %i.m, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit16

_ZN6duckdb11ArrowBuffer7reserveEm.exit16:         ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !77
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !80
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not.i.i17 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i17, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ao = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !86 ; 10 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i18 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i18)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #35
          to label %.noexc19 unwind label %bb.s   ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %5 = add i64 %i.ar, -8
  %6 = sub i64 %5, %i.as                          ; 2 uses
  %i.be = lshr i64 %6, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bg = add i64 %i.ar, -8
  %i.bh = sub i64 %i.bg, %i.as
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bj
  %scevgep29 = getelementptr i8, ptr %i.aq, i64 %i.bj
  %bound0 = icmp ult ptr %i.bb, %scevgep29
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.aq, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.aq, i64 %i.bn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.bo = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  %wide.load31 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1684, !noalias !1681
  store <2 x i64> %wide.load31, ptr %i.bp, align 8, !tbaa !71, !alias.scope !1684, !noalias !1681
  %i.bq = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !71, !alias.scope !1681, !noalias !1676
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1679, !noalias !1676
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1676, !noalias !1679
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1679, !noalias !1676
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1687

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc19 ], [ %i.bl, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !86
  store ptr %i.bv, ptr %i.ak, align 8, !tbaa !82
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bw, ptr %i.am, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i20 = icmp eq ptr %.pr, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.r:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit16
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bx, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ArrowListViewDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17ArrowListViewDataIiE18AppendListMetadataERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !195
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !195
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
end_hunk_22
begin_hunk_23_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !18
  store ptr %i.k, ptr %i.h, align 8, !tbaa !15
  store i64 0, ptr %i.s, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !561
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !561
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #36
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #36
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 3
  %i.e = add i64 %i.d, 8
  %i.f = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.f) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !153
  store i64 %i.f, ptr %i.g, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !77
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !80
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !82 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %.not.i.i10 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i10, label %bb.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ai = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 10 uses
  %i.al = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #35
          to label %.noexc12 unwind label %bb.p   ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %5 = add i64 %i.al, -8
  %6 = sub i64 %5, %i.am                          ; 2 uses
  %i.ay = lshr i64 %6, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ba = add i64 %i.al, -8
  %i.bb = sub i64 %i.ba, %i.am
  %i.bc = and i64 %i.bb, -8
  %i.bd = add i64 %i.bc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bd
  %scevgep20 = getelementptr i8, ptr %i.ak, i64 %i.bd
  %bound0 = icmp ult ptr %i.av, %scevgep20
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.av, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ak, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bh ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ak, i64 %i.bh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.bi = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  %wide.load22 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1707, !noalias !1704
  store <2 x i64> %wide.load22, ptr %i.bj, align 8, !tbaa !71, !alias.scope !1707, !noalias !1704
  %i.bk = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  store <2 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !71, !alias.scope !1704, !noalias !1699
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1709

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.i.i.preheader24:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader24, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1702, !noalias !1699
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1699, !noalias !1702
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1702, !noalias !1699
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1710

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc12 ], [ %i.bf, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.n
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !86
  store ptr %i.bp, ptr %i.ae, align 8, !tbaa !82
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bq, ptr %i.ag, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.o:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.br, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIlE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb13ArrowListDataIlE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !195
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !195
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
end_hunk_23
begin_hunk_24_@_ZN6duckdb13ArrowListDataIlE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE:bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #35 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i32 %i.az, ptr %i.bn, align 4, !tbaa !3
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bm, ptr %4, align 8, !tbaa !1667
  store ptr %i.bp, ptr %i.y, align 8, !tbaa !1669
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.bq, ptr %i.z, align 8, !tbaa !1672
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.br = phi ptr [ %i.av, %bb.j ], [ %i.bq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.bs = phi ptr [ %i.ba, %bb.j ], [ %i.bp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.bt = add nuw i64 %.045, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.as
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1711

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.i
  %.1 = phi i64 [ %.03947, %bb.i ], [ %i.at, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.at, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.bu = add nuw i64 %.04046, 1                  ; 2 uses
  %exitcond50.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond50.not, label %._crit_edge, label %bb.g, !llvm.loop !1712
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 3 uses
  %i.d = shl i64 %2, 2
  %i.e = add i64 %i.d, 4
  %i.f = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.f) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.c, align 8, !tbaa !153
  store i64 %i.f, ptr %i.g, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !77
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !80
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !82 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %.not.i.i10 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i10, label %bb.l, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ai = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 10 uses
  %i.al = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #35
          to label %.noexc12 unwind label %bb.p   ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %5 = add i64 %i.al, -8
  %6 = sub i64 %5, %i.am                          ; 2 uses
  %i.ay = lshr i64 %6, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ba = add i64 %i.al, -8
  %i.bb = sub i64 %i.ba, %i.am
  %i.bc = and i64 %i.bb, -8
  %i.bd = add i64 %i.bc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bd
  %scevgep20 = getelementptr i8, ptr %i.ak, i64 %i.bd
  %bound0 = icmp ult ptr %i.av, %scevgep20
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.av, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ak, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bh ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ak, i64 %i.bh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.bi = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  %wide.load22 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1721, !noalias !1718
  store <2 x i64> %wide.load22, ptr %i.bj, align 8, !tbaa !71, !alias.scope !1721, !noalias !1718
  %i.bk = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  store <2 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !71, !alias.scope !1718, !noalias !1713
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.i.i.preheader24:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader24, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader24 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1716, !noalias !1713
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1713, !noalias !1716
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1716, !noalias !1713
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1724

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %.noexc12 ], [ %i.bf, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.n
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !86
  store ptr %i.bp, ptr %i.ae, align 8, !tbaa !82
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bq, ptr %i.ag, align 8, !tbaa !85
  %.pr = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.o:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.br, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13ArrowListDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb13ArrowListDataIiE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.ai      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669
  %i.f = load ptr, ptr %6, align 8, !tbaa !1667
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #34
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.j)
          to label %bb.h unwind label %bb.al

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.i unwind label %bb.al

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.l unwind label %bb.al

bb.l:                                             ; preds = %bb.k
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(328) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.j)
          to label %bb.m unwind label %bb.al

bb.m:                                             ; preds = %bb.l
  %i.s = sub i64 %3, %2
  %i.t = load i64, ptr %0, align 8, !tbaa !195
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %0, align 8, !tbaa !195
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
end_hunk_24
begin_hunk_25_@_ZN6duckdb13ArrowListDataIiE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE:bb.a
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !1673
  %i.bk = add i64 %i.bj, %.053
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !1669
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr %4, align 8, !tbaa !1667  ; 4 uses
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %bb.s, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bs = ashr exact i64 %i.bq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #35 ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i32 %i.bl, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.t, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.bn, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bn) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !1667
  store ptr %i.cb, ptr %i.z, align 8, !tbaa !1669
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  store ptr %i.cc, ptr %i.aa, align 8, !tbaa !1672
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.cd = phi ptr [ %i.bh, %bb.q ], [ %i.cc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ce = phi ptr [ %i.bm, %bb.q ], [ %i.cb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.cf = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.au
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1725

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.p, %bb.i
  %i.cg = phi i32 [ %i.ab, %bb.i ], [ %i.bf, %bb.p ], [ %i.bf, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.ch = add nuw i64 %.04354, 1                  ; 2 uses
  %exitcond57.not = icmp eq i64 %i.ch, %3
  br i1 %exitcond57.not, label %._crit_edge, label %bb.g, !llvm.loop !1726

bb.v:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ArrowMapDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::shared_ptr.16", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = add i64 %i.c, 4
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.e) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !153
  store i64 %i.e, ptr %i.f, align 8, !tbaa !151
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb7MapType7KeyTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb7MapType9ValueTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.n = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #35, !noalias !1727 ; 3 uses
  invoke void @_ZN6duckdb15ArrowAppendDataC2ERKNS_16ClientPropertiesE(ptr noundef nonnull align 8 dereferenceable(328) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.e, !noalias !1727

common.resume:                                    ; preds = %bb.al, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn19, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #36, !noalias !1727
  br label %common.resume

_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZN6duckdb11ArrowBuffer7reserveEm.exit
  store ptr %i.n, ptr %3, align 8, !tbaa !71, !alias.scope !1727
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.ae      ; 3 uses

bb.f:                                             ; preds = %_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.g unwind label %bb.af

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  %.not.i.i21 = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i21, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.g
  %i.v = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.v, ptr %i.s, align 8, !tbaa !71
  store ptr null, ptr %4, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !86   ; 10 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #35
          to label %.noexc22 unwind label %bb.ag  ; 10 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !71
  store ptr null, ptr %4, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc22
  %8 = add i64 %i.y, -8
  %9 = sub i64 %8, %i.z                           ; 2 uses
  %i.al = lshr i64 %9, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.an = add i64 %i.y, -8
  %i.ao = sub i64 %i.an, %i.z
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.aq
  %scevgep97 = getelementptr i8, ptr %i.x, i64 %i.aq
  %bound0 = icmp ult ptr %i.ai, %scevgep97
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.x, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.au ; 2 uses
  %next.gep98 = getelementptr i8, ptr %i.x, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.av = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep98, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  %wide.load99 = load <2 x i64>, ptr %i.av, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !71, !alias.scope !1738, !noalias !1735
  store <2 x i64> %wide.load99, ptr %i.aw, align 8, !tbaa !71, !alias.scope !1738, !noalias !1735
  %i.ax = getelementptr i8, ptr %next.gep98, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep98, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !71, !alias.scope !1735, !noalias !1730
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.preheader148:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1733, !noalias !1730
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1730, !noalias !1733
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !71, !alias.scope !1733, !noalias !1730
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1741

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc22
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc22 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.j
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !86
  store ptr %i.bc, ptr %i.r, align 8, !tbaa !82
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !85
  %.pr = load ptr, ptr %4, align 8, !tbaa !71     ; 3 uses
  %.not.i23 = icmp eq ptr %.pr, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bg, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !77
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #34, !inline_history !80
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i24 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.bj, %bb.n ], [ %i.bt, %bb.o ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.p, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, !prof !81

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.q unwind label %bb.ae      ; 3 uses

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !82 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 72 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !85
  %.not.i.i25 = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i.i25, label %bb.s, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40.thread: ; preds = %bb.r
  %i.cb = load i64, ptr %6, align 8, !tbaa !71
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !71
  store ptr null, ptr %6, align 8, !tbaa !71
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !86 ; 10 uses
  %i.ce = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc38 unwind label %bb.aj

.noexc38:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26: ; preds = %bb.s
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i27 = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i27, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i.i28 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i28)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #35
          to label %.noexc39 unwind label %bb.aj  ; 10 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  %i.cq = load i64, ptr %6, align 8, !tbaa !71
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !71
  store ptr null, ptr %6, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i29 = icmp eq ptr %i.cd, %i.by
  br i1 %.not10.i.i.i.i.i.i.i29, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, label %.lr.ph.i.i.i.i.i.i.i30.preheader

.lr.ph.i.i.i.i.i.i.i30.preheader:                 ; preds = %.noexc39
  %10 = add i64 %i.ce, -8
  %11 = sub i64 %10, %i.cf                        ; 2 uses
  %i.cr = lshr i64 %11, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %11, 152
  br i1 %min.iters.check108, label %.lr.ph.i.i.i.i.i.i.i30.preheader146, label %vector.memcheck101

vector.memcheck101:                               ; preds = %.lr.ph.i.i.i.i.i.i.i30.preheader
  %i.ct = add i64 %i.ce, -8
  %i.cu = sub i64 %i.ct, %i.cf
  %i.cv = and i64 %i.cu, -8
  %i.cw = add i64 %i.cv, 8                        ; 2 uses
  %scevgep102 = getelementptr i8, ptr %i.co, i64 %i.cw
  %scevgep103 = getelementptr i8, ptr %i.cd, i64 %i.cw
  %bound0104 = icmp ult ptr %i.co, %scevgep103
  %bound1105 = icmp ult ptr %i.cd, %scevgep102
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph.i.i.i.i.i.i.i30.preheader146, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck101
  %n.vec111 = and i64 %i.cs, 4611686018427387900  ; 3 uses
  %i.cx = shl i64 %n.vec111, 3                    ; 2 uses
  %i.cy = getelementptr i8, ptr %i.co, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cd, i64 %i.cx
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph109
  %index113 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %i.da = shl i64 %index113, 3                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.co, i64 %i.da ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.cd, i64 %i.da ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.db = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load116 = load <2 x i64>, ptr %next.gep115, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  %wide.load117 = load <2 x i64>, ptr %i.db, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  %i.dc = getelementptr i8, ptr %next.gep114, i64 16
  store <2 x i64> %wide.load116, ptr %next.gep114, align 8, !tbaa !71, !alias.scope !1750, !noalias !1747
  store <2 x i64> %wide.load117, ptr %i.dc, align 8, !tbaa !71, !alias.scope !1750, !noalias !1747
  %i.dd = getelementptr i8, ptr %next.gep115, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep115, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  store <2 x ptr> splat (ptr null), ptr %i.dd, align 8, !tbaa !71, !alias.scope !1747, !noalias !1742
  %index.next118 = add nuw i64 %index113, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.de, label %middle.block119, label %vector.body112, !llvm.loop !1752

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %i.cs, %n.vec111
  br i1 %cmp.n120, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, label %.lr.ph.i.i.i.i.i.i.i30.preheader146

.lr.ph.i.i.i.i.i.i.i30.preheader146:              ; preds = %vector.memcheck101, %.lr.ph.i.i.i.i.i.i.i30.preheader, %middle.block119
  %.012.i.i.i.i.i.i.i31.ph = phi ptr [ %i.co, %vector.memcheck101 ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i30.preheader ], [ %i.cy, %middle.block119 ]
  %.0911.i.i.i.i.i.i.i32.ph = phi ptr [ %i.cd, %vector.memcheck101 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i30.preheader ], [ %i.cz, %middle.block119 ]
  br label %.lr.ph.i.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i.i30:                           ; preds = %.lr.ph.i.i.i.i.i.i.i30.preheader146, %.lr.ph.i.i.i.i.i.i.i30
  %.012.i.i.i.i.i.i.i31 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i30 ], [ %.012.i.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i.i30.preheader146 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i32 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i30 ], [ %.0911.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i30.preheader146 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i.i32, align 8, !tbaa !71, !alias.scope !1745, !noalias !1742
  store i64 %i.df, ptr %.012.i.i.i.i.i.i.i31, align 8, !tbaa !71, !alias.scope !1742, !noalias !1745
  store ptr null, ptr %.0911.i.i.i.i.i.i.i32, align 8, !tbaa !71, !alias.scope !1745, !noalias !1742
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.dg, %i.by
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, label %.lr.ph.i.i.i.i.i.i.i30, !llvm.loop !1753

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i.i.i30, %middle.block119, %.noexc39
  %.0.lcssa.i.i.i.i.i.i.i35 = phi ptr [ %i.co, %.noexc39 ], [ %i.cy, %middle.block119 ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i30 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i35, i64 8
  %.not.i23.i.i.i36 = icmp eq ptr %i.cd, null
  br i1 %.not.i23.i.i.i36, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i34, %bb.u
  store ptr %i.co, ptr %i.bw, align 8, !tbaa !86
  store ptr %i.di, ptr %i.bx, align 8, !tbaa !82
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.dj, ptr %i.bz, align 8, !tbaa !85
  %.pr69 = load ptr, ptr %6, align 8, !tbaa !71   ; 3 uses
  %.not.i41 = icmp eq ptr %.pr69, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i42

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i42: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr69) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr69) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit40, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i42
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i44 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i44, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48, label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dm, align 8, !tbaa !75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !77
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #34, !inline_history !80
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #34, !inline_history !80
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48

bb.x:                                             ; preds = %bb.v
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i45 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i45, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

bb.z:                                             ; preds = %bb.x
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i47 = phi i32 [ %i.dp, %bb.y ], [ %i.dz, %bb.z ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i47, 1
  br i1 %i.ea, label %bb.aa, label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48, !prof !81

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #34
  br label %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48

_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48: ; preds = %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit43, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !82 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !85
  %.not.i.i49 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i49, label %bb.ab, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64.thread: ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48
  %i.eg = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !71
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67

bb.ab:                                            ; preds = %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit48
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !86 ; 10 uses
  %i.ej = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #37
          to label %.noexc62 unwind label %bb.ae

.noexc62:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50: ; preds = %bb.ab
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i.i51, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i.i52 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i.i52)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #35
          to label %.noexc63 unwind label %bb.ae  ; 10 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  %i.ev = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i.i53 = icmp eq ptr %i.ei, %i.ed
  br i1 %.not10.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i.i.i54.preheader:                 ; preds = %.noexc63
  %12 = add i64 %i.ej, -8
  %13 = sub i64 %12, %i.ek                        ; 2 uses
  %i.ew = lshr i64 %13, 3
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %13, 152
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i.i.i.i54.preheader145, label %vector.memcheck123

vector.memcheck123:                               ; preds = %.lr.ph.i.i.i.i.i.i.i54.preheader
  %i.ey = add i64 %i.ej, -8
  %i.ez = sub i64 %i.ey, %i.ek
  %i.fa = and i64 %i.ez, -8
  %i.fb = add i64 %i.fa, 8                        ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.et, i64 %i.fb
  %scevgep125 = getelementptr i8, ptr %i.ei, i64 %i.fb
  %bound0126 = icmp ult ptr %i.et, %scevgep125
  %bound1127 = icmp ult ptr %i.ei, %scevgep124
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %.lr.ph.i.i.i.i.i.i.i54.preheader145, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck123
  %n.vec133 = and i64 %i.ex, 4611686018427387900  ; 3 uses
  %i.fc = shl i64 %n.vec133, 3                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.et, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ei, i64 %i.fc
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next140, %vector.body134 ] ; 2 uses
  %i.ff = shl i64 %index135, 3                    ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.et, i64 %i.ff ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.ei, i64 %i.ff ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.fg = getelementptr i8, ptr %next.gep137, i64 16
  %wide.load138 = load <2 x i64>, ptr %next.gep137, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  %wide.load139 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  %i.fh = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x i64> %wide.load138, ptr %next.gep136, align 8, !tbaa !71, !alias.scope !1762, !noalias !1759
  store <2 x i64> %wide.load139, ptr %i.fh, align 8, !tbaa !71, !alias.scope !1762, !noalias !1759
  %i.fi = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep137, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  store <2 x ptr> splat (ptr null), ptr %i.fi, align 8, !tbaa !71, !alias.scope !1759, !noalias !1754
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.fj, label %middle.block141, label %vector.body134, !llvm.loop !1764

middle.block141:                                  ; preds = %vector.body134
  %cmp.n142 = icmp eq i64 %i.ex, %n.vec133
  br i1 %cmp.n142, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i54.preheader145

.lr.ph.i.i.i.i.i.i.i54.preheader145:              ; preds = %vector.memcheck123, %.lr.ph.i.i.i.i.i.i.i54.preheader, %middle.block141
  %.012.i.i.i.i.i.i.i55.ph = phi ptr [ %i.et, %vector.memcheck123 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i54.preheader ], [ %i.fd, %middle.block141 ]
  %.0911.i.i.i.i.i.i.i56.ph = phi ptr [ %i.ei, %vector.memcheck123 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i54.preheader ], [ %i.fe, %middle.block141 ]
  br label %.lr.ph.i.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i.i54:                           ; preds = %.lr.ph.i.i.i.i.i.i.i54.preheader145, %.lr.ph.i.i.i.i.i.i.i54
  %.012.i.i.i.i.i.i.i55 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i.i54 ], [ %.012.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i54.preheader145 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i56 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i.i.i54.preheader145 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.fk = load i64, ptr %.0911.i.i.i.i.i.i.i56, align 8, !tbaa !71, !alias.scope !1757, !noalias !1754
  store i64 %i.fk, ptr %.012.i.i.i.i.i.i.i55, align 8, !tbaa !71, !alias.scope !1754, !noalias !1757
  store ptr null, ptr %.0911.i.i.i.i.i.i.i56, align 8, !tbaa !71, !alias.scope !1757, !noalias !1754
  %i.fl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i56, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i57 = icmp eq ptr %i.fl, %i.ed
  br i1 %.not.i.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, label %.lr.ph.i.i.i.i.i.i.i54, !llvm.loop !1765

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i.i54, %middle.block141, %.noexc63
  %.0.lcssa.i.i.i.i.i.i.i59 = phi ptr [ %i.et, %.noexc63 ], [ %i.fd, %middle.block141 ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i54 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i59, i64 8
  %.not.i23.i.i.i60 = icmp eq ptr %i.ei, null
  br i1 %.not.i23.i.i.i60, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #36
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i58, %bb.ad
  store ptr %i.et, ptr %i.eb, align 8, !tbaa !86
  store ptr %i.fn, ptr %i.ec, align 8, !tbaa !82
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fo, ptr %i.ee, align 8, !tbaa !85
  %.pr71 = load ptr, ptr %3, align 8, !tbaa !71   ; 3 uses
  %.not.i65 = icmp eq ptr %.pr71, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i66: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64
  call void @_ZN6duckdb15ArrowAppendDataD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.pr71) #34, !inline_history !73
  call void @_ZdlPv(ptr noundef nonnull %.pr71) #36, !inline_history !73
  br label %_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit64, %_ZNKSt14default_deleteIN6duckdb15ArrowAppendDataEEclEPS1_.exit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.ae:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i50, %bb.ac, %_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev.exit, %_ZN6duckdb9make_uniqINS_15ArrowAppendDataEJRNS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.af:                                            ; preds = %bb.f
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.ag ], [ %i.fq, %bb.af ]
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.al

bb.ai:                                            ; preds = %bb.q
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ArrowAppendDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i26, %bb.t
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn17 = phi { ptr, i32 } [ %i.ft, %bb.aj ], [ %i.fs, %bb.ai ]
  call void @_ZN6duckdb10shared_ptrINS_22ArrowTypeExtensionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ae
  %.pn19 = phi { ptr, i32 } [ %i.fp, %bb.ae ], [ %.pn17, %bb.ak ], [ %.pn, %bb.ah ]
  call void @_ZNSt10unique_ptrIN6duckdb15ArrowAppendDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ArrowMapDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.977", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.an

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb13ArrowListDataIiE13AppendOffsetsERNS_15ArrowAppendDataERNS_19UnifiedVectorFormatEmmRNS_6vectorIjLb1ESaIjEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.d unwind label %bb.ap

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.a = load ptr, ptr %6, align 8, !tbaa !1667
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %7, align 8, !tbaa !1503
  %i.c = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.e unwind label %bb.aq      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.d = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.f unwind label %bb.ar      ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1669
  %i.g = load ptr, ptr %6, align 8, !tbaa !1667
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
          to label %bb.g unwind label %bb.as

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef nonnull align 8 dereferenceable(328) ptr @_ZNK6duckdb10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.as      ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15ArrowAppendDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %bb.i unwind label %bb.at
end_hunk_25
begin_hunk_26_@_ZNSt6vectorIP11ArrowSchemaSaIS1_EE17_M_default_appendEm:bb.a

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !297
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !297
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !293
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #37
  unreachable

_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !297
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !297
  br label %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPP11ArrowSchemamS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIP11ArrowSchemaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #36
  br label %_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit36

_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit36: ; preds = %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !295
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !293
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !400
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPP11ArrowSchemamS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit36, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIP11ArrowSchemaSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !400
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !297    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !293
  br label %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !297
  store ptr %i.s, ptr %i.d, align 8, !tbaa !297
  br label %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !293
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !102

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %1, align 8, !tbaa !297
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !297
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x ptr> %broadcast.splatinsert131, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x ptr> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !297
  store <2 x ptr> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !297
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !1855

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i, align 8, !tbaa !297
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1856

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = add i64 %i.aq, -8
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !297
  store <2 x ptr> %broadcast.splat, ptr %i.aw, align 8, !tbaa !297
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !297
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1858

_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !293
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !102

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !293
  br label %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %1, align 8, !tbaa !297
  store ptr %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !297
  br label %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit69

_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !293
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit69
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec116, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x ptr> %broadcast.splatinsert117, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x ptr> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !297
  store <2 x ptr> %broadcast.splat118, ptr %i.bj, align 8, !tbaa !297
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !1859

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i72, align 8, !tbaa !297
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1860

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !295   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #37
  unreachable

_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIP11ArrowSchemaSaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load ptr, ptr %3, align 8, !tbaa !297   ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec144, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <2 x ptr> poison, ptr %i.cd, i64 0
  %broadcast.splat146 = shufflevector <2 x ptr> %broadcast.splatinsert145, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !297
  store <2 x ptr> %broadcast.splat146, ptr %i.ck, align 8, !tbaa !297
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !1861

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store ptr %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !297
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1862

_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !102

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPP11ArrowSchemamS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !297
  store ptr %i.cp, ptr %i.ca, align 8, !tbaa !297
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !102

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %1, align 8, !tbaa !297
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !297
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bm) #36
  br label %_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !295
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !293
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !400
  br label %_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit

_ZSt4fillIPP11ArrowSchemaS1_EvT_S3_RKT0_.exit:    ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPP11ArrowSchemaS2_SaIS1_EET0_T_S5_S4_RT1_.exit69, %_ZNSt12_Vector_baseIP11ArrowSchemaSaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb22ArrowTypeExtensionDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb22ArrowTypeExtensionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb22ArrowTypeExtensionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb22ArrowTypeExtensionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb22ArrowTypeExtensionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b
end_hunk_26
begin_hunk_27_@_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E:bb.a
bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !75
  store i32 0, ptr %i.f, align 4, !tbaa !77
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSA_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1903 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #34, !inline_history !1905
  br label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1863 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE) #34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1863 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb25QueryResultChunkScanStateC1ERNS_11QueryResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(392)) unnamed_addr #3

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare void @_ZN6duckdb23PhysicalResultCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

declare void @_ZN6duckdb22PhysicalBatchCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1203
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1087 ; 27 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %4 = add i64 %i.b, -8
  %5 = sub i64 %4, %i.c                           ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check183 = icmp ult i64 %5, 216
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %bb.d
  %i.t = add i64 %i.b, -8
  %i.u = sub i64 %i.t, %i.c
  %i.v = and i64 %i.u, -8                         ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep177 = getelementptr i8, ptr %i.w, i64 8
  %i.x = add i64 %i.v, %i.c
  %i.y = add i64 %i.x, 8
  %i.z = sub i64 %i.y, %i.b
  %scevgep178 = getelementptr i8, ptr %i.i, i64 %i.z
  %bound0179 = icmp ult ptr %i.i, %scevgep178
  %bound1180 = icmp ult ptr %i.q, %scevgep177
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck176
  %n.vec186 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec186, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.aa
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next193, %vector.body187 ] ; 2 uses
  %i.ad = shl i64 %index188, 3                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.q, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <2 x i64>, ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  %wide.load192 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !1091, !alias.scope !1906
  %i.af = getelementptr i8, ptr %next.gep189, i64 16
  store <2 x i64> %wide.load191, ptr %next.gep189, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  store <2 x i64> %wide.load192, ptr %i.af, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  %i.ag = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !1091, !alias.scope !1906
  %index.next193 = add nuw i64 %index188, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.ah, label %middle.block194, label %vector.body187, !llvm.loop !1911

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.s, %n.vec186
  br i1 %cmp.n195, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck176, %bb.d, %middle.block194
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck176 ], [ %i.i, %bb.d ], [ %i.ab, %middle.block194 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck176 ], [ %i.q, %bb.d ], [ %i.ac, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ai = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.ai, ptr %.013.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1912

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block194
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.al, ptr %i.h, align 8, !tbaa !1087
  %i.am = ptrtoint ptr %i.q to i64
  %i.an = sub i64 %i.am, %i.m
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.au, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.ao, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ar, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.aq, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !1091
  store ptr null, ptr %i.aq, align 8, !tbaa !1091
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.at) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #36
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.au = add nsw i64 %.010.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, !llvm.loop !1913

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.aw = icmp sgt i64 %i.e, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.e, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.ax = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  %i.ay = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.ax, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ay) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.ay) #36
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bc = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bd, %3
  br i1 %.not10.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.be = add i64 %i.b, %i.m
  %i.bf = add i64 %i.be, -8
  %6 = add i64 %i.k, %i.c
  %7 = sub i64 %i.bf, %6                          ; 2 uses
  %i.bg = lshr i64 %7, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 264
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bi = add i64 %i.b, %i.m
  %i.bj = add i64 %i.bi, -8
  %i.bk = add i64 %i.k, %i.c
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, -8                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.i, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 8
  %i.bo = add i64 %i.bm, %i.k
  %i.bp = add i64 %i.bo, 8
  %i.bq = sub i64 %i.bp, %i.m
  %scevgep150 = getelementptr i8, ptr %2, i64 %i.bq
  %bound0 = icmp ult ptr %i.i, %scevgep150
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bd, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bu ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.bd, i64 %i.bu ; 4 uses
  %i.bv = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  %wide.load152 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !1091, !alias.scope !1915
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  store <2 x i64> %wide.load152, ptr %i.bw, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  %i.bx = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !tbaa !1091, !alias.scope !1915
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !1920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader270

.lr.ph.i.i.i.i.preheader270:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.08.011.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader270, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 2 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 3 uses
  %i.bz = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.bz, ptr %.012.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ca, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1921

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cc = sub nsw i64 %i.e, %i.o
  %i.cd = getelementptr [8 x i8], ptr %i.i, i64 %i.cc ; 5 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %8 = add i64 %i.k, -8
  %9 = sub i64 %8, %i.m                           ; 2 uses
  %i.ce = lshr i64 %9, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %9, 216
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %i.cg = add i64 %i.k, -8
  %i.ch = sub i64 %i.cg, %i.m
  %i.ci = and i64 %i.ch, -8                       ; 2 uses
  %i.cj = add i64 %i.d, %i.ci
  %i.ck = add i64 %i.cj, 8
  %i.cl = sub i64 %i.ck, %i.n
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.cl
  %i.cm = getelementptr i8, ptr %1, i64 %i.ci
  %scevgep156 = getelementptr i8, ptr %i.cm, i64 8
  %bound0157 = icmp ult ptr %i.cd, %scevgep156
  %bound1158 = icmp ult ptr %1, %scevgep155
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck154
  %n.vec164 = and i64 %i.cf, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec164, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.cd, i64 %i.cn
  %i.cp = getelementptr i8, ptr %1, i64 %i.cn
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.cq = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cd, i64 %i.cq ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.cq ; 4 uses
  %i.cr = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  %wide.load170 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !1091, !alias.scope !1922
  %i.cs = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  store <2 x i64> %wide.load170, ptr %i.cs, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  %i.ct = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  store <2 x ptr> splat (ptr null), ptr %i.ct, align 8, !tbaa !1091, !alias.scope !1922
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.cu, label %middle.block172, label %vector.body165, !llvm.loop !1927

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.cf, %n.vec164
  br i1 %cmp.n173, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader269

.lr.ph.i.i.i.i.i57.preheader269:                  ; preds = %vector.memcheck154, %.lr.ph.i.i.i.i.i57.preheader, %middle.block172
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.cd, %vector.memcheck154 ], [ %i.cd, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.co, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %vector.memcheck154 ], [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cp, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader269, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 3 uses
  %i.cv = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  store i64 %i.cv, ptr %.013.i.i.i.i.i58, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.cw, %i.i
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1928

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block172, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.cy, ptr %i.h, align 8, !tbaa !1087
  %i.cz = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.df, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.cz, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.de, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.dd, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.db = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  %i.dc = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.db, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dc) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.dc) #36
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.df = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.dg = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

bb.e:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8, !tbaa !1090  ; 12 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dj = sub i64 %i.k, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 4 uses
  %i.dl = sub nsw i64 1152921504606846975, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #37
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.e)
  %i.dn = add nsw i64 %.sroa.speculated.i, %i.dk  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #35
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dt = phi ptr [ %i.ds, %bb.g ], [ null, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.dh, %1
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %i.du = add i64 %i.a, -8
  %i.dv = sub i64 %i.du, %i.di                    ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.dv, 152
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.memcheck198

vector.memcheck198:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %i.dy = add i64 %i.a, -8
  %i.dz = sub i64 %i.dy, %i.di
  %i.ea = and i64 %i.dz, -8
  %i.eb = add i64 %i.ea, 8                        ; 2 uses
  %scevgep199 = getelementptr i8, ptr %i.dt, i64 %i.eb
  %scevgep200 = getelementptr i8, ptr %i.dh, i64 %i.eb
  %bound0201 = icmp ult ptr %i.dt, %scevgep200
  %bound1202 = icmp ult ptr %i.dh, %scevgep199
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck198
  %n.vec208 = and i64 %i.dx, 4611686018427387900  ; 3 uses
  %i.ec = shl i64 %n.vec208, 3                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dt, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dh, i64 %i.ec
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %i.ef = shl i64 %index210, 3                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.dt, i64 %i.ef ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.dh, i64 %i.ef ; 4 uses
  %i.eg = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load213 = load <2 x i64>, ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  %wide.load214 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !1091, !alias.scope !1929
  %i.eh = getelementptr i8, ptr %next.gep211, i64 16
  store <2 x i64> %wide.load213, ptr %next.gep211, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  store <2 x i64> %wide.load214, ptr %i.eh, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  %i.ei = getelementptr i8, ptr %next.gep212, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  store <2 x ptr> splat (ptr null), ptr %i.ei, align 8, !tbaa !1091, !alias.scope !1929
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.ej, label %middle.block216, label %vector.body209, !llvm.loop !1934

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %i.dx, %n.vec208
  br i1 %cmp.n217, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader266

.lr.ph.i.i.i.i.i73.preheader266:                  ; preds = %vector.memcheck198, %.lr.ph.i.i.i.i.i73.preheader, %middle.block216
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.dt, %vector.memcheck198 ], [ %i.dt, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ed, %middle.block216 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.dh, %vector.memcheck198 ], [ %i.dh, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ee, %middle.block216 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader266, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 3 uses
  %i.ek = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  store i64 %i.ek, ptr %.013.i.i.i.i.i74, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.el, %1
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1935

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block216, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit ], [ %i.ed, %middle.block216 ], [ %i.em, %.lr.ph.i.i.i.i.i73 ] ; 6 uses
  %10 = add i64 %i.b, -8
  %11 = sub i64 %10, %i.c                         ; 2 uses
  %i.en = lshr i64 %11, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %11, 152
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck220

vector.memcheck220:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ep = add i64 %i.b, -8
  %i.eq = sub i64 %i.ep, %i.c
  %i.er = and i64 %i.eq, -8
  %i.es = add i64 %i.er, 8                        ; 2 uses
  %scevgep221 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.es
  %scevgep222 = getelementptr i8, ptr %2, i64 %i.es
  %bound0223 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %scevgep222
  %bound1224 = icmp ult ptr %2, %scevgep221
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.i.i.i.i79.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck220
  %n.vec230 = and i64 %i.eo, 4611686018427387900  ; 3 uses
  %i.et = shl i64 %n.vec230, 3                    ; 2 uses
  %i.eu = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.et ; 2 uses
  %i.ev = getelementptr i8, ptr %2, i64 %i.et
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph228
  %index232 = phi i64 [ 0, %vector.ph228 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.ew = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.ew ; 2 uses
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.ew ; 4 uses
  %i.ex = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  %wide.load236 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !1091, !alias.scope !1936
  %i.ey = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep233, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  store <2 x i64> %wide.load236, ptr %i.ey, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  %i.ez = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  store <2 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !1091, !alias.scope !1936
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.fa, label %middle.block238, label %vector.body231, !llvm.loop !1941

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.eo, %n.vec230
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %vector.memcheck220, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %middle.block238
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck220 ], [ %.0.lcssa.i.i.i.i.i77, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.eu, %middle.block238 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %vector.memcheck220 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ev, %middle.block238 ]
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79.preheader, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i79 ], [ %.012.i.i.i.i80.ph, %.lr.ph.i.i.i.i79.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i81 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i79 ], [ %.sroa.08.011.i.i.i.i81.ph, %.lr.ph.i.i.i.i79.preheader ] ; 3 uses
  %i.fb = load i64, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  store i64 %i.fb, ptr %.012.i.i.i.i80, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i81, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.fc, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79, !llvm.loop !1942

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84: ; preds = %.lr.ph.i.i.i.i79, %middle.block238
  %.lcssa148 = phi ptr [ %i.eu, %middle.block238 ], [ %i.fd, %.lr.ph.i.i.i.i79 ] ; 7 uses
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %i.fe = add i64 %i.k, -8
  %i.ff = sub i64 %i.fe, %i.a                     ; 2 uses
  %i.fg = lshr i64 %i.ff, 3
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.ff, 152
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader
  %i.fi = add i64 %i.k, -8
  %i.fj = sub i64 %i.fi, %i.a
  %i.fk = and i64 %i.fj, -8
  %i.fl = add i64 %i.fk, 8                        ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa148, i64 %i.fl
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.fl
  %bound0245 = icmp ult ptr %.lcssa148, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.fh, 4611686018427387900  ; 3 uses
  %i.fm = shl i64 %n.vec252, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %.lcssa148, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %1, i64 %i.fm
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.fp = shl i64 %index254, 3                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa148, i64 %i.fp ; 2 uses
  %next.gep256 = getelementptr i8, ptr %1, i64 %i.fp ; 4 uses
  %i.fq = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load257 = load <2 x i64>, ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  %wide.load258 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !1091, !alias.scope !1943
  %i.fr = getelementptr i8, ptr %next.gep255, i64 16
  store <2 x i64> %wide.load257, ptr %next.gep255, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  store <2 x i64> %wide.load258, ptr %i.fr, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  %i.fs = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  store <2 x ptr> splat (ptr null), ptr %i.fs, align 8, !tbaa !1091, !alias.scope !1943
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.ft, label %middle.block260, label %vector.body253, !llvm.loop !1948

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.fh, %n.vec252
  br i1 %cmp.n261, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader264

.lr.ph.i.i.i.i.i86.preheader264:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i86.preheader, %middle.block260
  %.013.i.i.i.i.i87.ph = phi ptr [ %.lcssa148, %vector.memcheck242 ], [ %.lcssa148, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fn, %middle.block260 ]
  %.sroa.08.012.i.i.i.i.i88.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fo, %middle.block260 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader264, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i86 ], [ %.013.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i86 ], [ %.sroa.08.012.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 3 uses
  %i.fu = load i64, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  store i64 %i.fu, ptr %.013.i.i.i.i.i87, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.fv, %i.i
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !1949

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %middle.block260, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %.lcssa148, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84 ], [ %i.fn, %middle.block260 ], [ %i.fw, %.lr.ph.i.i.i.i.i86 ]
  %.not4.i.i = icmp eq ptr %i.dh, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.dh, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 2 uses
  %i.fx = load ptr, ptr %.05.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fx) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.fx) #36
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fy, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i93 = icmp eq ptr %i.dh, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.dh) #36
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, %bb.h
  store ptr %i.dt, ptr %0, align 8, !tbaa !1090
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.h, align 8, !tbaa !1087
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.fz, ptr %i.f, align 8, !tbaa !1203
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ArrowCollectorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ArrowCollectorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !77
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
end_hunk_27
